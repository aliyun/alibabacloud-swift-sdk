import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Agent : Tea.TeaModel {
    public var agentId: String?

    public var agentName: String?

    public var agentVersion: String?

    public var cpuUsage: String?

    public var diskUsage: String?

    public var gmtModify: String?

    public var ip: String?

    public var kernelVersion: String?

    public var memoryUsage: String?

    public var securityDomain: String?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.agentVersion != nil {
            map["AgentVersion"] = self.agentVersion!
        }
        if self.cpuUsage != nil {
            map["CpuUsage"] = self.cpuUsage!
        }
        if self.diskUsage != nil {
            map["DiskUsage"] = self.diskUsage!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.kernelVersion != nil {
            map["KernelVersion"] = self.kernelVersion!
        }
        if self.memoryUsage != nil {
            map["MemoryUsage"] = self.memoryUsage!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["AgentVersion"] as? String {
            self.agentVersion = value
        }
        if let value = dict["CpuUsage"] as? String {
            self.cpuUsage = value
        }
        if let value = dict["DiskUsage"] as? String {
            self.diskUsage = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["KernelVersion"] as? String {
            self.kernelVersion = value
        }
        if let value = dict["MemoryUsage"] as? String {
            self.memoryUsage = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class AgentsTask : Tea.TeaModel {
    public var actionType: String?

    public var agentType: String?

    public var agentsTaskId: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var params: String?

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
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.agentsTaskId != nil {
            map["AgentsTaskId"] = self.agentsTaskId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["AgentsTaskId"] as? String {
            self.agentsTaskId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class AggregateData : Tea.TeaModel {
    public var aggregateDataDescription: String?

    public var aggregateDataId: String?

    public var aggregateDataName: String?

    public var aggregateModeList: [String]?

    public var dataItem: String?

    public var deviceIdList: [String]?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var isAllDevice: Int32?

    public var monitorItemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregateDataDescription != nil {
            map["AggregateDataDescription"] = self.aggregateDataDescription!
        }
        if self.aggregateDataId != nil {
            map["AggregateDataId"] = self.aggregateDataId!
        }
        if self.aggregateDataName != nil {
            map["AggregateDataName"] = self.aggregateDataName!
        }
        if self.aggregateModeList != nil {
            map["AggregateModeList"] = self.aggregateModeList!
        }
        if self.dataItem != nil {
            map["DataItem"] = self.dataItem!
        }
        if self.deviceIdList != nil {
            map["DeviceIdList"] = self.deviceIdList!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.isAllDevice != nil {
            map["IsAllDevice"] = self.isAllDevice!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataDescription"] as? String {
            self.aggregateDataDescription = value
        }
        if let value = dict["AggregateDataId"] as? String {
            self.aggregateDataId = value
        }
        if let value = dict["AggregateDataName"] as? String {
            self.aggregateDataName = value
        }
        if let value = dict["AggregateModeList"] as? [String] {
            self.aggregateModeList = value
        }
        if let value = dict["DataItem"] as? String {
            self.dataItem = value
        }
        if let value = dict["DeviceIdList"] as? [String] {
            self.deviceIdList = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["IsAllDevice"] as? Int32 {
            self.isAllDevice = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
    }
}

public class AlarmOverview : Tea.TeaModel {
    public class ConditionList : Tea.TeaModel {
        public var conditionName: String?

        public var conditionValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conditionName != nil {
                map["ConditionName"] = self.conditionName!
            }
            if self.conditionValue != nil {
                map["ConditionValue"] = self.conditionValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConditionName"] as? String {
                self.conditionName = value
            }
            if let value = dict["ConditionValue"] as? String {
                self.conditionValue = value
            }
        }
    }
    public var alarmOverviewId: String?

    public var alarmOverviewName: String?

    public var conditionList: [AlarmOverview.ConditionList]?

    public var serialNumber: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmOverviewId != nil {
            map["AlarmOverviewId"] = self.alarmOverviewId!
        }
        if self.alarmOverviewName != nil {
            map["AlarmOverviewName"] = self.alarmOverviewName!
        }
        if self.conditionList != nil {
            var tmp : [Any] = []
            for k in self.conditionList! {
                tmp.append(k.toMap())
            }
            map["ConditionList"] = tmp
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmOverviewId"] as? String {
            self.alarmOverviewId = value
        }
        if let value = dict["AlarmOverviewName"] as? String {
            self.alarmOverviewName = value
        }
        if let value = dict["ConditionList"] as? [Any?] {
            var tmp : [AlarmOverview.ConditionList] = []
            for v in value {
                if v != nil {
                    var model = AlarmOverview.ConditionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditionList = tmp
        }
        if let value = dict["SerialNumber"] as? Int32 {
            self.serialNumber = value
        }
    }
}

public class AtomicStep : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var description_: String?

    public var input: [AtomicStep.Input]?

    public var output: [AtomicStep.Output]?

    public var stepId: String?

    public var stepName: String?

    public var stepType: String?

    public override init() {
        super.init()
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
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.output != nil {
            var tmp : [Any] = []
            for k in self.output! {
                tmp.append(k.toMap())
            }
            map["Output"] = tmp
        }
        if self.stepId != nil {
            map["StepId"] = self.stepId!
        }
        if self.stepName != nil {
            map["StepName"] = self.stepName!
        }
        if self.stepType != nil {
            map["StepType"] = self.stepType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [AtomicStep.Input] = []
            for v in value {
                if v != nil {
                    var model = AtomicStep.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["Output"] as? [Any?] {
            var tmp : [AtomicStep.Output] = []
            for v in value {
                if v != nil {
                    var model = AtomicStep.Output()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.output = tmp
        }
        if let value = dict["StepId"] as? String {
            self.stepId = value
        }
        if let value = dict["StepName"] as? String {
            self.stepName = value
        }
        if let value = dict["StepType"] as? String {
            self.stepType = value
        }
    }
}

public class BusinessType : Tea.TeaModel {
    public var abbr: String?

    public var actionFlag: String?

    public var businessTypeId: String?

    public var createTime: String?

    public var direction: Int64?

    public var gateway: Int64?

    public var leaseTime: String?

    public var mask: String?

    public var name: String?

    public var reserveNumber: Int64?

    public var sharing: String?

    public var type: String?

    public var updateTime: String?

    public var vlan: String?

    public var zoneType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abbr != nil {
            map["Abbr"] = self.abbr!
        }
        if self.actionFlag != nil {
            map["ActionFlag"] = self.actionFlag!
        }
        if self.businessTypeId != nil {
            map["BusinessTypeId"] = self.businessTypeId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.leaseTime != nil {
            map["LeaseTime"] = self.leaseTime!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.reserveNumber != nil {
            map["ReserveNumber"] = self.reserveNumber!
        }
        if self.sharing != nil {
            map["Sharing"] = self.sharing!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.vlan != nil {
            map["Vlan"] = self.vlan!
        }
        if self.zoneType != nil {
            map["ZoneType"] = self.zoneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Abbr"] as? String {
            self.abbr = value
        }
        if let value = dict["ActionFlag"] as? String {
            self.actionFlag = value
        }
        if let value = dict["BusinessTypeId"] as? String {
            self.businessTypeId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Direction"] as? Int64 {
            self.direction = value
        }
        if let value = dict["Gateway"] as? Int64 {
            self.gateway = value
        }
        if let value = dict["LeaseTime"] as? String {
            self.leaseTime = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ReserveNumber"] as? Int64 {
            self.reserveNumber = value
        }
        if let value = dict["Sharing"] as? String {
            self.sharing = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Vlan"] as? String {
            self.vlan = value
        }
        if let value = dict["ZoneType"] as? String {
            self.zoneType = value
        }
    }
}

public class CliTask : Tea.TeaModel {
    public var agentIp: String?

    public var cliTaskId: String?

    public var command: String?

    public var deviceId: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var output: String?

    public var protocol_: String?

    public var responseCode: String?

    public var result: String?

    public var sessionId: String?

    public var status: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentIp != nil {
            map["AgentIp"] = self.agentIp!
        }
        if self.cliTaskId != nil {
            map["CliTaskId"] = self.cliTaskId!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentIp"] as? String {
            self.agentIp = value
        }
        if let value = dict["CliTaskId"] as? String {
            self.cliTaskId = value
        }
        if let value = dict["Command"] as? String {
            self.command = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class ConfigurationSpecification : Tea.TeaModel {
    public var architecture: String?

    public var configurationSpecificationId: String?

    public var createTime: String?

    public var model: String?

    public var relatedVariate: [String]?

    public var role: String?

    public var specificationContent: String?

    public var specificationName: String?

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
        if self.architecture != nil {
            map["Architecture"] = self.architecture!
        }
        if self.configurationSpecificationId != nil {
            map["ConfigurationSpecificationId"] = self.configurationSpecificationId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.relatedVariate != nil {
            map["RelatedVariate"] = self.relatedVariate!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.specificationContent != nil {
            map["SpecificationContent"] = self.specificationContent!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
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
        if let value = dict["Architecture"] as? String {
            self.architecture = value
        }
        if let value = dict["ConfigurationSpecificationId"] as? String {
            self.configurationSpecificationId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["RelatedVariate"] as? [String] {
            self.relatedVariate = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["SpecificationContent"] as? String {
            self.specificationContent = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ConfigurationVariate : Tea.TeaModel {
    public var comment: String?

    public var configurationVariateId: String?

    public var createTime: String?

    public var formatFunction: String?

    public var updateTime: String?

    public var variateName: String?

    public override init() {
        super.init()
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
        if self.configurationVariateId != nil {
            map["ConfigurationVariateId"] = self.configurationVariateId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.formatFunction != nil {
            map["FormatFunction"] = self.formatFunction!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.variateName != nil {
            map["VariateName"] = self.variateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["ConfigurationVariateId"] as? String {
            self.configurationVariateId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["FormatFunction"] as? String {
            self.formatFunction = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VariateName"] as? String {
            self.variateName = value
        }
    }
}

public class ConnectionPolicy : Tea.TeaModel {
    public var algorithm: String?

    public var connectionPolicyId: String?

    public var createTime: String?

    public var downlinkDeviceId: String?

    public var downlinkModuleId: String?

    public var id: String?

    public var linkCount: Int64?

    public var name: String?

    public var networkArchitectureIterationId: String?

    public var updateTime: String?

    public var uplinkDeviceId: String?

    public var uplinkModelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.connectionPolicyId != nil {
            map["ConnectionPolicyId"] = self.connectionPolicyId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.downlinkDeviceId != nil {
            map["DownlinkDeviceId"] = self.downlinkDeviceId!
        }
        if self.downlinkModuleId != nil {
            map["DownlinkModuleId"] = self.downlinkModuleId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.linkCount != nil {
            map["LinkCount"] = self.linkCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkArchitectureIterationId != nil {
            map["NetworkArchitectureIterationId"] = self.networkArchitectureIterationId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.uplinkDeviceId != nil {
            map["UplinkDeviceId"] = self.uplinkDeviceId!
        }
        if self.uplinkModelId != nil {
            map["UplinkModelId"] = self.uplinkModelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["ConnectionPolicyId"] as? String {
            self.connectionPolicyId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DownlinkDeviceId"] as? String {
            self.downlinkDeviceId = value
        }
        if let value = dict["DownlinkModuleId"] as? String {
            self.downlinkModuleId = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LinkCount"] as? Int64 {
            self.linkCount = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkArchitectureIterationId"] as? String {
            self.networkArchitectureIterationId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UplinkDeviceId"] as? String {
            self.uplinkDeviceId = value
        }
        if let value = dict["UplinkModelId"] as? String {
            self.uplinkModelId = value
        }
    }
}

public class DataView : Tea.TeaModel {
    public var dataViewChartList: [DataViewChart]?

    public var dataViewDescription: String?

    public var dataViewId: String?

    public var dataViewName: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataViewChartList != nil {
            var tmp : [Any] = []
            for k in self.dataViewChartList! {
                tmp.append(k.toMap())
            }
            map["DataViewChartList"] = tmp
        }
        if self.dataViewDescription != nil {
            map["DataViewDescription"] = self.dataViewDescription!
        }
        if self.dataViewId != nil {
            map["DataViewId"] = self.dataViewId!
        }
        if self.dataViewName != nil {
            map["DataViewName"] = self.dataViewName!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataViewChartList"] as? [Any?] {
            var tmp : [DataViewChart] = []
            for v in value {
                if v != nil {
                    var model = DataViewChart()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataViewChartList = tmp
        }
        if let value = dict["DataViewDescription"] as? String {
            self.dataViewDescription = value
        }
        if let value = dict["DataViewId"] as? String {
            self.dataViewId = value
        }
        if let value = dict["DataViewName"] as? String {
            self.dataViewName = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
    }
}

public class DataViewChart : Tea.TeaModel {
    public var chartType: String?

    public var dataViewId: String?

    public var dataViewSource: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var grid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chartType != nil {
            map["ChartType"] = self.chartType!
        }
        if self.dataViewId != nil {
            map["DataViewId"] = self.dataViewId!
        }
        if self.dataViewSource != nil {
            map["DataViewSource"] = self.dataViewSource!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.grid != nil {
            map["Grid"] = self.grid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChartType"] as? String {
            self.chartType = value
        }
        if let value = dict["DataViewId"] as? String {
            self.dataViewId = value
        }
        if let value = dict["DataViewSource"] as? String {
            self.dataViewSource = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Grid"] as? String {
            self.grid = value
        }
    }
}

public class DedicatedLine : Tea.TeaModel {
    public var bandwidth: Int32?

    public var deviceId: String?

    public var devicePort: String?

    public var isp: String?

    public var lineGateway: String?

    public var lineId: String?

    public var lineIp: String?

    public var lineRole: String?

    public override init() {
        super.init()
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
            map["Bandwidth"] = self.bandwidth!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.devicePort != nil {
            map["DevicePort"] = self.devicePort!
        }
        if self.isp != nil {
            map["Isp"] = self.isp!
        }
        if self.lineGateway != nil {
            map["LineGateway"] = self.lineGateway!
        }
        if self.lineId != nil {
            map["LineId"] = self.lineId!
        }
        if self.lineIp != nil {
            map["LineIp"] = self.lineIp!
        }
        if self.lineRole != nil {
            map["LineRole"] = self.lineRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DevicePort"] as? String {
            self.devicePort = value
        }
        if let value = dict["Isp"] as? String {
            self.isp = value
        }
        if let value = dict["LineGateway"] as? String {
            self.lineGateway = value
        }
        if let value = dict["LineId"] as? String {
            self.lineId = value
        }
        if let value = dict["LineIp"] as? String {
            self.lineIp = value
        }
        if let value = dict["LineRole"] as? String {
            self.lineRole = value
        }
    }
}

public class Device : Tea.TeaModel {
    public var accountType: String?

    public var accountVersion: String?

    public var authPassPhrase: String?

    public var authProtocol: String?

    public var community: String?

    public var deviceForm: String?

    public var deviceId: String?

    public var deviceIp: String?

    public var deviceMac: String?

    public var deviceSn: String?

    public var hostname: String?

    public var model: String?

    public var privacyPassPhrase: String?

    public var privacyProtocol: String?

    public var securityDomain: String?

    public var securityLevel: String?

    public var space: String?

    public var sshAccount: String?

    public var sshPassword: String?

    public var status: String?

    public var telnetAccount: String?

    public var telnetPassword: String?

    public var userName: String?

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
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.accountVersion != nil {
            map["AccountVersion"] = self.accountVersion!
        }
        if self.authPassPhrase != nil {
            map["AuthPassPhrase"] = self.authPassPhrase!
        }
        if self.authProtocol != nil {
            map["AuthProtocol"] = self.authProtocol!
        }
        if self.community != nil {
            map["Community"] = self.community!
        }
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceIp != nil {
            map["DeviceIp"] = self.deviceIp!
        }
        if self.deviceMac != nil {
            map["DeviceMac"] = self.deviceMac!
        }
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.privacyPassPhrase != nil {
            map["PrivacyPassPhrase"] = self.privacyPassPhrase!
        }
        if self.privacyProtocol != nil {
            map["PrivacyProtocol"] = self.privacyProtocol!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.securityLevel != nil {
            map["SecurityLevel"] = self.securityLevel!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.sshAccount != nil {
            map["SshAccount"] = self.sshAccount!
        }
        if self.sshPassword != nil {
            map["SshPassword"] = self.sshPassword!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.telnetAccount != nil {
            map["TelnetAccount"] = self.telnetAccount!
        }
        if self.telnetPassword != nil {
            map["TelnetPassword"] = self.telnetPassword!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["AccountVersion"] as? String {
            self.accountVersion = value
        }
        if let value = dict["AuthPassPhrase"] as? String {
            self.authPassPhrase = value
        }
        if let value = dict["AuthProtocol"] as? String {
            self.authProtocol = value
        }
        if let value = dict["Community"] as? String {
            self.community = value
        }
        if let value = dict["DeviceForm"] as? String {
            self.deviceForm = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DeviceIp"] as? String {
            self.deviceIp = value
        }
        if let value = dict["DeviceMac"] as? String {
            self.deviceMac = value
        }
        if let value = dict["DeviceSn"] as? String {
            self.deviceSn = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PrivacyPassPhrase"] as? String {
            self.privacyPassPhrase = value
        }
        if let value = dict["PrivacyProtocol"] as? String {
            self.privacyProtocol = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["SecurityLevel"] as? String {
            self.securityLevel = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["SshAccount"] as? String {
            self.sshAccount = value
        }
        if let value = dict["SshPassword"] as? String {
            self.sshPassword = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TelnetAccount"] as? String {
            self.telnetAccount = value
        }
        if let value = dict["TelnetPassword"] as? String {
            self.telnetPassword = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class DeviceForm : Tea.TeaModel {
    public var accountConfig: String?

    public var configCompare: String?

    public var formId: String?

    public var formName: String?

    public var propertiesList: [DeviceFormProperty]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountConfig != nil {
            map["AccountConfig"] = self.accountConfig!
        }
        if self.configCompare != nil {
            map["ConfigCompare"] = self.configCompare!
        }
        if self.formId != nil {
            map["FormId"] = self.formId!
        }
        if self.formName != nil {
            map["FormName"] = self.formName!
        }
        if self.propertiesList != nil {
            var tmp : [Any] = []
            for k in self.propertiesList! {
                tmp.append(k.toMap())
            }
            map["PropertiesList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountConfig"] as? String {
            self.accountConfig = value
        }
        if let value = dict["ConfigCompare"] as? String {
            self.configCompare = value
        }
        if let value = dict["FormId"] as? String {
            self.formId = value
        }
        if let value = dict["FormName"] as? String {
            self.formName = value
        }
        if let value = dict["PropertiesList"] as? [Any?] {
            var tmp : [DeviceFormProperty] = []
            for v in value {
                if v != nil {
                    var model = DeviceFormProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertiesList = tmp
        }
    }
}

public class DeviceFormProperty : Tea.TeaModel {
    public var content: String?

    public var keyword: String?

    public var placeholder: Bool?

    public var required_: Bool?

    public var searchSupported: Bool?

    public var sequence: Int32?

    public var tableVisible: Bool?

    public var uniqueness: Bool?

    public var valueReference: String?

    public var valueSource: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.placeholder != nil {
            map["Placeholder"] = self.placeholder!
        }
        if self.required_ != nil {
            map["Required"] = self.required_!
        }
        if self.searchSupported != nil {
            map["SearchSupported"] = self.searchSupported!
        }
        if self.sequence != nil {
            map["Sequence"] = self.sequence!
        }
        if self.tableVisible != nil {
            map["TableVisible"] = self.tableVisible!
        }
        if self.uniqueness != nil {
            map["Uniqueness"] = self.uniqueness!
        }
        if self.valueReference != nil {
            map["ValueReference"] = self.valueReference!
        }
        if self.valueSource != nil {
            map["ValueSource"] = self.valueSource!
        }
        if self.valueType != nil {
            map["ValueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Placeholder"] as? Bool {
            self.placeholder = value
        }
        if let value = dict["Required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["SearchSupported"] as? Bool {
            self.searchSupported = value
        }
        if let value = dict["Sequence"] as? Int32 {
            self.sequence = value
        }
        if let value = dict["TableVisible"] as? Bool {
            self.tableVisible = value
        }
        if let value = dict["Uniqueness"] as? Bool {
            self.uniqueness = value
        }
        if let value = dict["ValueReference"] as? String {
            self.valueReference = value
        }
        if let value = dict["ValueSource"] as? String {
            self.valueSource = value
        }
        if let value = dict["ValueType"] as? String {
            self.valueType = value
        }
    }
}

public class DeviceProperty : Tea.TeaModel {
    public var content: String?

    public var deviceForm: String?

    public var format: String?

    public var nameCn: String?

    public var nameEn: String?

    public var propertyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm!
        }
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.nameCn != nil {
            map["NameCn"] = self.nameCn!
        }
        if self.nameEn != nil {
            map["NameEn"] = self.nameEn!
        }
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DeviceForm"] as? String {
            self.deviceForm = value
        }
        if let value = dict["Format"] as? String {
            self.format = value
        }
        if let value = dict["NameCn"] as? String {
            self.nameCn = value
        }
        if let value = dict["NameEn"] as? String {
            self.nameEn = value
        }
        if let value = dict["PropertyId"] as? String {
            self.propertyId = value
        }
    }
}

public class DeviceResource : Tea.TeaModel {
    public class DeviceResource : Tea.TeaModel {
        public var blockNumber: String?

        public var business: String?

        public var config: String?

        public var configGenerate: Bool?

        public var configTaskStatus: String?

        public var deliveryIp: String?

        public var deviceNumber: String?

        public var deviceResourceId: String?

        public var hostName: String?

        public var interConnection: String?

        public var location: String?

        public var loopback: String?

        public var managerIp: String?

        public var model: String?

        public var role: String?

        public var setupProjectId: String?

        public var sn: String?

        public var stack: Bool?

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
            if self.blockNumber != nil {
                map["BlockNumber"] = self.blockNumber!
            }
            if self.business != nil {
                map["Business"] = self.business!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.configGenerate != nil {
                map["ConfigGenerate"] = self.configGenerate!
            }
            if self.configTaskStatus != nil {
                map["ConfigTaskStatus"] = self.configTaskStatus!
            }
            if self.deliveryIp != nil {
                map["DeliveryIp"] = self.deliveryIp!
            }
            if self.deviceNumber != nil {
                map["DeviceNumber"] = self.deviceNumber!
            }
            if self.deviceResourceId != nil {
                map["DeviceResourceId"] = self.deviceResourceId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.interConnection != nil {
                map["InterConnection"] = self.interConnection!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.loopback != nil {
                map["Loopback"] = self.loopback!
            }
            if self.managerIp != nil {
                map["ManagerIp"] = self.managerIp!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.setupProjectId != nil {
                map["SetupProjectId"] = self.setupProjectId!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.stack != nil {
                map["Stack"] = self.stack!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockNumber"] as? String {
                self.blockNumber = value
            }
            if let value = dict["Business"] as? String {
                self.business = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["ConfigGenerate"] as? Bool {
                self.configGenerate = value
            }
            if let value = dict["ConfigTaskStatus"] as? String {
                self.configTaskStatus = value
            }
            if let value = dict["DeliveryIp"] as? String {
                self.deliveryIp = value
            }
            if let value = dict["DeviceNumber"] as? String {
                self.deviceNumber = value
            }
            if let value = dict["DeviceResourceId"] as? String {
                self.deviceResourceId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["InterConnection"] as? String {
                self.interConnection = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["Loopback"] as? String {
                self.loopback = value
            }
            if let value = dict["ManagerIp"] as? String {
                self.managerIp = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["SetupProjectId"] as? String {
                self.setupProjectId = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["Stack"] as? Bool {
                self.stack = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var archId: String?

    public var businessType: String?

    public var businessTypeId: String?

    public var businessTypeParams: String?

    public var createTime: String?

    public var data: String?

    public var deviceResource: [DeviceResource.DeviceResource]?

    public var deviceResourceId: String?

    public var deviceResourceIds: [String]?

    public var downloadType: String?

    public var ipType: String?

    public var listType: String?

    public var loopbackPort: String?

    public var netLocation: String?

    public var setupProjectId: String?

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
        if self.archId != nil {
            map["ArchId"] = self.archId!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.businessTypeId != nil {
            map["BusinessTypeId"] = self.businessTypeId!
        }
        if self.businessTypeParams != nil {
            map["BusinessTypeParams"] = self.businessTypeParams!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.deviceResource != nil {
            var tmp : [Any] = []
            for k in self.deviceResource! {
                tmp.append(k.toMap())
            }
            map["DeviceResource"] = tmp
        }
        if self.deviceResourceId != nil {
            map["DeviceResourceId"] = self.deviceResourceId!
        }
        if self.deviceResourceIds != nil {
            map["DeviceResourceIds"] = self.deviceResourceIds!
        }
        if self.downloadType != nil {
            map["DownloadType"] = self.downloadType!
        }
        if self.ipType != nil {
            map["IpType"] = self.ipType!
        }
        if self.listType != nil {
            map["ListType"] = self.listType!
        }
        if self.loopbackPort != nil {
            map["LoopbackPort"] = self.loopbackPort!
        }
        if self.netLocation != nil {
            map["NetLocation"] = self.netLocation!
        }
        if self.setupProjectId != nil {
            map["SetupProjectId"] = self.setupProjectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchId"] as? String {
            self.archId = value
        }
        if let value = dict["BusinessType"] as? String {
            self.businessType = value
        }
        if let value = dict["BusinessTypeId"] as? String {
            self.businessTypeId = value
        }
        if let value = dict["BusinessTypeParams"] as? String {
            self.businessTypeParams = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DeviceResource"] as? [Any?] {
            var tmp : [DeviceResource.DeviceResource] = []
            for v in value {
                if v != nil {
                    var model = DeviceResource.DeviceResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deviceResource = tmp
        }
        if let value = dict["DeviceResourceId"] as? String {
            self.deviceResourceId = value
        }
        if let value = dict["DeviceResourceIds"] as? [String] {
            self.deviceResourceIds = value
        }
        if let value = dict["DownloadType"] as? String {
            self.downloadType = value
        }
        if let value = dict["IpType"] as? String {
            self.ipType = value
        }
        if let value = dict["ListType"] as? String {
            self.listType = value
        }
        if let value = dict["LoopbackPort"] as? String {
            self.loopbackPort = value
        }
        if let value = dict["NetLocation"] as? String {
            self.netLocation = value
        }
        if let value = dict["SetupProjectId"] as? String {
            self.setupProjectId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DeviceTask : Tea.TeaModel {
    public var deviceId: String?

    public var deviceIp: String?

    public var deviceName: String?

    public var deviceTaskId: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var output: String?

    public var params: String?

    public var responseCode: String?

    public var result: String?

    public var scriptId: String?

    public var scriptVersion: String?

    public var status: String?

    public var templateId: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceIp != nil {
            map["DeviceIp"] = self.deviceIp!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceTaskId != nil {
            map["DeviceTaskId"] = self.deviceTaskId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptVersion != nil {
            map["ScriptVersion"] = self.scriptVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DeviceIp"] as? String {
            self.deviceIp = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["DeviceTaskId"] as? String {
            self.deviceTaskId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptVersion"] as? String {
            self.scriptVersion = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class Event : Tea.TeaModel {
    public class ResourceDevice : Tea.TeaModel {
        public var hostName: String?

        public var physicalSpace: String?

        public override init() {
            super.init()
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
            if self.physicalSpace != nil {
                map["PhysicalSpace"] = self.physicalSpace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["PhysicalSpace"] as? String {
                self.physicalSpace = value
            }
        }
    }
    public var alarmStatus: String?

    public var count: Int64?

    public var createTime: String?

    public var deviceId: String?

    public var eventName: String?

    public var eventObject: String?

    public var eventObjectId: String?

    public var eventType: String?

    public var message: String?

    public var resourceDevice: Event.ResourceDevice?

    public var templateId: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceDevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventObject != nil {
            map["EventObject"] = self.eventObject!
        }
        if self.eventObjectId != nil {
            map["EventObjectId"] = self.eventObjectId!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.resourceDevice != nil {
            map["ResourceDevice"] = self.resourceDevice?.toMap()
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventObject"] as? String {
            self.eventObject = value
        }
        if let value = dict["EventObjectId"] as? String {
            self.eventObjectId = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ResourceDevice"] as? [String: Any?] {
            var model = Event.ResourceDevice()
            model.fromMap(value)
            self.resourceDevice = model
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class EventDefinition : Tea.TeaModel {
    public var createTime: String?

    public var eventId: String?

    public var eventName: String?

    public var eventType: String?

    public var templateId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class InspectionItem : Tea.TeaModel {
    public var inspectionCrontab: String?

    public var itemDescription: String?

    public var itemId: String?

    public var itemName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionCrontab != nil {
            map["InspectionCrontab"] = self.inspectionCrontab!
        }
        if self.itemDescription != nil {
            map["ItemDescription"] = self.itemDescription!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionCrontab"] as? String {
            self.inspectionCrontab = value
        }
        if let value = dict["ItemDescription"] as? String {
            self.itemDescription = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["ItemName"] as? String {
            self.itemName = value
        }
    }
}

public class InspectionScript : Tea.TeaModel {
    public class InspectionAlarmRules : Tea.TeaModel {
        public var alarmExpression: String?

        public var alarmLevel: String?

        public var alarmOperator: String?

        public var alarmValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmExpression != nil {
                map["AlarmExpression"] = self.alarmExpression!
            }
            if self.alarmLevel != nil {
                map["AlarmLevel"] = self.alarmLevel!
            }
            if self.alarmOperator != nil {
                map["AlarmOperator"] = self.alarmOperator!
            }
            if self.alarmValue != nil {
                map["AlarmValue"] = self.alarmValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmExpression"] as? String {
                self.alarmExpression = value
            }
            if let value = dict["AlarmLevel"] as? String {
                self.alarmLevel = value
            }
            if let value = dict["AlarmOperator"] as? String {
                self.alarmOperator = value
            }
            if let value = dict["AlarmValue"] as? String {
                self.alarmValue = value
            }
        }
    }
    public var inspectionAlarmRules: [InspectionScript.InspectionAlarmRules]?

    public var inspectionCrontab: String?

    public var itemDescription: String?

    public var itemId: String?

    public var itemName: String?

    public var model: String?

    public var role: String?

    public var script: String?

    public var scriptId: String?

    public var scriptStatus: String?

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
        if self.inspectionAlarmRules != nil {
            var tmp : [Any] = []
            for k in self.inspectionAlarmRules! {
                tmp.append(k.toMap())
            }
            map["InspectionAlarmRules"] = tmp
        }
        if self.inspectionCrontab != nil {
            map["InspectionCrontab"] = self.inspectionCrontab!
        }
        if self.itemDescription != nil {
            map["ItemDescription"] = self.itemDescription!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptStatus != nil {
            map["ScriptStatus"] = self.scriptStatus!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionAlarmRules"] as? [Any?] {
            var tmp : [InspectionScript.InspectionAlarmRules] = []
            for v in value {
                if v != nil {
                    var model = InspectionScript.InspectionAlarmRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionAlarmRules = tmp
        }
        if let value = dict["InspectionCrontab"] as? String {
            self.inspectionCrontab = value
        }
        if let value = dict["ItemDescription"] as? String {
            self.itemDescription = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["ItemName"] as? String {
            self.itemName = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptStatus"] as? String {
            self.scriptStatus = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class InspectionTask : Tea.TeaModel {
    public class InspectionAlarmRules : Tea.TeaModel {
        public var actualValue: String?

        public var expression: String?

        public var level: String?

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
            if self.actualValue != nil {
                map["ActualValue"] = self.actualValue!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualValue"] as? String {
                self.actualValue = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var deviceId: String?

    public var errorCode: String?

    public var executionBeginTime: String?

    public var executionEndTime: String?

    public var hostname: String?

    public var IP: String?

    public var inspectionAlarmRules: [InspectionTask.InspectionAlarmRules]?

    public var inspectionResult: String?

    public var itemId: String?

    public var itemName: String?

    public var model: String?

    public var role: String?

    public var space: String?

    public var taskStatus: String?

    public var templateId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.executionBeginTime != nil {
            map["ExecutionBeginTime"] = self.executionBeginTime!
        }
        if self.executionEndTime != nil {
            map["ExecutionEndTime"] = self.executionEndTime!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.IP != nil {
            map["IP"] = self.IP!
        }
        if self.inspectionAlarmRules != nil {
            var tmp : [Any] = []
            for k in self.inspectionAlarmRules! {
                tmp.append(k.toMap())
            }
            map["InspectionAlarmRules"] = tmp
        }
        if self.inspectionResult != nil {
            map["InspectionResult"] = self.inspectionResult!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ExecutionBeginTime"] as? String {
            self.executionBeginTime = value
        }
        if let value = dict["ExecutionEndTime"] as? String {
            self.executionEndTime = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["IP"] as? String {
            self.IP = value
        }
        if let value = dict["InspectionAlarmRules"] as? [Any?] {
            var tmp : [InspectionTask.InspectionAlarmRules] = []
            for v in value {
                if v != nil {
                    var model = InspectionTask.InspectionAlarmRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionAlarmRules = tmp
        }
        if let value = dict["InspectionResult"] as? String {
            self.inspectionResult = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["ItemName"] as? String {
            self.itemName = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class Ip : Tea.TeaModel {
    public class ZoneLayer : Tea.TeaModel {
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
    public var businessTypeId: String?

    public var businessTypeName: String?

    public var createTime: String?

    public var deviceMac: String?

    public var deviceName: String?

    public var ipAddress: String?

    public var ipId: String?

    public var ipName: String?

    public var parentIpBlock: String?

    public var port: String?

    public var status: String?

    public var zoneLayer: [Ip.ZoneLayer]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessTypeId != nil {
            map["BusinessTypeId"] = self.businessTypeId!
        }
        if self.businessTypeName != nil {
            map["BusinessTypeName"] = self.businessTypeName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deviceMac != nil {
            map["DeviceMac"] = self.deviceMac!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.ipId != nil {
            map["IpId"] = self.ipId!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.parentIpBlock != nil {
            map["ParentIpBlock"] = self.parentIpBlock!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.zoneLayer != nil {
            var tmp : [Any] = []
            for k in self.zoneLayer! {
                tmp.append(k.toMap())
            }
            map["ZoneLayer"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessTypeId"] as? String {
            self.businessTypeId = value
        }
        if let value = dict["BusinessTypeName"] as? String {
            self.businessTypeName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeviceMac"] as? String {
            self.deviceMac = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IpAddress"] as? String {
            self.ipAddress = value
        }
        if let value = dict["IpId"] as? String {
            self.ipId = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["ParentIpBlock"] as? String {
            self.parentIpBlock = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ZoneLayer"] as? [Any?] {
            var tmp : [Ip.ZoneLayer] = []
            for v in value {
                if v != nil {
                    var model = Ip.ZoneLayer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zoneLayer = tmp
        }
    }
}

public class IpBlock : Tea.TeaModel {
    public class ZoneLayer : Tea.TeaModel {
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
    public var application: String?

    public var backupDeviceName: String?

    public var block: String?

    public var businessTypeId: String?

    public var category: String?

    public var createTime: String?

    public var description_: String?

    public var deviceName: String?

    public var ipBlockId: String?

    public var mask: String?

    public var netBusiness: String?

    public var netType: String?

    public var ownership: String?

    public var parentId: String?

    public var reserveParentBlock: String?

    public var resourceGroupId: String?

    public var updateType: String?

    public var zoneLayer: [IpBlock.ZoneLayer]?

    public var zoneName: String?

    public override init() {
        super.init()
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
        if self.backupDeviceName != nil {
            map["BackupDeviceName"] = self.backupDeviceName!
        }
        if self.block != nil {
            map["Block"] = self.block!
        }
        if self.businessTypeId != nil {
            map["BusinessTypeId"] = self.businessTypeId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.ipBlockId != nil {
            map["IpBlockId"] = self.ipBlockId!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.netBusiness != nil {
            map["NetBusiness"] = self.netBusiness!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.ownership != nil {
            map["Ownership"] = self.ownership!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.reserveParentBlock != nil {
            map["ReserveParentBlock"] = self.reserveParentBlock!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        if self.zoneLayer != nil {
            var tmp : [Any] = []
            for k in self.zoneLayer! {
                tmp.append(k.toMap())
            }
            map["ZoneLayer"] = tmp
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? String {
            self.application = value
        }
        if let value = dict["BackupDeviceName"] as? String {
            self.backupDeviceName = value
        }
        if let value = dict["Block"] as? String {
            self.block = value
        }
        if let value = dict["BusinessTypeId"] as? String {
            self.businessTypeId = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["IpBlockId"] as? String {
            self.ipBlockId = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NetBusiness"] as? String {
            self.netBusiness = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["Ownership"] as? String {
            self.ownership = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["ReserveParentBlock"] as? String {
            self.reserveParentBlock = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["UpdateType"] as? String {
            self.updateType = value
        }
        if let value = dict["ZoneLayer"] as? [Any?] {
            var tmp : [IpBlock.ZoneLayer] = []
            for v in value {
                if v != nil {
                    var model = IpBlock.ZoneLayer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zoneLayer = tmp
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class IpBlockRecord : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public class ZoneLayer : Tea.TeaModel {
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
        public var businessTypeName: String?

        public var deviceName: String?

        public var gateway: String?

        public var parentIpBlocks: [String]?

        public var zoneLayer: [IpBlockRecord.Detail.ZoneLayer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessTypeName != nil {
                map["BusinessTypeName"] = self.businessTypeName!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.gateway != nil {
                map["Gateway"] = self.gateway!
            }
            if self.parentIpBlocks != nil {
                map["ParentIpBlocks"] = self.parentIpBlocks!
            }
            if self.zoneLayer != nil {
                var tmp : [Any] = []
                for k in self.zoneLayer! {
                    tmp.append(k.toMap())
                }
                map["ZoneLayer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessTypeName"] as? String {
                self.businessTypeName = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["Gateway"] as? String {
                self.gateway = value
            }
            if let value = dict["ParentIpBlocks"] as? [String] {
                self.parentIpBlocks = value
            }
            if let value = dict["ZoneLayer"] as? [Any?] {
                var tmp : [IpBlockRecord.Detail.ZoneLayer] = []
                for v in value {
                    if v != nil {
                        var model = IpBlockRecord.Detail.ZoneLayer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneLayer = tmp
            }
        }
    }
    public var createTime: String?

    public var creator: Int64?

    public var description_: String?

    public var detail: [IpBlockRecord.Detail]?

    public var ipBlockCode: [String]?

    public var ipBlockRecordId: String?

    public var netType: String?

    public var recordType: String?

    public var status: String?

    public var title: String?

    public var updateTime: String?

    public var workNo: String?

    public var zoneName: String?

    public override init() {
        super.init()
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
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.detail != nil {
            var tmp : [Any] = []
            for k in self.detail! {
                tmp.append(k.toMap())
            }
            map["Detail"] = tmp
        }
        if self.ipBlockCode != nil {
            map["IpBlockCode"] = self.ipBlockCode!
        }
        if self.ipBlockRecordId != nil {
            map["IpBlockRecordId"] = self.ipBlockRecordId!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.workNo != nil {
            map["WorkNo"] = self.workNo!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Detail"] as? [Any?] {
            var tmp : [IpBlockRecord.Detail] = []
            for v in value {
                if v != nil {
                    var model = IpBlockRecord.Detail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detail = tmp
        }
        if let value = dict["IpBlockCode"] as? [String] {
            self.ipBlockCode = value
        }
        if let value = dict["IpBlockRecordId"] as? String {
            self.ipBlockRecordId = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["RecordType"] as? String {
            self.recordType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["WorkNo"] as? String {
            self.workNo = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class IpRecord : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public class ZoneLayer : Tea.TeaModel {
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
        public var deviceMac: String?

        public var deviceName: String?

        public var gateway: String?

        public var ip: String?

        public var parentIpBlocks: [String]?

        public var port: String?

        public var remoteDeviceName: String?

        public var remoteIp: String?

        public var remotePort: String?

        public var zoneLayer: [IpRecord.Detail.ZoneLayer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceMac != nil {
                map["DeviceMac"] = self.deviceMac!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.gateway != nil {
                map["Gateway"] = self.gateway!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.parentIpBlocks != nil {
                map["ParentIpBlocks"] = self.parentIpBlocks!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remoteDeviceName != nil {
                map["RemoteDeviceName"] = self.remoteDeviceName!
            }
            if self.remoteIp != nil {
                map["RemoteIp"] = self.remoteIp!
            }
            if self.remotePort != nil {
                map["RemotePort"] = self.remotePort!
            }
            if self.zoneLayer != nil {
                var tmp : [Any] = []
                for k in self.zoneLayer! {
                    tmp.append(k.toMap())
                }
                map["ZoneLayer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceMac"] as? String {
                self.deviceMac = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["Gateway"] as? String {
                self.gateway = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["ParentIpBlocks"] as? [String] {
                self.parentIpBlocks = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["RemoteDeviceName"] as? String {
                self.remoteDeviceName = value
            }
            if let value = dict["RemoteIp"] as? String {
                self.remoteIp = value
            }
            if let value = dict["RemotePort"] as? String {
                self.remotePort = value
            }
            if let value = dict["ZoneLayer"] as? [Any?] {
                var tmp : [IpRecord.Detail.ZoneLayer] = []
                for v in value {
                    if v != nil {
                        var model = IpRecord.Detail.ZoneLayer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneLayer = tmp
            }
        }
    }
    public var businessTypeName: String?

    public var createTime: String?

    public var creator: String?

    public var description_: String?

    public var detail: [IpRecord.Detail]?

    public var ipBlock: String?

    public var ipCode: [String]?

    public var ipRecordId: String?

    public var recodeType: String?

    public var status: String?

    public var updateTime: String?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessTypeName != nil {
            map["BusinessTypeName"] = self.businessTypeName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.detail != nil {
            var tmp : [Any] = []
            for k in self.detail! {
                tmp.append(k.toMap())
            }
            map["Detail"] = tmp
        }
        if self.ipBlock != nil {
            map["IpBlock"] = self.ipBlock!
        }
        if self.ipCode != nil {
            map["IpCode"] = self.ipCode!
        }
        if self.ipRecordId != nil {
            map["IpRecordId"] = self.ipRecordId!
        }
        if self.recodeType != nil {
            map["RecodeType"] = self.recodeType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessTypeName"] as? String {
            self.businessTypeName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Detail"] as? [Any?] {
            var tmp : [IpRecord.Detail] = []
            for v in value {
                if v != nil {
                    var model = IpRecord.Detail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detail = tmp
        }
        if let value = dict["IpBlock"] as? String {
            self.ipBlock = value
        }
        if let value = dict["IpCode"] as? [String] {
            self.ipCode = value
        }
        if let value = dict["IpRecordId"] as? String {
            self.ipRecordId = value
        }
        if let value = dict["RecodeType"] as? String {
            self.recodeType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class ModelToRole : Tea.TeaModel {
    public var createTime: String?

    public var id: String?

    public var model: String?

    public var modelToRoleId: String?

    public var networkArchitectureIterationId: String?

    public var role: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.modelToRoleId != nil {
            map["ModelToRoleId"] = self.modelToRoleId!
        }
        if self.networkArchitectureIterationId != nil {
            map["NetworkArchitectureIterationId"] = self.networkArchitectureIterationId!
        }
        if self.role != nil {
            map["Role"] = self.role!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["ModelToRoleId"] as? String {
            self.modelToRoleId = value
        }
        if let value = dict["NetworkArchitectureIterationId"] as? String {
            self.networkArchitectureIterationId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class Module : Tea.TeaModel {
    public class Device : Tea.TeaModel {
        public var count: Int64?

        public var createTime: String?

        public var deviceCount: Int64?

        public var deviceRole: String?

        public var deviceX: String?

        public var deviceY: String?

        public var id: String?

        public var role: String?

        public var updateTime: String?

        public var x: String?

        public var y: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deviceCount != nil {
                map["DeviceCount"] = self.deviceCount!
            }
            if self.deviceRole != nil {
                map["DeviceRole"] = self.deviceRole!
            }
            if self.deviceX != nil {
                map["DeviceX"] = self.deviceX!
            }
            if self.deviceY != nil {
                map["DeviceY"] = self.deviceY!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeviceCount"] as? Int64 {
                self.deviceCount = value
            }
            if let value = dict["DeviceRole"] as? String {
                self.deviceRole = value
            }
            if let value = dict["DeviceX"] as? String {
                self.deviceX = value
            }
            if let value = dict["DeviceY"] as? String {
                self.deviceY = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["X"] as? String {
                self.x = value
            }
            if let value = dict["Y"] as? String {
                self.y = value
            }
        }
    }
    public class ModuleDetails : Tea.TeaModel {
        public class DeviceDetails : Tea.TeaModel {
            public var orderNumber: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orderNumber != nil {
                    map["OrderNumber"] = self.orderNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OrderNumber"] as? Int64 {
                    self.orderNumber = value
                }
            }
        }
        public var deviceDetails: [Module.ModuleDetails.DeviceDetails]?

        public var orderNumber: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceDetails != nil {
                var tmp : [Any] = []
                for k in self.deviceDetails! {
                    tmp.append(k.toMap())
                }
                map["DeviceDetails"] = tmp
            }
            if self.orderNumber != nil {
                map["OrderNumber"] = self.orderNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceDetails"] as? [Any?] {
                var tmp : [Module.ModuleDetails.DeviceDetails] = []
                for v in value {
                    if v != nil {
                        var model = Module.ModuleDetails.DeviceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceDetails = tmp
            }
            if let value = dict["OrderNumber"] as? Int64 {
                self.orderNumber = value
            }
        }
    }
    public var createTime: String?

    public var device: Module.Device?

    public var id: String?

    public var maxCount: Int64?

    public var minCount: Int64?

    public var moduleDetails: [Module.ModuleDetails]?

    public var moduleId: String?

    public var moduleType: String?

    public var name: String?

    public var parentModuleId: String?

    public var stack: Bool?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.device?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.minCount != nil {
            map["MinCount"] = self.minCount!
        }
        if self.moduleDetails != nil {
            var tmp : [Any] = []
            for k in self.moduleDetails! {
                tmp.append(k.toMap())
            }
            map["ModuleDetails"] = tmp
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentModuleId != nil {
            map["ParentModuleId"] = self.parentModuleId!
        }
        if self.stack != nil {
            map["Stack"] = self.stack!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Device"] as? [String: Any?] {
            var model = Module.Device()
            model.fromMap(value)
            self.device = model
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxCount"] as? Int64 {
            self.maxCount = value
        }
        if let value = dict["MinCount"] as? Int64 {
            self.minCount = value
        }
        if let value = dict["ModuleDetails"] as? [Any?] {
            var tmp : [Module.ModuleDetails] = []
            for v in value {
                if v != nil {
                    var model = Module.ModuleDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.moduleDetails = tmp
        }
        if let value = dict["ModuleId"] as? String {
            self.moduleId = value
        }
        if let value = dict["ModuleType"] as? String {
            self.moduleType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentModuleId"] as? String {
            self.parentModuleId = value
        }
        if let value = dict["Stack"] as? Bool {
            self.stack = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class MonitorItem : Tea.TeaModel {
    public var analysisCode: String?

    public var collectionType: String?

    public var config: String?

    public var enable: Int32?

    public var execInterval: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var monitorItemDescription: String?

    public var monitorItemId: String?

    public var monitorItemName: String?

    public var securityDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisCode != nil {
            map["AnalysisCode"] = self.analysisCode!
        }
        if self.collectionType != nil {
            map["CollectionType"] = self.collectionType!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.execInterval != nil {
            map["ExecInterval"] = self.execInterval!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.monitorItemDescription != nil {
            map["MonitorItemDescription"] = self.monitorItemDescription!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.monitorItemName != nil {
            map["MonitorItemName"] = self.monitorItemName!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnalysisCode"] as? String {
            self.analysisCode = value
        }
        if let value = dict["CollectionType"] as? String {
            self.collectionType = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["ExecInterval"] as? String {
            self.execInterval = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["MonitorItemDescription"] as? String {
            self.monitorItemDescription = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["MonitorItemName"] as? String {
            self.monitorItemName = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
    }
}

public class NetTopology : Tea.TeaModel {
    public var config: String?

    public var netTopologyId: String?

    public var netTopologyName: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
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
            map["Config"] = self.config!
        }
        if self.netTopologyId != nil {
            map["NetTopologyId"] = self.netTopologyId!
        }
        if self.netTopologyName != nil {
            map["NetTopologyName"] = self.netTopologyName!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["NetTopologyId"] as? String {
            self.netTopologyId = value
        }
        if let value = dict["NetTopologyName"] as? String {
            self.netTopologyName = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class NetworkArchitecture : Tea.TeaModel {
    public var archVersionIterationId: String?

    public var availabe: Bool?

    public var children: [String]?

    public var createTime: String?

    public var description_: String?

    public var deviceNumber: Int64?

    public var groupNumber: Int64?

    public var id: String?

    public var name: String?

    public var networkArchitectureId: String?

    public var role: String?

    public var selected: Bool?

    public var stack: Bool?

    public var status: String?

    public var updateTime: String?

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
        if self.archVersionIterationId != nil {
            map["ArchVersionIterationId"] = self.archVersionIterationId!
        }
        if self.availabe != nil {
            map["Availabe"] = self.availabe!
        }
        if self.children != nil {
            map["Children"] = self.children!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceNumber != nil {
            map["DeviceNumber"] = self.deviceNumber!
        }
        if self.groupNumber != nil {
            map["GroupNumber"] = self.groupNumber!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkArchitectureId != nil {
            map["NetworkArchitectureId"] = self.networkArchitectureId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.selected != nil {
            map["Selected"] = self.selected!
        }
        if self.stack != nil {
            map["Stack"] = self.stack!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchVersionIterationId"] as? String {
            self.archVersionIterationId = value
        }
        if let value = dict["Availabe"] as? Bool {
            self.availabe = value
        }
        if let value = dict["Children"] as? [String] {
            self.children = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceNumber"] as? Int64 {
            self.deviceNumber = value
        }
        if let value = dict["GroupNumber"] as? Int64 {
            self.groupNumber = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkArchitectureId"] as? String {
            self.networkArchitectureId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Selected"] as? Bool {
            self.selected = value
        }
        if let value = dict["Stack"] as? Bool {
            self.stack = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class NotificationGroup : Tea.TeaModel {
    public var gmtCreate: String?

    public var gmtModified: String?

    public var notificationGroupDescription: String?

    public var notificationGroupId: String?

    public var notificationGroupName: String?

    public var notificationGroupType: String?

    public var webhook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.notificationGroupDescription != nil {
            map["NotificationGroupDescription"] = self.notificationGroupDescription!
        }
        if self.notificationGroupId != nil {
            map["NotificationGroupId"] = self.notificationGroupId!
        }
        if self.notificationGroupName != nil {
            map["NotificationGroupName"] = self.notificationGroupName!
        }
        if self.notificationGroupType != nil {
            map["NotificationGroupType"] = self.notificationGroupType!
        }
        if self.webhook != nil {
            map["Webhook"] = self.webhook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["NotificationGroupDescription"] as? String {
            self.notificationGroupDescription = value
        }
        if let value = dict["NotificationGroupId"] as? String {
            self.notificationGroupId = value
        }
        if let value = dict["NotificationGroupName"] as? String {
            self.notificationGroupName = value
        }
        if let value = dict["NotificationGroupType"] as? String {
            self.notificationGroupType = value
        }
        if let value = dict["Webhook"] as? String {
            self.webhook = value
        }
    }
}

public class Order : Tea.TeaModel {
    public var gmtCreate: String?

    public var gmtModify: String?

    public var orderId: String?

    public var output: String?

    public var params: String?

    public var schemeId: String?

    public var schemeName: String?

    public var status: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.schemeId != nil {
            map["SchemeId"] = self.schemeId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["SchemeId"] as? String {
            self.schemeId = value
        }
        if let value = dict["SchemeName"] as? String {
            self.schemeName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class OrderStep : Tea.TeaModel {
    public class Restriction : Tea.TeaModel {
        public var label: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var displayMethod: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var jobKwargs: String?

    public var jobMessage: String?

    public var jobReturnStatus: String?

    public var jobReturnValues: String?

    public var jobSystem: String?

    public var orderId: String?

    public var orderStepId: String?

    public var realNextStep: String?

    public var restriction: [OrderStep.Restriction]?

    public var stepName: String?

    public var stepStatus: String?

    public var stepTitle: String?

    public var stepType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayMethod != nil {
            map["DisplayMethod"] = self.displayMethod!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.jobKwargs != nil {
            map["JobKwargs"] = self.jobKwargs!
        }
        if self.jobMessage != nil {
            map["JobMessage"] = self.jobMessage!
        }
        if self.jobReturnStatus != nil {
            map["JobReturnStatus"] = self.jobReturnStatus!
        }
        if self.jobReturnValues != nil {
            map["JobReturnValues"] = self.jobReturnValues!
        }
        if self.jobSystem != nil {
            map["JobSystem"] = self.jobSystem!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderStepId != nil {
            map["OrderStepId"] = self.orderStepId!
        }
        if self.realNextStep != nil {
            map["RealNextStep"] = self.realNextStep!
        }
        if self.restriction != nil {
            var tmp : [Any] = []
            for k in self.restriction! {
                tmp.append(k.toMap())
            }
            map["Restriction"] = tmp
        }
        if self.stepName != nil {
            map["StepName"] = self.stepName!
        }
        if self.stepStatus != nil {
            map["StepStatus"] = self.stepStatus!
        }
        if self.stepTitle != nil {
            map["StepTitle"] = self.stepTitle!
        }
        if self.stepType != nil {
            map["StepType"] = self.stepType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayMethod"] as? String {
            self.displayMethod = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["JobKwargs"] as? String {
            self.jobKwargs = value
        }
        if let value = dict["JobMessage"] as? String {
            self.jobMessage = value
        }
        if let value = dict["JobReturnStatus"] as? String {
            self.jobReturnStatus = value
        }
        if let value = dict["JobReturnValues"] as? String {
            self.jobReturnValues = value
        }
        if let value = dict["JobSystem"] as? String {
            self.jobSystem = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OrderStepId"] as? String {
            self.orderStepId = value
        }
        if let value = dict["RealNextStep"] as? String {
            self.realNextStep = value
        }
        if let value = dict["Restriction"] as? [Any?] {
            var tmp : [OrderStep.Restriction] = []
            for v in value {
                if v != nil {
                    var model = OrderStep.Restriction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.restriction = tmp
        }
        if let value = dict["StepName"] as? String {
            self.stepName = value
        }
        if let value = dict["StepStatus"] as? String {
            self.stepStatus = value
        }
        if let value = dict["StepTitle"] as? String {
            self.stepTitle = value
        }
        if let value = dict["StepType"] as? String {
            self.stepType = value
        }
    }
}

public class OsVersion : Tea.TeaModel {
    public var accessId: String?

    public var createTime: String?

    public var directory: String?

    public var expireTime: String?

    public var fileName: String?

    public var filePath: String?

    public var host: String?

    public var model: String?

    public var osVersion: String?

    public var osVersionId: String?

    public var policy: String?

    public var signature: String?

    public var status: String?

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
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.directory != nil {
            map["Directory"] = self.directory!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion!
        }
        if self.osVersionId != nil {
            map["OsVersionId"] = self.osVersionId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Directory"] as? String {
            self.directory = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OsVersion"] as? String {
            self.osVersion = value
        }
        if let value = dict["OsVersionId"] as? String {
            self.osVersionId = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class PhysicalSpace : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var province: String?

    public var spaceId: String?

    public var spaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.spaceName != nil {
            map["SpaceName"] = self.spaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["SpaceId"] as? String {
            self.spaceId = value
        }
        if let value = dict["SpaceName"] as? String {
            self.spaceName = value
        }
    }
}

public class PhysicalSpaceDto : Tea.TeaModel {
    public var address: String?

    public var adminSpace: String?

    public var children: [PhysicalSpaceDto]?

    public var city: String?

    public var country: String?

    public var fullParentPath: String?

    public var instance: String?

    public var owner: String?

    public var parentUid: String?

    public var physicalSpaceId: String?

    public var physicalSpaceName: String?

    public var province: String?

    public var remark: String?

    public var securityDomainList: [String]?

    public var spaceAbbreviation: String?

    public var spaceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.adminSpace != nil {
            map["AdminSpace"] = self.adminSpace!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.fullParentPath != nil {
            map["FullParentPath"] = self.fullParentPath!
        }
        if self.instance != nil {
            map["Instance"] = self.instance!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityDomainList != nil {
            map["SecurityDomainList"] = self.securityDomainList!
        }
        if self.spaceAbbreviation != nil {
            map["SpaceAbbreviation"] = self.spaceAbbreviation!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AdminSpace"] as? String {
            self.adminSpace = value
        }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [PhysicalSpaceDto] = []
            for v in value {
                if v != nil {
                    var model = PhysicalSpaceDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["FullParentPath"] as? String {
            self.fullParentPath = value
        }
        if let value = dict["Instance"] as? String {
            self.instance = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityDomainList"] as? [String] {
            self.securityDomainList = value
        }
        if let value = dict["SpaceAbbreviation"] as? String {
            self.spaceAbbreviation = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class Port : Tea.TeaModel {
    public var deviceId: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var portCollectionId: String?

    public var portName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.portName != nil {
            map["PortName"] = self.portName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["PortName"] as? String {
            self.portName = value
        }
    }
}

public class PortCollection : Tea.TeaModel {
    public var gmtCreate: String?

    public var gmtModified: String?

    public var portCollectionDescription: String?

    public var portCollectionId: String?

    public var portCollectionName: String?

    public var portList: [Port]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.portCollectionDescription != nil {
            map["PortCollectionDescription"] = self.portCollectionDescription!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.portCollectionName != nil {
            map["PortCollectionName"] = self.portCollectionName!
        }
        if self.portList != nil {
            var tmp : [Any] = []
            for k in self.portList! {
                tmp.append(k.toMap())
            }
            map["PortList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["PortCollectionDescription"] as? String {
            self.portCollectionDescription = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["PortCollectionName"] as? String {
            self.portCollectionName = value
        }
        if let value = dict["PortList"] as? [Any?] {
            var tmp : [Port] = []
            for v in value {
                if v != nil {
                    var model = Port()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.portList = tmp
        }
    }
}

public class ResourceInformation : Tea.TeaModel {
    public class Information : Tea.TeaModel {
        public var key: String?

        public var keyAction: String?

        public var keyAttribute: String?

        public var keyDescription: String?

        public override init() {
            super.init()
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
            if self.keyAction != nil {
                map["KeyAction"] = self.keyAction!
            }
            if self.keyAttribute != nil {
                map["KeyAttribute"] = self.keyAttribute!
            }
            if self.keyDescription != nil {
                map["KeyDescription"] = self.keyDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["KeyAction"] as? String {
                self.keyAction = value
            }
            if let value = dict["KeyAttribute"] as? String {
                self.keyAttribute = value
            }
            if let value = dict["KeyDescription"] as? String {
                self.keyDescription = value
            }
        }
    }
    public var architectureId: String?

    public var createTime: String?

    public var information: [ResourceInformation.Information]?

    public var resourceAttribute: String?

    public var resourceInformationId: String?

    public var resourceType: String?

    public var setupProjectId: String?

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
        if self.architectureId != nil {
            map["ArchitectureId"] = self.architectureId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.information != nil {
            var tmp : [Any] = []
            for k in self.information! {
                tmp.append(k.toMap())
            }
            map["Information"] = tmp
        }
        if self.resourceAttribute != nil {
            map["ResourceAttribute"] = self.resourceAttribute!
        }
        if self.resourceInformationId != nil {
            map["ResourceInformationId"] = self.resourceInformationId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.setupProjectId != nil {
            map["SetupProjectId"] = self.setupProjectId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchitectureId"] as? String {
            self.architectureId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Information"] as? [Any?] {
            var tmp : [ResourceInformation.Information] = []
            for v in value {
                if v != nil {
                    var model = ResourceInformation.Information()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.information = tmp
        }
        if let value = dict["ResourceAttribute"] as? String {
            self.resourceAttribute = value
        }
        if let value = dict["ResourceInformationId"] as? String {
            self.resourceInformationId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SetupProjectId"] as? String {
            self.setupProjectId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class ScheduleDuty : Tea.TeaModel {
    public class TypeWorkerList : Tea.TeaModel {
        public var scheduleTypeId: String?

        public var scheduleWorkerName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scheduleTypeId != nil {
                map["ScheduleTypeId"] = self.scheduleTypeId!
            }
            if self.scheduleWorkerName != nil {
                map["ScheduleWorkerName"] = self.scheduleWorkerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScheduleTypeId"] as? String {
                self.scheduleTypeId = value
            }
            if let value = dict["ScheduleWorkerName"] as? [String] {
                self.scheduleWorkerName = value
            }
        }
    }
    public var createTime: String?

    public var endDate: String?

    public var scheduleDutyId: String?

    public var scheduleTypeIds: [String]?

    public var startDate: String?

    public var typeWorkerList: [ScheduleDuty.TypeWorkerList]?

    public var updateTime: String?

    public var workDate: String?

    public var workType: String?

    public var workerId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.scheduleDutyId != nil {
            map["ScheduleDutyId"] = self.scheduleDutyId!
        }
        if self.scheduleTypeIds != nil {
            map["ScheduleTypeIds"] = self.scheduleTypeIds!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.typeWorkerList != nil {
            var tmp : [Any] = []
            for k in self.typeWorkerList! {
                tmp.append(k.toMap())
            }
            map["TypeWorkerList"] = tmp
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.workDate != nil {
            map["WorkDate"] = self.workDate!
        }
        if self.workType != nil {
            map["WorkType"] = self.workType!
        }
        if self.workerId != nil {
            map["WorkerId"] = self.workerId!
        }
        if self.workerName != nil {
            map["WorkerName"] = self.workerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ScheduleDutyId"] as? String {
            self.scheduleDutyId = value
        }
        if let value = dict["ScheduleTypeIds"] as? [String] {
            self.scheduleTypeIds = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TypeWorkerList"] as? [Any?] {
            var tmp : [ScheduleDuty.TypeWorkerList] = []
            for v in value {
                if v != nil {
                    var model = ScheduleDuty.TypeWorkerList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.typeWorkerList = tmp
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["WorkDate"] as? String {
            self.workDate = value
        }
        if let value = dict["WorkType"] as? String {
            self.workType = value
        }
        if let value = dict["WorkerId"] as? String {
            self.workerId = value
        }
        if let value = dict["WorkerName"] as? String {
            self.workerName = value
        }
    }
}

public class ScheduleType : Tea.TeaModel {
    public var createTime: String?

    public var key: String?

    public var relatedWorker: [String]?

    public var scheduleTypeId: String?

    public var status: String?

    public var updateTime: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.relatedWorker != nil {
            map["RelatedWorker"] = self.relatedWorker!
        }
        if self.scheduleTypeId != nil {
            map["ScheduleTypeId"] = self.scheduleTypeId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["RelatedWorker"] as? [String] {
            self.relatedWorker = value
        }
        if let value = dict["ScheduleTypeId"] as? String {
            self.scheduleTypeId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class ScheduleWorker : Tea.TeaModel {
    public var createTime: String?

    public var scheduleWorkerId: String?

    public var updateTime: String?

    public var workerContact: String?

    public var workerId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.scheduleWorkerId != nil {
            map["ScheduleWorkerId"] = self.scheduleWorkerId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.workerContact != nil {
            map["WorkerContact"] = self.workerContact!
        }
        if self.workerId != nil {
            map["WorkerId"] = self.workerId!
        }
        if self.workerName != nil {
            map["WorkerName"] = self.workerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ScheduleWorkerId"] as? String {
            self.scheduleWorkerId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["WorkerContact"] as? String {
            self.workerContact = value
        }
        if let value = dict["WorkerId"] as? String {
            self.workerId = value
        }
        if let value = dict["WorkerName"] as? String {
            self.workerName = value
        }
    }
}

public class Scheme : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var category: String?

    public var content: String?

    public var description_: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var input: [Scheme.Input]?

    public var output: [Scheme.Output]?

    public var schemeId: String?

    public var schemeName: String?

    public var status: String?

    public var view: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.output != nil {
            var tmp : [Any] = []
            for k in self.output! {
                tmp.append(k.toMap())
            }
            map["Output"] = tmp
        }
        if self.schemeId != nil {
            map["SchemeId"] = self.schemeId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.view != nil {
            map["View"] = self.view!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [Scheme.Input] = []
            for v in value {
                if v != nil {
                    var model = Scheme.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["Output"] as? [Any?] {
            var tmp : [Scheme.Output] = []
            for v in value {
                if v != nil {
                    var model = Scheme.Output()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.output = tmp
        }
        if let value = dict["SchemeId"] as? String {
            self.schemeId = value
        }
        if let value = dict["SchemeName"] as? String {
            self.schemeName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["View"] as? String {
            self.view = value
        }
    }
}

public class Script : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var content: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var input: [Script.Input]?

    public var output: [Script.Output]?

    public var rules: [ScriptRule]?

    public var scriptId: String?

    public var templateId: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.output != nil {
            var tmp : [Any] = []
            for k in self.output! {
                tmp.append(k.toMap())
            }
            map["Output"] = tmp
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [Script.Input] = []
            for v in value {
                if v != nil {
                    var model = Script.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["Output"] as? [Any?] {
            var tmp : [Script.Output] = []
            for v in value {
                if v != nil {
                    var model = Script.Output()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.output = tmp
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ScriptRule] = []
            for v in value {
                if v != nil {
                    var model = ScriptRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class ScriptHistory : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var comment: String?

    public var content: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var input: [ScriptHistory.Input]?

    public var output: [ScriptHistory.Output]?

    public var scriptId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.output != nil {
            var tmp : [Any] = []
            for k in self.output! {
                tmp.append(k.toMap())
            }
            map["Output"] = tmp
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [ScriptHistory.Input] = []
            for v in value {
                if v != nil {
                    var model = ScriptHistory.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["Output"] as? [Any?] {
            var tmp : [ScriptHistory.Output] = []
            for v in value {
                if v != nil {
                    var model = ScriptHistory.Output()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.output = tmp
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class ScriptRule : Tea.TeaModel {
    public var arch: String?

    public var domain: String?

    public var model: String?

    public var os: String?

    public var role: String?

    public var ruleId: String?

    public var scriptId: String?

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
        if self.arch != nil {
            map["Arch"] = self.arch!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arch"] as? String {
            self.arch = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class SetupProject : Tea.TeaModel {
    public class Packages : Tea.TeaModel {
        public var deviceNumber: String?

        public var model: String?

        public var role: String?

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
            if self.deviceNumber != nil {
                map["DeviceNumber"] = self.deviceNumber!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceNumber"] as? String {
                self.deviceNumber = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var archId: String?

    public var archVersion: String?

    public var architectureId: String?

    public var createTime: String?

    public var deliveryTime: String?

    public var description_: String?

    public var nodes: String?

    public var packages: [SetupProject.Packages]?

    public var setupProjectId: String?

    public var setupProjectName: String?

    public var spaceId: String?

    public var spaceName: String?

    public var spaceType: String?

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
        if self.archId != nil {
            map["ArchId"] = self.archId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.architectureId != nil {
            map["ArchitectureId"] = self.architectureId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deliveryTime != nil {
            map["DeliveryTime"] = self.deliveryTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        if self.packages != nil {
            var tmp : [Any] = []
            for k in self.packages! {
                tmp.append(k.toMap())
            }
            map["Packages"] = tmp
        }
        if self.setupProjectId != nil {
            map["SetupProjectId"] = self.setupProjectId!
        }
        if self.setupProjectName != nil {
            map["SetupProjectName"] = self.setupProjectName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.spaceName != nil {
            map["SpaceName"] = self.spaceName!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchId"] as? String {
            self.archId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["ArchitectureId"] as? String {
            self.architectureId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeliveryTime"] as? String {
            self.deliveryTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Nodes"] as? String {
            self.nodes = value
        }
        if let value = dict["Packages"] as? [Any?] {
            var tmp : [SetupProject.Packages] = []
            for v in value {
                if v != nil {
                    var model = SetupProject.Packages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.packages = tmp
        }
        if let value = dict["SetupProjectId"] as? String {
            self.setupProjectId = value
        }
        if let value = dict["SetupProjectName"] as? String {
            self.setupProjectName = value
        }
        if let value = dict["SpaceId"] as? String {
            self.spaceId = value
        }
        if let value = dict["SpaceName"] as? String {
            self.spaceName = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SpaceModel : Tea.TeaModel {
    public class Sort : Tea.TeaModel {
        public var level: Int64?

        public var levelName: String?

        public override init() {
            super.init()
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
                map["Level"] = self.level!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["LevelName"] as? String {
                self.levelName = value
            }
        }
    }
    public class SpaceModel : Tea.TeaModel {
        public class Sort : Tea.TeaModel {
            public var level: Int64?

            public var levleName: String?

            public override init() {
                super.init()
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
                    map["Level"] = self.level!
                }
                if self.levleName != nil {
                    map["LevleName"] = self.levleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Level"] as? Int64 {
                    self.level = value
                }
                if let value = dict["LevleName"] as? String {
                    self.levleName = value
                }
            }
        }
        public var createTime: String?

        public var sort: SpaceModel.SpaceModel.Sort?

        public var spaceModelId: String?

        public var spaceType: String?

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
            try self.sort?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.sort != nil {
                map["Sort"] = self.sort?.toMap()
            }
            if self.spaceModelId != nil {
                map["SpaceModelId"] = self.spaceModelId!
            }
            if self.spaceType != nil {
                map["SpaceType"] = self.spaceType!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Sort"] as? [String: Any?] {
                var model = SpaceModel.SpaceModel.Sort()
                model.fromMap(value)
                self.sort = model
            }
            if let value = dict["SpaceModelId"] as? String {
                self.spaceModelId = value
            }
            if let value = dict["SpaceType"] as? String {
                self.spaceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var createTime: String?

    public var instance: String?

    public var operateType: String?

    public var sort: SpaceModel.Sort?

    public var spaceId: String?

    public var spaceModel: SpaceModel.SpaceModel?

    public var spaceModelId: String?

    public var spaceModelName: String?

    public var spaceType: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sort?.validate()
        try self.spaceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.instance != nil {
            map["Instance"] = self.instance!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort?.toMap()
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.spaceModel != nil {
            map["SpaceModel"] = self.spaceModel?.toMap()
        }
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        if self.spaceModelName != nil {
            map["SpaceModelName"] = self.spaceModelName!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Instance"] as? String {
            self.instance = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["Sort"] as? [String: Any?] {
            var model = SpaceModel.Sort()
            model.fromMap(value)
            self.sort = model
        }
        if let value = dict["SpaceId"] as? String {
            self.spaceId = value
        }
        if let value = dict["SpaceModel"] as? [String: Any?] {
            var model = SpaceModel.SpaceModel()
            model.fromMap(value)
            self.spaceModel = model
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
        if let value = dict["SpaceModelName"] as? String {
            self.spaceModelName = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SubscriptionItem : Tea.TeaModel {
    public var alarmStatus: String?

    public var language: String?

    public var monitorItemId: String?

    public var notificationGroupId: String?

    public var notificationMode: String?

    public var recoveryNotice: Int32?

    public var subscriptionItemId: String?

    public var subscriptionType: String?

    public var suppressionStrategy: String?

    public var triggerTimes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.notificationGroupId != nil {
            map["NotificationGroupId"] = self.notificationGroupId!
        }
        if self.notificationMode != nil {
            map["NotificationMode"] = self.notificationMode!
        }
        if self.recoveryNotice != nil {
            map["RecoveryNotice"] = self.recoveryNotice!
        }
        if self.subscriptionItemId != nil {
            map["SubscriptionItemId"] = self.subscriptionItemId!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.suppressionStrategy != nil {
            map["SuppressionStrategy"] = self.suppressionStrategy!
        }
        if self.triggerTimes != nil {
            map["TriggerTimes"] = self.triggerTimes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["NotificationGroupId"] as? String {
            self.notificationGroupId = value
        }
        if let value = dict["NotificationMode"] as? String {
            self.notificationMode = value
        }
        if let value = dict["RecoveryNotice"] as? Int32 {
            self.recoveryNotice = value
        }
        if let value = dict["SubscriptionItemId"] as? String {
            self.subscriptionItemId = value
        }
        if let value = dict["SubscriptionType"] as? String {
            self.subscriptionType = value
        }
        if let value = dict["SuppressionStrategy"] as? String {
            self.suppressionStrategy = value
        }
        if let value = dict["TriggerTimes"] as? Int32 {
            self.triggerTimes = value
        }
    }
}

public class Task : Tea.TeaModel {
    public var category: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var params: String?

    public var responseCode: String?

    public var result: String?

    public var status: String?

    public var taskId: String?

    public var templateId: String?

    public var templateName: String?

    public override init() {
        super.init()
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
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class TaskLog : Tea.TeaModel {
    public var funcName: String?

    public var gmtCreate: String?

    public var level: String?

    public var lineNo: Int32?

    public var logId: String?

    public var message: String?

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
        if self.funcName != nil {
            map["FuncName"] = self.funcName!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.lineNo != nil {
            map["LineNo"] = self.lineNo!
        }
        if self.logId != nil {
            map["LogId"] = self.logId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FuncName"] as? String {
            self.funcName = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["LineNo"] as? Int32 {
            self.lineNo = value
        }
        if let value = dict["LogId"] as? String {
            self.logId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class Template : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sample: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sample != nil {
                map["Sample"] = self.sample!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Sample"] as? String {
                self.sample = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var category: String?

    public var comment: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var input: [Template.Input]?

    public var output: [Template.Output]?

    public var templateName: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["GmtModify"] = self.gmtModify!
        }
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.output != nil {
            var tmp : [Any] = []
            for k in self.output! {
                tmp.append(k.toMap())
            }
            map["Output"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModify"] as? String {
            self.gmtModify = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [Template.Input] = []
            for v in value {
                if v != nil {
                    var model = Template.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["Output"] as? [Any?] {
            var tmp : [Template.Output] = []
            for v in value {
                if v != nil {
                    var model = Template.Output()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.output = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class TimePeriod : Tea.TeaModel {
    public var cronExpression: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var source: String?

    public var timePeriodDescription: String?

    public var timePeriodId: String?

    public var timePeriodName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.timePeriodDescription != nil {
            map["TimePeriodDescription"] = self.timePeriodDescription!
        }
        if self.timePeriodId != nil {
            map["TimePeriodId"] = self.timePeriodId!
        }
        if self.timePeriodName != nil {
            map["TimePeriodName"] = self.timePeriodName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["TimePeriodDescription"] as? String {
            self.timePeriodDescription = value
        }
        if let value = dict["TimePeriodId"] as? String {
            self.timePeriodId = value
        }
        if let value = dict["TimePeriodName"] as? String {
            self.timePeriodName = value
        }
    }
}

public class ZoneType : Tea.TeaModel {
    public class ZoneTypeLayer : Tea.TeaModel {
        public var mask: Int64?

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
            if self.mask != nil {
                map["Mask"] = self.mask!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Mask"] as? Int64 {
                self.mask = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var createTime: String?

    public var name: String?

    public var zoneTypeId: String?

    public var zoneTypeLayer: [ZoneType.ZoneTypeLayer]?

    public var zoneTypeName: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.zoneTypeId != nil {
            map["ZoneTypeId"] = self.zoneTypeId!
        }
        if self.zoneTypeLayer != nil {
            var tmp : [Any] = []
            for k in self.zoneTypeLayer! {
                tmp.append(k.toMap())
            }
            map["ZoneTypeLayer"] = tmp
        }
        if self.zoneTypeName != nil {
            map["ZoneTypeName"] = self.zoneTypeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ZoneTypeId"] as? String {
            self.zoneTypeId = value
        }
        if let value = dict["ZoneTypeLayer"] as? [Any?] {
            var tmp : [ZoneType.ZoneTypeLayer] = []
            for v in value {
                if v != nil {
                    var model = ZoneType.ZoneTypeLayer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zoneTypeLayer = tmp
        }
        if let value = dict["ZoneTypeName"] as? String {
            self.zoneTypeName = value
        }
    }
}

public class CloseEventRequest : Tea.TeaModel {
    public var eventName: String?

    public var eventObjectId: String?

    public var eventType: String?

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
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventObjectId != nil {
            map["EventObjectId"] = self.eventObjectId!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventObjectId"] as? String {
            self.eventObjectId = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloseEventResponseBody : Tea.TeaModel {
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

public class CloseEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CloseEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDedicatedLineRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var clientToken: String?

    public var contact: String?

    public var dedicatedLineGateway: String?

    public var dedicatedLineIp: String?

    public var dedicatedLineRole: String?

    public var description_: String?

    public var deviceId: String?

    public var devicePort: String?

    public var expirationDate: String?

    public var extAttributes: String?

    public var instanceId: String?

    public var isp: String?

    public var ispFormId: String?

    public var ispId: String?

    public var keyword: String?

    public var onlineDate: String?

    public var phone: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
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
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contact != nil {
            map["Contact"] = self.contact!
        }
        if self.dedicatedLineGateway != nil {
            map["DedicatedLineGateway"] = self.dedicatedLineGateway!
        }
        if self.dedicatedLineIp != nil {
            map["DedicatedLineIp"] = self.dedicatedLineIp!
        }
        if self.dedicatedLineRole != nil {
            map["DedicatedLineRole"] = self.dedicatedLineRole!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.devicePort != nil {
            map["DevicePort"] = self.devicePort!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isp != nil {
            map["Isp"] = self.isp!
        }
        if self.ispFormId != nil {
            map["IspFormId"] = self.ispFormId!
        }
        if self.ispId != nil {
            map["IspId"] = self.ispId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.onlineDate != nil {
            map["OnlineDate"] = self.onlineDate!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Contact"] as? String {
            self.contact = value
        }
        if let value = dict["DedicatedLineGateway"] as? String {
            self.dedicatedLineGateway = value
        }
        if let value = dict["DedicatedLineIp"] as? String {
            self.dedicatedLineIp = value
        }
        if let value = dict["DedicatedLineRole"] as? String {
            self.dedicatedLineRole = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DevicePort"] as? String {
            self.devicePort = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Isp"] as? String {
            self.isp = value
        }
        if let value = dict["IspFormId"] as? String {
            self.ispFormId = value
        }
        if let value = dict["IspId"] as? String {
            self.ispId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OnlineDate"] as? String {
            self.onlineDate = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class CreateDedicatedLineResponseBody : Tea.TeaModel {
    public var dedicatedLineId: String?

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
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDedicatedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDedicatedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeviceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deviceFormId: String?

    public var enablePassword: String?

    public var extAttributes: String?

    public var hostName: String?

    public var instanceId: String?

    public var ip: String?

    public var loginPassword: String?

    public var loginType: String?

    public var loginUsername: String?

    public var mac: String?

    public var model: String?

    public var physicalSpaceId: String?

    public var securityDomain: String?

    public var serviceStatus: String?

    public var sn: String?

    public var snmpAccountType: String?

    public var snmpAccountVersion: String?

    public var snmpAuthPassphrase: String?

    public var snmpAuthProtocol: String?

    public var snmpCommunity: String?

    public var snmpPrivacyPassphrase: String?

    public var snmpPrivacyProtocol: String?

    public var snmpSecurityLevel: String?

    public var snmpUsername: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.enablePassword != nil {
            map["EnablePassword"] = self.enablePassword!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.loginPassword != nil {
            map["LoginPassword"] = self.loginPassword!
        }
        if self.loginType != nil {
            map["LoginType"] = self.loginType!
        }
        if self.loginUsername != nil {
            map["LoginUsername"] = self.loginUsername!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.snmpAccountType != nil {
            map["SnmpAccountType"] = self.snmpAccountType!
        }
        if self.snmpAccountVersion != nil {
            map["SnmpAccountVersion"] = self.snmpAccountVersion!
        }
        if self.snmpAuthPassphrase != nil {
            map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
        }
        if self.snmpAuthProtocol != nil {
            map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
        }
        if self.snmpCommunity != nil {
            map["SnmpCommunity"] = self.snmpCommunity!
        }
        if self.snmpPrivacyPassphrase != nil {
            map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
        }
        if self.snmpPrivacyProtocol != nil {
            map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
        }
        if self.snmpSecurityLevel != nil {
            map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
        }
        if self.snmpUsername != nil {
            map["SnmpUsername"] = self.snmpUsername!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["EnablePassword"] as? String {
            self.enablePassword = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["LoginPassword"] as? String {
            self.loginPassword = value
        }
        if let value = dict["LoginType"] as? String {
            self.loginType = value
        }
        if let value = dict["LoginUsername"] as? String {
            self.loginUsername = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["Sn"] as? String {
            self.sn = value
        }
        if let value = dict["SnmpAccountType"] as? String {
            self.snmpAccountType = value
        }
        if let value = dict["SnmpAccountVersion"] as? String {
            self.snmpAccountVersion = value
        }
        if let value = dict["SnmpAuthPassphrase"] as? String {
            self.snmpAuthPassphrase = value
        }
        if let value = dict["SnmpAuthProtocol"] as? String {
            self.snmpAuthProtocol = value
        }
        if let value = dict["SnmpCommunity"] as? String {
            self.snmpCommunity = value
        }
        if let value = dict["SnmpPrivacyPassphrase"] as? String {
            self.snmpPrivacyPassphrase = value
        }
        if let value = dict["SnmpPrivacyProtocol"] as? String {
            self.snmpPrivacyProtocol = value
        }
        if let value = dict["SnmpSecurityLevel"] as? String {
            self.snmpSecurityLevel = value
        }
        if let value = dict["SnmpUsername"] as? String {
            self.snmpUsername = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class CreateDeviceResponseBody : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeviceFormRequest : Tea.TeaModel {
    public var accountConfig: Bool?

    public var clientToken: String?

    public var configCompare: Bool?

    public var detailDisplay: Bool?

    public var deviceFormName: String?

    public var instanceId: String?

    public var relatedDeviceFormId: String?

    public var resourceUse: String?

    public var script: String?

    public var uniqueKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountConfig != nil {
            map["AccountConfig"] = self.accountConfig!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configCompare != nil {
            map["ConfigCompare"] = self.configCompare!
        }
        if self.detailDisplay != nil {
            map["DetailDisplay"] = self.detailDisplay!
        }
        if self.deviceFormName != nil {
            map["DeviceFormName"] = self.deviceFormName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.relatedDeviceFormId != nil {
            map["RelatedDeviceFormId"] = self.relatedDeviceFormId!
        }
        if self.resourceUse != nil {
            map["ResourceUse"] = self.resourceUse!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.uniqueKey != nil {
            map["UniqueKey"] = self.uniqueKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountConfig"] as? Bool {
            self.accountConfig = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigCompare"] as? Bool {
            self.configCompare = value
        }
        if let value = dict["DetailDisplay"] as? Bool {
            self.detailDisplay = value
        }
        if let value = dict["DeviceFormName"] as? String {
            self.deviceFormName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RelatedDeviceFormId"] as? String {
            self.relatedDeviceFormId = value
        }
        if let value = dict["ResourceUse"] as? String {
            self.resourceUse = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["UniqueKey"] as? String {
            self.uniqueKey = value
        }
    }
}

public class CreateDeviceFormResponseBody : Tea.TeaModel {
    public var deviceFormId: String?

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
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDeviceFormResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceFormResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDeviceFormResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDevicePropertyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deviceFormId: String?

    public var instanceId: String?

    public var propertyContent: String?

    public var propertyFormat: String?

    public var propertyKey: String?

    public var propertyName: String?

    public override init() {
        super.init()
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
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.propertyContent != nil {
            map["PropertyContent"] = self.propertyContent!
        }
        if self.propertyFormat != nil {
            map["PropertyFormat"] = self.propertyFormat!
        }
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        if self.propertyName != nil {
            map["PropertyName"] = self.propertyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PropertyContent"] as? String {
            self.propertyContent = value
        }
        if let value = dict["PropertyFormat"] as? String {
            self.propertyFormat = value
        }
        if let value = dict["PropertyKey"] as? String {
            self.propertyKey = value
        }
        if let value = dict["PropertyName"] as? String {
            self.propertyName = value
        }
    }
}

public class CreateDevicePropertyResponseBody : Tea.TeaModel {
    public var devicePropertyId: String?

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
        if self.devicePropertyId != nil {
            map["DevicePropertyId"] = self.devicePropertyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DevicePropertyId"] as? String {
            self.devicePropertyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDevicePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDevicePropertyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDevicePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDevicesRequest : Tea.TeaModel {
    public class DeviceParamModelList : Tea.TeaModel {
        public var enablePassword: String?

        public var extAttributes: String?

        public var hostName: String?

        public var ip: String?

        public var loginPassword: String?

        public var loginType: String?

        public var loginUsername: String?

        public var mac: String?

        public var model: String?

        public var physicalSpaceName: String?

        public var securityDomain: String?

        public var serviceStatus: String?

        public var sn: String?

        public var snmpAccountType: String?

        public var snmpAccountVersion: String?

        public var snmpAuthPassphrase: String?

        public var snmpAuthProtocol: String?

        public var snmpCommunity: String?

        public var snmpPrivacyPassphrase: String?

        public var snmpPrivacyProtocol: String?

        public var snmpSecurityLevel: String?

        public var snmpUsername: String?

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
            if self.enablePassword != nil {
                map["EnablePassword"] = self.enablePassword!
            }
            if self.extAttributes != nil {
                map["ExtAttributes"] = self.extAttributes!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.loginType != nil {
                map["LoginType"] = self.loginType!
            }
            if self.loginUsername != nil {
                map["LoginUsername"] = self.loginUsername!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.physicalSpaceName != nil {
                map["PhysicalSpaceName"] = self.physicalSpaceName!
            }
            if self.securityDomain != nil {
                map["SecurityDomain"] = self.securityDomain!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.snmpAccountType != nil {
                map["SnmpAccountType"] = self.snmpAccountType!
            }
            if self.snmpAccountVersion != nil {
                map["SnmpAccountVersion"] = self.snmpAccountVersion!
            }
            if self.snmpAuthPassphrase != nil {
                map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
            }
            if self.snmpAuthProtocol != nil {
                map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
            }
            if self.snmpCommunity != nil {
                map["SnmpCommunity"] = self.snmpCommunity!
            }
            if self.snmpPrivacyPassphrase != nil {
                map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
            }
            if self.snmpPrivacyProtocol != nil {
                map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
            }
            if self.snmpSecurityLevel != nil {
                map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
            }
            if self.snmpUsername != nil {
                map["SnmpUsername"] = self.snmpUsername!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnablePassword"] as? String {
                self.enablePassword = value
            }
            if let value = dict["ExtAttributes"] as? String {
                self.extAttributes = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["LoginType"] as? String {
                self.loginType = value
            }
            if let value = dict["LoginUsername"] as? String {
                self.loginUsername = value
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["PhysicalSpaceName"] as? String {
                self.physicalSpaceName = value
            }
            if let value = dict["SecurityDomain"] as? String {
                self.securityDomain = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["SnmpAccountType"] as? String {
                self.snmpAccountType = value
            }
            if let value = dict["SnmpAccountVersion"] as? String {
                self.snmpAccountVersion = value
            }
            if let value = dict["SnmpAuthPassphrase"] as? String {
                self.snmpAuthPassphrase = value
            }
            if let value = dict["SnmpAuthProtocol"] as? String {
                self.snmpAuthProtocol = value
            }
            if let value = dict["SnmpCommunity"] as? String {
                self.snmpCommunity = value
            }
            if let value = dict["SnmpPrivacyPassphrase"] as? String {
                self.snmpPrivacyPassphrase = value
            }
            if let value = dict["SnmpPrivacyProtocol"] as? String {
                self.snmpPrivacyProtocol = value
            }
            if let value = dict["SnmpSecurityLevel"] as? String {
                self.snmpSecurityLevel = value
            }
            if let value = dict["SnmpUsername"] as? String {
                self.snmpUsername = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var clientToken: String?

    public var deviceFormId: String?

    public var deviceParamModelList: [CreateDevicesRequest.DeviceParamModelList]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.deviceParamModelList != nil {
            var tmp : [Any] = []
            for k in self.deviceParamModelList! {
                tmp.append(k.toMap())
            }
            map["DeviceParamModelList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DeviceParamModelList"] as? [Any?] {
            var tmp : [CreateDevicesRequest.DeviceParamModelList] = []
            for v in value {
                if v != nil {
                    var model = CreateDevicesRequest.DeviceParamModelList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deviceParamModelList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateDevicesShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deviceFormId: String?

    public var deviceParamModelListShrink: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.deviceParamModelListShrink != nil {
            map["DeviceParamModelList"] = self.deviceParamModelListShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DeviceParamModelList"] as? String {
            self.deviceParamModelListShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateDevicesResponseBody : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEventDefinitionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var eventName: String?

    public var eventType: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateEventDefinitionResponseBody : Tea.TeaModel {
    public var eventId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEventDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventDefinitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateEventDefinitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMonitorItemRequest : Tea.TeaModel {
    public class AlarmRuleList : Tea.TeaModel {
        public var alarmStatus: String?

        public var expression: String?

        public var value: String?

        public var variable: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.variable != nil {
                map["Variable"] = self.variable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Variable"] as? String {
                self.variable = value
            }
        }
    }
    public var alarmRuleList: [CreateMonitorItemRequest.AlarmRuleList]?

    public var analysisCode: String?

    public var clientToken: String?

    public var collectionType: String?

    public var config: String?

    public var dataItem: String?

    public var deviceForm: String?

    public var effective: Int32?

    public var execInterval: Int32?

    public var instanceId: String?

    public var monitorItemDescription: String?

    public var monitorItemName: String?

    public var securityDomain: String?

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
        if self.alarmRuleList != nil {
            var tmp : [Any] = []
            for k in self.alarmRuleList! {
                tmp.append(k.toMap())
            }
            map["AlarmRuleList"] = tmp
        }
        if self.analysisCode != nil {
            map["AnalysisCode"] = self.analysisCode!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.collectionType != nil {
            map["CollectionType"] = self.collectionType!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.dataItem != nil {
            map["DataItem"] = self.dataItem!
        }
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm!
        }
        if self.effective != nil {
            map["Effective"] = self.effective!
        }
        if self.execInterval != nil {
            map["ExecInterval"] = self.execInterval!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.monitorItemDescription != nil {
            map["MonitorItemDescription"] = self.monitorItemDescription!
        }
        if self.monitorItemName != nil {
            map["MonitorItemName"] = self.monitorItemName!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmRuleList"] as? [Any?] {
            var tmp : [CreateMonitorItemRequest.AlarmRuleList] = []
            for v in value {
                if v != nil {
                    var model = CreateMonitorItemRequest.AlarmRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alarmRuleList = tmp
        }
        if let value = dict["AnalysisCode"] as? String {
            self.analysisCode = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CollectionType"] as? String {
            self.collectionType = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DataItem"] as? String {
            self.dataItem = value
        }
        if let value = dict["DeviceForm"] as? String {
            self.deviceForm = value
        }
        if let value = dict["Effective"] as? Int32 {
            self.effective = value
        }
        if let value = dict["ExecInterval"] as? Int32 {
            self.execInterval = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MonitorItemDescription"] as? String {
            self.monitorItemDescription = value
        }
        if let value = dict["MonitorItemName"] as? String {
            self.monitorItemName = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateMonitorItemShrinkRequest : Tea.TeaModel {
    public var alarmRuleListShrink: String?

    public var analysisCode: String?

    public var clientToken: String?

    public var collectionType: String?

    public var config: String?

    public var dataItem: String?

    public var deviceForm: String?

    public var effective: Int32?

    public var execInterval: Int32?

    public var instanceId: String?

    public var monitorItemDescription: String?

    public var monitorItemName: String?

    public var securityDomain: String?

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
        if self.alarmRuleListShrink != nil {
            map["AlarmRuleList"] = self.alarmRuleListShrink!
        }
        if self.analysisCode != nil {
            map["AnalysisCode"] = self.analysisCode!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.collectionType != nil {
            map["CollectionType"] = self.collectionType!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.dataItem != nil {
            map["DataItem"] = self.dataItem!
        }
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm!
        }
        if self.effective != nil {
            map["Effective"] = self.effective!
        }
        if self.execInterval != nil {
            map["ExecInterval"] = self.execInterval!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.monitorItemDescription != nil {
            map["MonitorItemDescription"] = self.monitorItemDescription!
        }
        if self.monitorItemName != nil {
            map["MonitorItemName"] = self.monitorItemName!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmRuleList"] as? String {
            self.alarmRuleListShrink = value
        }
        if let value = dict["AnalysisCode"] as? String {
            self.analysisCode = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CollectionType"] as? String {
            self.collectionType = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DataItem"] as? String {
            self.dataItem = value
        }
        if let value = dict["DeviceForm"] as? String {
            self.deviceForm = value
        }
        if let value = dict["Effective"] as? Int32 {
            self.effective = value
        }
        if let value = dict["ExecInterval"] as? Int32 {
            self.execInterval = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MonitorItemDescription"] as? String {
            self.monitorItemDescription = value
        }
        if let value = dict["MonitorItemName"] as? String {
            self.monitorItemName = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateMonitorItemResponseBody : Tea.TeaModel {
    public var monitorItemId: String?

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
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMonitorItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMonitorItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMonitorItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOsVersionRequest : Tea.TeaModel {
    public var bootPatch: String?

    public var clientToken: String?

    public var createTime: String?

    public var featurePatch: String?

    public var fileName: String?

    public var filePath: String?

    public var instanceId: String?

    public var model: String?

    public var osVersion: String?

    public var status: String?

    public var systemPatch: String?

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
        if self.bootPatch != nil {
            map["BootPatch"] = self.bootPatch!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.featurePatch != nil {
            map["FeaturePatch"] = self.featurePatch!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.systemPatch != nil {
            map["SystemPatch"] = self.systemPatch!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BootPatch"] as? String {
            self.bootPatch = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["FeaturePatch"] as? String {
            self.featurePatch = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OsVersion"] as? String {
            self.osVersion = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SystemPatch"] as? String {
            self.systemPatch = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class CreateOsVersionResponseBody : Tea.TeaModel {
    public var osVersionId: String?

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
        if self.osVersionId != nil {
            map["OsVersionId"] = self.osVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OsVersionId"] as? String {
            self.osVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOsVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOsVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePhysicalSpaceRequest : Tea.TeaModel {
    public var address: String?

    public var adminSpace: String?

    public var city: String?

    public var clientToken: String?

    public var country: String?

    public var instanceId: String?

    public var owner: String?

    public var parentUid: String?

    public var physicalSpaceName: String?

    public var province: String?

    public var remark: String?

    public var securityDomainList: [String]?

    public var spaceAbbreviation: String?

    public var spaceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.adminSpace != nil {
            map["AdminSpace"] = self.adminSpace!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityDomainList != nil {
            map["SecurityDomainList"] = self.securityDomainList!
        }
        if self.spaceAbbreviation != nil {
            map["SpaceAbbreviation"] = self.spaceAbbreviation!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AdminSpace"] as? String {
            self.adminSpace = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityDomainList"] as? [String] {
            self.securityDomainList = value
        }
        if let value = dict["SpaceAbbreviation"] as? String {
            self.spaceAbbreviation = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class CreatePhysicalSpaceShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var adminSpace: String?

    public var city: String?

    public var clientToken: String?

    public var country: String?

    public var instanceId: String?

    public var owner: String?

    public var parentUid: String?

    public var physicalSpaceName: String?

    public var province: String?

    public var remark: String?

    public var securityDomainListShrink: String?

    public var spaceAbbreviation: String?

    public var spaceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.adminSpace != nil {
            map["AdminSpace"] = self.adminSpace!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityDomainListShrink != nil {
            map["SecurityDomainList"] = self.securityDomainListShrink!
        }
        if self.spaceAbbreviation != nil {
            map["SpaceAbbreviation"] = self.spaceAbbreviation!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AdminSpace"] as? String {
            self.adminSpace = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityDomainList"] as? String {
            self.securityDomainListShrink = value
        }
        if let value = dict["SpaceAbbreviation"] as? String {
            self.spaceAbbreviation = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class CreatePhysicalSpaceResponseBody : Tea.TeaModel {
    public var physicalSpaceId: String?

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
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePhysicalSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePhysicalSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePhysicalSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRealtimeTaskRequest : Tea.TeaModel {
    public var checkDuplicatePolicy: String?

    public var clientToken: String?

    public var deviceId: String?

    public var instanceId: String?

    public var itemName: String?

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
        if self.checkDuplicatePolicy != nil {
            map["CheckDuplicatePolicy"] = self.checkDuplicatePolicy!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckDuplicatePolicy"] as? String {
            self.checkDuplicatePolicy = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemName"] as? String {
            self.itemName = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
    }
}

public class CreateRealtimeTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateRealtimeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRealtimeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRealtimeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSpaceModelRequest : Tea.TeaModel {
    public class Sort : Tea.TeaModel {
        public var level: Int64?

        public var levelName: String?

        public override init() {
            super.init()
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
                map["Level"] = self.level!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["LevelName"] as? String {
                self.levelName = value
            }
        }
    }
    public var clientToken: String?

    public var instanceId: String?

    public var sort: [CreateSpaceModelRequest.Sort]?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sort != nil {
            var tmp : [Any] = []
            for k in self.sort! {
                tmp.append(k.toMap())
            }
            map["Sort"] = tmp
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Sort"] as? [Any?] {
            var tmp : [CreateSpaceModelRequest.Sort] = []
            for v in value {
                if v != nil {
                    var model = CreateSpaceModelRequest.Sort()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sort = tmp
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class CreateSpaceModelShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var sortShrink: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class CreateSpaceModelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var spaceModelId: String?

    public override init() {
        super.init()
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
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
    }
}

public class CreateSpaceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSpaceModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSpaceModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var params: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTimePeriodRequest : Tea.TeaModel {
    public var clientToken: String?

    public var expression: String?

    public var instanceId: String?

    public var timePeriodDescription: String?

    public var timePeriodName: String?

    public override init() {
        super.init()
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
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.timePeriodDescription != nil {
            map["TimePeriodDescription"] = self.timePeriodDescription!
        }
        if self.timePeriodName != nil {
            map["TimePeriodName"] = self.timePeriodName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TimePeriodDescription"] as? String {
            self.timePeriodDescription = value
        }
        if let value = dict["TimePeriodName"] as? String {
            self.timePeriodName = value
        }
    }
}

public class CreateTimePeriodResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var timePeriodId: String?

    public override init() {
        super.init()
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
        if self.timePeriodId != nil {
            map["TimePeriodId"] = self.timePeriodId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimePeriodId"] as? String {
            self.timePeriodId = value
        }
    }
}

public class CreateTimePeriodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTimePeriodResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTimePeriodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDedicatedLineRequest : Tea.TeaModel {
    public var dedicatedLineId: String?

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
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDedicatedLineResponseBody : Tea.TeaModel {
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

public class DeleteDedicatedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDedicatedLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDedicatedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeliveryArchVersionRequest : Tea.TeaModel {
    public var deliveryArchVersionId: String?

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
        if self.deliveryArchVersionId != nil {
            map["DeliveryArchVersionId"] = self.deliveryArchVersionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryArchVersionId"] as? String {
            self.deliveryArchVersionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDeliveryArchVersionResponseBody : Tea.TeaModel {
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

public class DeleteDeliveryArchVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeliveryArchVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDeliveryArchVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDeviceResponseBody : Tea.TeaModel {
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

public class DeleteDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeviceFormRequest : Tea.TeaModel {
    public var deviceFormId: String?

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
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDeviceFormResponseBody : Tea.TeaModel {
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

public class DeleteDeviceFormResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeviceFormResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDeviceFormResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDevicePropertyRequest : Tea.TeaModel {
    public var devicePropertyId: String?

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
        if self.devicePropertyId != nil {
            map["DevicePropertyId"] = self.devicePropertyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DevicePropertyId"] as? String {
            self.devicePropertyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDevicePropertyResponseBody : Tea.TeaModel {
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

public class DeleteDevicePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDevicePropertyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDevicePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDevicesRequest : Tea.TeaModel {
    public var deviceIds: [String]?

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
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? [String] {
            self.deviceIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDevicesShrinkRequest : Tea.TeaModel {
    public var deviceIdsShrink: String?

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
        if self.deviceIdsShrink != nil {
            map["DeviceIds"] = self.deviceIdsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? String {
            self.deviceIdsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDevicesResponseBody : Tea.TeaModel {
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

public class DeleteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEventDefinitionRequest : Tea.TeaModel {
    public var eventId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteEventDefinitionResponseBody : Tea.TeaModel {
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

public class DeleteEventDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventDefinitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteEventDefinitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOsVersionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var osVersionId: String?

    public override init() {
        super.init()
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
        if self.osVersionId != nil {
            map["OsVersionId"] = self.osVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OsVersionId"] as? String {
            self.osVersionId = value
        }
    }
}

public class DeleteOsVersionResponseBody : Tea.TeaModel {
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

public class DeleteOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOsVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteOsVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePhysicalSpaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
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
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class DeletePhysicalSpaceResponseBody : Tea.TeaModel {
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

public class DeletePhysicalSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePhysicalSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePhysicalSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSpaceModelRequest : Tea.TeaModel {
    public var instanceId: String?

    public var spaceModelId: String?

    public override init() {
        super.init()
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
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
    }
}

public class DeleteSpaceModelResponseBody : Tea.TeaModel {
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

public class DeleteSpaceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSpaceModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSpaceModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableNotificationRequest : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var aggregateDataId: String?

        public var appId: String?

        public var dedicatedLineId: String?

        public var deviceId: String?

        public var eventId: String?

        public var eventObjectId: String?

        public var monitorItemId: String?

        public var portCollectionId: String?

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
            if self.aggregateDataId != nil {
                map["AggregateDataId"] = self.aggregateDataId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventObjectId != nil {
                map["EventObjectId"] = self.eventObjectId!
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.portCollectionId != nil {
                map["PortCollectionId"] = self.portCollectionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AggregateDataId"] as? String {
                self.aggregateDataId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["EventObjectId"] as? String {
                self.eventObjectId = value
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["PortCollectionId"] as? String {
                self.portCollectionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var expiryTime: String?

    public var instanceId: String?

    public var list: [DisableNotificationRequest.List]?

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
        if self.expiryTime != nil {
            map["ExpiryTime"] = self.expiryTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpiryTime"] as? String {
            self.expiryTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DisableNotificationRequest.List] = []
            for v in value {
                if v != nil {
                    var model = DisableNotificationRequest.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
    }
}

public class DisableNotificationShrinkRequest : Tea.TeaModel {
    public var expiryTime: String?

    public var instanceId: String?

    public var listShrink: String?

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
        if self.expiryTime != nil {
            map["ExpiryTime"] = self.expiryTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.listShrink != nil {
            map["List"] = self.listShrink!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpiryTime"] as? String {
            self.expiryTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["List"] as? String {
            self.listShrink = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
    }
}

public class DisableNotificationResponseBody : Tea.TeaModel {
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

public class DisableNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableNotificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableNotificationRequest : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var aggregateDataId: String?

        public var appId: String?

        public var dedicatedLineId: String?

        public var deviceId: String?

        public var eventId: String?

        public var eventObjectId: String?

        public var monitorItemId: String?

        public var portCollectionId: String?

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
            if self.aggregateDataId != nil {
                map["AggregateDataId"] = self.aggregateDataId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventObjectId != nil {
                map["EventObjectId"] = self.eventObjectId!
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.portCollectionId != nil {
                map["PortCollectionId"] = self.portCollectionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AggregateDataId"] as? String {
                self.aggregateDataId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["EventObjectId"] as? String {
                self.eventObjectId = value
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["PortCollectionId"] as? String {
                self.portCollectionId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var instanceId: String?

    public var list: [EnableNotificationRequest.List]?

    public override init() {
        super.init()
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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [EnableNotificationRequest.List] = []
            for v in value {
                if v != nil {
                    var model = EnableNotificationRequest.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
    }
}

public class EnableNotificationShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var listShrink: String?

    public override init() {
        super.init()
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
        if self.listShrink != nil {
            map["List"] = self.listShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["List"] as? String {
            self.listShrink = value
        }
    }
}

public class EnableNotificationResponseBody : Tea.TeaModel {
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

public class EnableNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableNotificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlarmStatusRequest : Tea.TeaModel {
    public var aggregateDataId: String?

    public var appId: String?

    public var dedicatedLineId: String?

    public var deviceId: String?

    public var instanceId: String?

    public var monitorItemId: String?

    public var portCollectionId: String?

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
        if self.aggregateDataId != nil {
            map["AggregateDataId"] = self.aggregateDataId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataId"] as? String {
            self.aggregateDataId = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetAlarmStatusResponseBody : Tea.TeaModel {
    public class AlarmStatus : Tea.TeaModel {
        public class AggregateData : Tea.TeaModel {
            public var aggregateDataDescription: String?

            public var aggregateDataId: String?

            public var aggregateDataName: String?

            public var aggregateMode: String?

            public var dataItem: String?

            public var deviceId: String?

            public var isAllDevice: Int32?

            public var monitorItemId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aggregateDataDescription != nil {
                    map["AggregateDataDescription"] = self.aggregateDataDescription!
                }
                if self.aggregateDataId != nil {
                    map["AggregateDataId"] = self.aggregateDataId!
                }
                if self.aggregateDataName != nil {
                    map["AggregateDataName"] = self.aggregateDataName!
                }
                if self.aggregateMode != nil {
                    map["AggregateMode"] = self.aggregateMode!
                }
                if self.dataItem != nil {
                    map["DataItem"] = self.dataItem!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.isAllDevice != nil {
                    map["IsAllDevice"] = self.isAllDevice!
                }
                if self.monitorItemId != nil {
                    map["MonitorItemId"] = self.monitorItemId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AggregateDataDescription"] as? String {
                    self.aggregateDataDescription = value
                }
                if let value = dict["AggregateDataId"] as? String {
                    self.aggregateDataId = value
                }
                if let value = dict["AggregateDataName"] as? String {
                    self.aggregateDataName = value
                }
                if let value = dict["AggregateMode"] as? String {
                    self.aggregateMode = value
                }
                if let value = dict["DataItem"] as? String {
                    self.dataItem = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["IsAllDevice"] as? Int32 {
                    self.isAllDevice = value
                }
                if let value = dict["MonitorItemId"] as? String {
                    self.monitorItemId = value
                }
            }
        }
        public class DedicatedLine : Tea.TeaModel {
            public var bandwidth: String?

            public var dedicatedLineGateway: String?

            public var dedicatedLineName: String?

            public var deviceId: String?

            public var ip: String?

            public var portName: String?

            public var space: String?

            public override init() {
                super.init()
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
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.dedicatedLineGateway != nil {
                    map["DedicatedLineGateway"] = self.dedicatedLineGateway!
                }
                if self.dedicatedLineName != nil {
                    map["DedicatedLineName"] = self.dedicatedLineName!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.portName != nil {
                    map["PortName"] = self.portName!
                }
                if self.space != nil {
                    map["Space"] = self.space!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bandwidth"] as? String {
                    self.bandwidth = value
                }
                if let value = dict["DedicatedLineGateway"] as? String {
                    self.dedicatedLineGateway = value
                }
                if let value = dict["DedicatedLineName"] as? String {
                    self.dedicatedLineName = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["PortName"] as? String {
                    self.portName = value
                }
                if let value = dict["Space"] as? String {
                    self.space = value
                }
            }
        }
        public class MonitorItem : Tea.TeaModel {
            public var collectionType: String?

            public var deviceForm: String?

            public var effective: Int64?

            public var execInterval: String?

            public var monitorItemDescription: String?

            public var monitorItemId: String?

            public var monitorItemName: String?

            public var securityDomain: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.collectionType != nil {
                    map["CollectionType"] = self.collectionType!
                }
                if self.deviceForm != nil {
                    map["DeviceForm"] = self.deviceForm!
                }
                if self.effective != nil {
                    map["Effective"] = self.effective!
                }
                if self.execInterval != nil {
                    map["ExecInterval"] = self.execInterval!
                }
                if self.monitorItemDescription != nil {
                    map["MonitorItemDescription"] = self.monitorItemDescription!
                }
                if self.monitorItemId != nil {
                    map["MonitorItemId"] = self.monitorItemId!
                }
                if self.monitorItemName != nil {
                    map["MonitorItemName"] = self.monitorItemName!
                }
                if self.securityDomain != nil {
                    map["SecurityDomain"] = self.securityDomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CollectionType"] as? String {
                    self.collectionType = value
                }
                if let value = dict["DeviceForm"] as? String {
                    self.deviceForm = value
                }
                if let value = dict["Effective"] as? Int64 {
                    self.effective = value
                }
                if let value = dict["ExecInterval"] as? String {
                    self.execInterval = value
                }
                if let value = dict["MonitorItemDescription"] as? String {
                    self.monitorItemDescription = value
                }
                if let value = dict["MonitorItemId"] as? String {
                    self.monitorItemId = value
                }
                if let value = dict["MonitorItemName"] as? String {
                    self.monitorItemName = value
                }
                if let value = dict["SecurityDomain"] as? String {
                    self.securityDomain = value
                }
            }
        }
        public class NotificationSwitch : Tea.TeaModel {
            public var expiryTime: String?

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
                if self.expiryTime != nil {
                    map["ExpiryTime"] = self.expiryTime!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExpiryTime"] as? String {
                    self.expiryTime = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public class PortCollection : Tea.TeaModel {
            public class PortList : Tea.TeaModel {
                public class ResourceDevice : Tea.TeaModel {
                    public var hostName: String?

                    public var ip: String?

                    public var securityDomain: String?

                    public override init() {
                        super.init()
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
                        if self.ip != nil {
                            map["Ip"] = self.ip!
                        }
                        if self.securityDomain != nil {
                            map["SecurityDomain"] = self.securityDomain!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HostName"] as? String {
                            self.hostName = value
                        }
                        if let value = dict["Ip"] as? String {
                            self.ip = value
                        }
                        if let value = dict["SecurityDomain"] as? String {
                            self.securityDomain = value
                        }
                    }
                }
                public var deviceId: String?

                public var portName: String?

                public var resourceDevice: GetAlarmStatusResponseBody.AlarmStatus.PortCollection.PortList.ResourceDevice?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.resourceDevice?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deviceId != nil {
                        map["DeviceId"] = self.deviceId!
                    }
                    if self.portName != nil {
                        map["PortName"] = self.portName!
                    }
                    if self.resourceDevice != nil {
                        map["ResourceDevice"] = self.resourceDevice?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DeviceId"] as? String {
                        self.deviceId = value
                    }
                    if let value = dict["PortName"] as? String {
                        self.portName = value
                    }
                    if let value = dict["ResourceDevice"] as? [String: Any?] {
                        var model = GetAlarmStatusResponseBody.AlarmStatus.PortCollection.PortList.ResourceDevice()
                        model.fromMap(value)
                        self.resourceDevice = model
                    }
                }
            }
            public var portCollectionDescription: String?

            public var portCollectionId: String?

            public var portCollectionName: String?

            public var portList: [GetAlarmStatusResponseBody.AlarmStatus.PortCollection.PortList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.portCollectionDescription != nil {
                    map["PortCollectionDescription"] = self.portCollectionDescription!
                }
                if self.portCollectionId != nil {
                    map["PortCollectionId"] = self.portCollectionId!
                }
                if self.portCollectionName != nil {
                    map["PortCollectionName"] = self.portCollectionName!
                }
                if self.portList != nil {
                    var tmp : [Any] = []
                    for k in self.portList! {
                        tmp.append(k.toMap())
                    }
                    map["PortList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PortCollectionDescription"] as? String {
                    self.portCollectionDescription = value
                }
                if let value = dict["PortCollectionId"] as? String {
                    self.portCollectionId = value
                }
                if let value = dict["PortCollectionName"] as? String {
                    self.portCollectionName = value
                }
                if let value = dict["PortList"] as? [Any?] {
                    var tmp : [GetAlarmStatusResponseBody.AlarmStatus.PortCollection.PortList] = []
                    for v in value {
                        if v != nil {
                            var model = GetAlarmStatusResponseBody.AlarmStatus.PortCollection.PortList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.portList = tmp
                }
            }
        }
        public class ResourceApp : Tea.TeaModel {
            public var appId: String?

            public var domain: String?

            public var port: String?

            public var securityDomain: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.securityDomain != nil {
                    map["SecurityDomain"] = self.securityDomain!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["SecurityDomain"] as? String {
                    self.securityDomain = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class ResourceDevice : Tea.TeaModel {
            public var deviceForm: String?

            public var deviceId: String?

            public var hostName: String?

            public var ip: String?

            public var model: String?

            public var securityDomain: String?

            public var sn: String?

            public var space: String?

            public var status: String?

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
                if self.deviceForm != nil {
                    map["DeviceForm"] = self.deviceForm!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.securityDomain != nil {
                    map["SecurityDomain"] = self.securityDomain!
                }
                if self.sn != nil {
                    map["Sn"] = self.sn!
                }
                if self.space != nil {
                    map["Space"] = self.space!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceForm"] as? String {
                    self.deviceForm = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["HostName"] as? String {
                    self.hostName = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["SecurityDomain"] as? String {
                    self.securityDomain = value
                }
                if let value = dict["Sn"] as? String {
                    self.sn = value
                }
                if let value = dict["Space"] as? String {
                    self.space = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Vendor"] as? String {
                    self.vendor = value
                }
            }
        }
        public var abnormalDataItem: String?

        public var agentIp: String?

        public var aggregateData: GetAlarmStatusResponseBody.AlarmStatus.AggregateData?

        public var aggregateDataId: String?

        public var alarmRule: String?

        public var alarmStatus: String?

        public var appId: String?

        public var collectionTime: String?

        public var dedicatedLine: GetAlarmStatusResponseBody.AlarmStatus.DedicatedLine?

        public var dedicatedLineId: String?

        public var deviceId: String?

        public var firstAbnormalTime: String?

        public var monitorItem: GetAlarmStatusResponseBody.AlarmStatus.MonitorItem?

        public var monitorItemId: String?

        public var notificationSwitch: GetAlarmStatusResponseBody.AlarmStatus.NotificationSwitch?

        public var portCollection: GetAlarmStatusResponseBody.AlarmStatus.PortCollection?

        public var portCollectionId: String?

        public var receiveTime: String?

        public var resourceApp: GetAlarmStatusResponseBody.AlarmStatus.ResourceApp?

        public var resourceDevice: GetAlarmStatusResponseBody.AlarmStatus.ResourceDevice?

        public var responseCode: String?

        public var result: String?

        public var uniqueKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aggregateData?.validate()
            try self.dedicatedLine?.validate()
            try self.monitorItem?.validate()
            try self.notificationSwitch?.validate()
            try self.portCollection?.validate()
            try self.resourceApp?.validate()
            try self.resourceDevice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalDataItem != nil {
                map["AbnormalDataItem"] = self.abnormalDataItem!
            }
            if self.agentIp != nil {
                map["AgentIp"] = self.agentIp!
            }
            if self.aggregateData != nil {
                map["AggregateData"] = self.aggregateData?.toMap()
            }
            if self.aggregateDataId != nil {
                map["AggregateDataId"] = self.aggregateDataId!
            }
            if self.alarmRule != nil {
                map["AlarmRule"] = self.alarmRule!
            }
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.collectionTime != nil {
                map["CollectionTime"] = self.collectionTime!
            }
            if self.dedicatedLine != nil {
                map["DedicatedLine"] = self.dedicatedLine?.toMap()
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.firstAbnormalTime != nil {
                map["FirstAbnormalTime"] = self.firstAbnormalTime!
            }
            if self.monitorItem != nil {
                map["MonitorItem"] = self.monitorItem?.toMap()
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.notificationSwitch != nil {
                map["NotificationSwitch"] = self.notificationSwitch?.toMap()
            }
            if self.portCollection != nil {
                map["PortCollection"] = self.portCollection?.toMap()
            }
            if self.portCollectionId != nil {
                map["PortCollectionId"] = self.portCollectionId!
            }
            if self.receiveTime != nil {
                map["ReceiveTime"] = self.receiveTime!
            }
            if self.resourceApp != nil {
                map["ResourceApp"] = self.resourceApp?.toMap()
            }
            if self.resourceDevice != nil {
                map["ResourceDevice"] = self.resourceDevice?.toMap()
            }
            if self.responseCode != nil {
                map["ResponseCode"] = self.responseCode!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.uniqueKey != nil {
                map["UniqueKey"] = self.uniqueKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbnormalDataItem"] as? String {
                self.abnormalDataItem = value
            }
            if let value = dict["AgentIp"] as? String {
                self.agentIp = value
            }
            if let value = dict["AggregateData"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.AggregateData()
                model.fromMap(value)
                self.aggregateData = model
            }
            if let value = dict["AggregateDataId"] as? String {
                self.aggregateDataId = value
            }
            if let value = dict["AlarmRule"] as? String {
                self.alarmRule = value
            }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["CollectionTime"] as? String {
                self.collectionTime = value
            }
            if let value = dict["DedicatedLine"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.DedicatedLine()
                model.fromMap(value)
                self.dedicatedLine = model
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["FirstAbnormalTime"] as? String {
                self.firstAbnormalTime = value
            }
            if let value = dict["MonitorItem"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.MonitorItem()
                model.fromMap(value)
                self.monitorItem = model
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["NotificationSwitch"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.NotificationSwitch()
                model.fromMap(value)
                self.notificationSwitch = model
            }
            if let value = dict["PortCollection"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.PortCollection()
                model.fromMap(value)
                self.portCollection = model
            }
            if let value = dict["PortCollectionId"] as? String {
                self.portCollectionId = value
            }
            if let value = dict["ReceiveTime"] as? String {
                self.receiveTime = value
            }
            if let value = dict["ResourceApp"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.ResourceApp()
                model.fromMap(value)
                self.resourceApp = model
            }
            if let value = dict["ResourceDevice"] as? [String: Any?] {
                var model = GetAlarmStatusResponseBody.AlarmStatus.ResourceDevice()
                model.fromMap(value)
                self.resourceDevice = model
            }
            if let value = dict["ResponseCode"] as? String {
                self.responseCode = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["UniqueKey"] as? String {
                self.uniqueKey = value
            }
        }
    }
    public var alarmStatus: GetAlarmStatusResponseBody.AlarmStatus?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarmStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? [String: Any?] {
            var model = GetAlarmStatusResponseBody.AlarmStatus()
            model.fromMap(value)
            self.alarmStatus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAlarmStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlarmStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAlarmStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDedicatedLineRequest : Tea.TeaModel {
    public var dedicatedLineId: String?

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
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetDedicatedLineResponseBody : Tea.TeaModel {
    public class DedicatedLine : Tea.TeaModel {
        public var bandwidth: Int32?

        public var dedicatedLineGateway: String?

        public var dedicatedLineId: String?

        public var dedicatedLineIp: String?

        public var dedicatedLineRole: String?

        public var description_: String?

        public var deviceId: String?

        public var deviceName: String?

        public var devicePort: String?

        public var isp: String?

        public var physicalSpaceId: String?

        public override init() {
            super.init()
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
                map["Bandwidth"] = self.bandwidth!
            }
            if self.dedicatedLineGateway != nil {
                map["DedicatedLineGateway"] = self.dedicatedLineGateway!
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.dedicatedLineIp != nil {
                map["DedicatedLineIp"] = self.dedicatedLineIp!
            }
            if self.dedicatedLineRole != nil {
                map["DedicatedLineRole"] = self.dedicatedLineRole!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.devicePort != nil {
                map["DevicePort"] = self.devicePort!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["DedicatedLineGateway"] as? String {
                self.dedicatedLineGateway = value
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DedicatedLineIp"] as? String {
                self.dedicatedLineIp = value
            }
            if let value = dict["DedicatedLineRole"] as? String {
                self.dedicatedLineRole = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["DevicePort"] as? String {
                self.devicePort = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
        }
    }
    public var dedicatedLine: GetDedicatedLineResponseBody.DedicatedLine?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dedicatedLine?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedLine != nil {
            map["DedicatedLine"] = self.dedicatedLine?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedLine"] as? [String: Any?] {
            var model = GetDedicatedLineResponseBody.DedicatedLine()
            model.fromMap(value)
            self.dedicatedLine = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDedicatedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDedicatedLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDedicatedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetDeviceResponseBody : Tea.TeaModel {
    public class Device : Tea.TeaModel {
        public var deviceFormId: String?

        public var deviceFormName: String?

        public var deviceId: String?

        public var enablePassword: String?

        public var extAttributes: String?

        public var hostName: String?

        public var ip: String?

        public var loginPassword: String?

        public var loginType: String?

        public var loginUsername: String?

        public var mac: String?

        public var model: String?

        public var physicalSpaceId: String?

        public var physicalSpaceName: String?

        public var securityDomain: String?

        public var serviceStatus: String?

        public var sn: String?

        public var snmpAccountType: String?

        public var snmpAccountVersion: String?

        public var snmpAuthPassphrase: String?

        public var snmpAuthProtocol: String?

        public var snmpCommunity: String?

        public var snmpPrivacyPassphrase: String?

        public var snmpPrivacyProtocol: String?

        public var snmpSecurityLevel: String?

        public var snmpUsername: String?

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
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.enablePassword != nil {
                map["EnablePassword"] = self.enablePassword!
            }
            if self.extAttributes != nil {
                map["ExtAttributes"] = self.extAttributes!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.loginType != nil {
                map["LoginType"] = self.loginType!
            }
            if self.loginUsername != nil {
                map["LoginUsername"] = self.loginUsername!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            if self.physicalSpaceName != nil {
                map["PhysicalSpaceName"] = self.physicalSpaceName!
            }
            if self.securityDomain != nil {
                map["SecurityDomain"] = self.securityDomain!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.snmpAccountType != nil {
                map["SnmpAccountType"] = self.snmpAccountType!
            }
            if self.snmpAccountVersion != nil {
                map["SnmpAccountVersion"] = self.snmpAccountVersion!
            }
            if self.snmpAuthPassphrase != nil {
                map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
            }
            if self.snmpAuthProtocol != nil {
                map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
            }
            if self.snmpCommunity != nil {
                map["SnmpCommunity"] = self.snmpCommunity!
            }
            if self.snmpPrivacyPassphrase != nil {
                map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
            }
            if self.snmpPrivacyProtocol != nil {
                map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
            }
            if self.snmpSecurityLevel != nil {
                map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
            }
            if self.snmpUsername != nil {
                map["SnmpUsername"] = self.snmpUsername!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["EnablePassword"] as? String {
                self.enablePassword = value
            }
            if let value = dict["ExtAttributes"] as? String {
                self.extAttributes = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["LoginType"] as? String {
                self.loginType = value
            }
            if let value = dict["LoginUsername"] as? String {
                self.loginUsername = value
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
            if let value = dict["PhysicalSpaceName"] as? String {
                self.physicalSpaceName = value
            }
            if let value = dict["SecurityDomain"] as? String {
                self.securityDomain = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["SnmpAccountType"] as? String {
                self.snmpAccountType = value
            }
            if let value = dict["SnmpAccountVersion"] as? String {
                self.snmpAccountVersion = value
            }
            if let value = dict["SnmpAuthPassphrase"] as? String {
                self.snmpAuthPassphrase = value
            }
            if let value = dict["SnmpAuthProtocol"] as? String {
                self.snmpAuthProtocol = value
            }
            if let value = dict["SnmpCommunity"] as? String {
                self.snmpCommunity = value
            }
            if let value = dict["SnmpPrivacyPassphrase"] as? String {
                self.snmpPrivacyPassphrase = value
            }
            if let value = dict["SnmpPrivacyProtocol"] as? String {
                self.snmpPrivacyProtocol = value
            }
            if let value = dict["SnmpSecurityLevel"] as? String {
                self.snmpSecurityLevel = value
            }
            if let value = dict["SnmpUsername"] as? String {
                self.snmpUsername = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var device: GetDeviceResponseBody.Device?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.device?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Device"] as? [String: Any?] {
            var model = GetDeviceResponseBody.Device()
            model.fromMap(value)
            self.device = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceConfigRequest : Tea.TeaModel {
    public var date: String?

    public var deviceId: String?

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
        if self.date != nil {
            map["Date"] = self.date!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Date"] as? String {
            self.date = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetDeviceConfigResponseBody : Tea.TeaModel {
    public var deviceConfig: String?

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
        if self.deviceConfig != nil {
            map["DeviceConfig"] = self.deviceConfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceConfig"] as? String {
            self.deviceConfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeviceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceConfigDateRequest : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetDeviceConfigDateResponseBody : Tea.TeaModel {
    public var deviceConfigDate: [String]?

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
        if self.deviceConfigDate != nil {
            map["DeviceConfigDate"] = self.deviceConfigDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceConfigDate"] as? [String] {
            self.deviceConfigDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeviceConfigDateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceConfigDateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceConfigDateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceConfigDiffRequest : Tea.TeaModel {
    public var deviceId: String?

    public var endDate: String?

    public var instanceId: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetDeviceConfigDiffResponseBody : Tea.TeaModel {
    public class DeviceConfigDiff : Tea.TeaModel {
        public var extractDiff: String?

        public var totalDiff: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extractDiff != nil {
                map["ExtractDiff"] = self.extractDiff!
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtractDiff"] as? String {
                self.extractDiff = value
            }
            if let value = dict["TotalDiff"] as? String {
                self.totalDiff = value
            }
        }
    }
    public var deviceConfigDiff: GetDeviceConfigDiffResponseBody.DeviceConfigDiff?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceConfigDiff?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceConfigDiff != nil {
            map["DeviceConfigDiff"] = self.deviceConfigDiff?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceConfigDiff"] as? [String: Any?] {
            var model = GetDeviceConfigDiffResponseBody.DeviceConfigDiff()
            model.fromMap(value)
            self.deviceConfigDiff = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeviceConfigDiffResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceConfigDiffResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceConfigDiffResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceFormRequest : Tea.TeaModel {
    public var deviceFormId: String?

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
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetDeviceFormResponseBody : Tea.TeaModel {
    public class DeviceForm : Tea.TeaModel {
        public class AttributeList : Tea.TeaModel {
            public var attributeBuiltIn: Bool?

            public var attributeFormat: String?

            public var attributeFuzzyQuery: Bool?

            public var attributeKey: String?

            public var attributeName: String?

            public var attributePlaceholder: String?

            public var attributeQuery: Bool?

            public var attributeReference: String?

            public var attributeRequirement: Bool?

            public var attributeSequence: Int32?

            public var attributeTableDisplay: Bool?

            public var attributeType: String?

            public var attributeUniqueness: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributeBuiltIn != nil {
                    map["AttributeBuiltIn"] = self.attributeBuiltIn!
                }
                if self.attributeFormat != nil {
                    map["AttributeFormat"] = self.attributeFormat!
                }
                if self.attributeFuzzyQuery != nil {
                    map["AttributeFuzzyQuery"] = self.attributeFuzzyQuery!
                }
                if self.attributeKey != nil {
                    map["AttributeKey"] = self.attributeKey!
                }
                if self.attributeName != nil {
                    map["AttributeName"] = self.attributeName!
                }
                if self.attributePlaceholder != nil {
                    map["AttributePlaceholder"] = self.attributePlaceholder!
                }
                if self.attributeQuery != nil {
                    map["AttributeQuery"] = self.attributeQuery!
                }
                if self.attributeReference != nil {
                    map["AttributeReference"] = self.attributeReference!
                }
                if self.attributeRequirement != nil {
                    map["AttributeRequirement"] = self.attributeRequirement!
                }
                if self.attributeSequence != nil {
                    map["AttributeSequence"] = self.attributeSequence!
                }
                if self.attributeTableDisplay != nil {
                    map["AttributeTableDisplay"] = self.attributeTableDisplay!
                }
                if self.attributeType != nil {
                    map["AttributeType"] = self.attributeType!
                }
                if self.attributeUniqueness != nil {
                    map["AttributeUniqueness"] = self.attributeUniqueness!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttributeBuiltIn"] as? Bool {
                    self.attributeBuiltIn = value
                }
                if let value = dict["AttributeFormat"] as? String {
                    self.attributeFormat = value
                }
                if let value = dict["AttributeFuzzyQuery"] as? Bool {
                    self.attributeFuzzyQuery = value
                }
                if let value = dict["AttributeKey"] as? String {
                    self.attributeKey = value
                }
                if let value = dict["AttributeName"] as? String {
                    self.attributeName = value
                }
                if let value = dict["AttributePlaceholder"] as? String {
                    self.attributePlaceholder = value
                }
                if let value = dict["AttributeQuery"] as? Bool {
                    self.attributeQuery = value
                }
                if let value = dict["AttributeReference"] as? String {
                    self.attributeReference = value
                }
                if let value = dict["AttributeRequirement"] as? Bool {
                    self.attributeRequirement = value
                }
                if let value = dict["AttributeSequence"] as? Int32 {
                    self.attributeSequence = value
                }
                if let value = dict["AttributeTableDisplay"] as? Bool {
                    self.attributeTableDisplay = value
                }
                if let value = dict["AttributeType"] as? String {
                    self.attributeType = value
                }
                if let value = dict["AttributeUniqueness"] as? Bool {
                    self.attributeUniqueness = value
                }
            }
        }
        public var accountConfig: Bool?

        public var attributeList: [GetDeviceFormResponseBody.DeviceForm.AttributeList]?

        public var configCompare: Bool?

        public var detailDisplay: Bool?

        public var deviceFormId: String?

        public var deviceFormName: String?

        public var formBuiltIn: Bool?

        public var resourceUse: String?

        public var script: String?

        public var uniqueKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountConfig != nil {
                map["AccountConfig"] = self.accountConfig!
            }
            if self.attributeList != nil {
                var tmp : [Any] = []
                for k in self.attributeList! {
                    tmp.append(k.toMap())
                }
                map["AttributeList"] = tmp
            }
            if self.configCompare != nil {
                map["ConfigCompare"] = self.configCompare!
            }
            if self.detailDisplay != nil {
                map["DetailDisplay"] = self.detailDisplay!
            }
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.formBuiltIn != nil {
                map["FormBuiltIn"] = self.formBuiltIn!
            }
            if self.resourceUse != nil {
                map["ResourceUse"] = self.resourceUse!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            if self.uniqueKey != nil {
                map["UniqueKey"] = self.uniqueKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountConfig"] as? Bool {
                self.accountConfig = value
            }
            if let value = dict["AttributeList"] as? [Any?] {
                var tmp : [GetDeviceFormResponseBody.DeviceForm.AttributeList] = []
                for v in value {
                    if v != nil {
                        var model = GetDeviceFormResponseBody.DeviceForm.AttributeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributeList = tmp
            }
            if let value = dict["ConfigCompare"] as? Bool {
                self.configCompare = value
            }
            if let value = dict["DetailDisplay"] as? Bool {
                self.detailDisplay = value
            }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["FormBuiltIn"] as? Bool {
                self.formBuiltIn = value
            }
            if let value = dict["ResourceUse"] as? String {
                self.resourceUse = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
            if let value = dict["UniqueKey"] as? String {
                self.uniqueKey = value
            }
        }
    }
    public var deviceForm: GetDeviceFormResponseBody.DeviceForm?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceForm?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceForm"] as? [String: Any?] {
            var model = GetDeviceFormResponseBody.DeviceForm()
            model.fromMap(value)
            self.deviceForm = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeviceFormResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceFormResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceFormResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeviceOpLogRequest : Tea.TeaModel {
    public var deviceId: String?

    public var instanceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetDeviceOpLogResponseBody : Tea.TeaModel {
    public class OperationLogs : Tea.TeaModel {
        public var deviceId: String?

        public var gmtModifiedTime: String?

        public var keyword: String?

        public var newValue: String?

        public var oldValue: String?

        public var operator_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            if self.newValue != nil {
                map["NewValue"] = self.newValue!
            }
            if self.oldValue != nil {
                map["OldValue"] = self.oldValue!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Keyword"] as? String {
                self.keyword = value
            }
            if let value = dict["NewValue"] as? String {
                self.newValue = value
            }
            if let value = dict["OldValue"] as? String {
                self.oldValue = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: Int32?

    public var operationLogs: [GetDeviceOpLogResponseBody.OperationLogs]?

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
        if self.operationLogs != nil {
            var tmp : [Any] = []
            for k in self.operationLogs! {
                tmp.append(k.toMap())
            }
            map["OperationLogs"] = tmp
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
        if let value = dict["NextToken"] as? Int32 {
            self.nextToken = value
        }
        if let value = dict["OperationLogs"] as? [Any?] {
            var tmp : [GetDeviceOpLogResponseBody.OperationLogs] = []
            for v in value {
                if v != nil {
                    var model = GetDeviceOpLogResponseBody.OperationLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.operationLogs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetDeviceOpLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceOpLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDeviceOpLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDevicePropertyRequest : Tea.TeaModel {
    public var deviceFormId: String?

    public var devicePropertyId: String?

    public var instanceId: String?

    public var propertyKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.devicePropertyId != nil {
            map["DevicePropertyId"] = self.devicePropertyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DevicePropertyId"] as? String {
            self.devicePropertyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PropertyKey"] as? String {
            self.propertyKey = value
        }
    }
}

public class GetDevicePropertyResponseBody : Tea.TeaModel {
    public class DeviceProperty : Tea.TeaModel {
        public var builtIn: Bool?

        public var deviceFormId: String?

        public var deviceFormName: String?

        public var devicePropertyId: String?

        public var propertyContent: String?

        public var propertyFormat: String?

        public var propertyKey: String?

        public var propertyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.builtIn != nil {
                map["BuiltIn"] = self.builtIn!
            }
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.devicePropertyId != nil {
                map["DevicePropertyId"] = self.devicePropertyId!
            }
            if self.propertyContent != nil {
                map["PropertyContent"] = self.propertyContent!
            }
            if self.propertyFormat != nil {
                map["PropertyFormat"] = self.propertyFormat!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyName != nil {
                map["PropertyName"] = self.propertyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuiltIn"] as? Bool {
                self.builtIn = value
            }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["DevicePropertyId"] as? String {
                self.devicePropertyId = value
            }
            if let value = dict["PropertyContent"] as? String {
                self.propertyContent = value
            }
            if let value = dict["PropertyFormat"] as? String {
                self.propertyFormat = value
            }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["PropertyName"] as? String {
                self.propertyName = value
            }
        }
    }
    public var deviceProperty: GetDevicePropertyResponseBody.DeviceProperty?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceProperty?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceProperty != nil {
            map["DeviceProperty"] = self.deviceProperty?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceProperty"] as? [String: Any?] {
            var model = GetDevicePropertyResponseBody.DeviceProperty()
            model.fromMap(value)
            self.deviceProperty = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDevicePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDevicePropertyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDevicePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInspectionTaskRequest : Tea.TeaModel {
    public var deviceId: String?

    public var instanceId: String?

    public var itemName: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemName != nil {
            map["ItemName"] = self.itemName!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemName"] as? String {
            self.itemName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetInspectionTaskResponseBody : Tea.TeaModel {
    public class InspectionTask : Tea.TeaModel {
        public class InspectionAlarmRules : Tea.TeaModel {
            public var actualValue: String?

            public var expression: String?

            public var level: String?

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
                if self.actualValue != nil {
                    map["ActualValue"] = self.actualValue!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualValue"] as? String {
                    self.actualValue = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var deviceDisplay: String?

        public var deviceId: String?

        public var errorCode: String?

        public var executionBeginTime: String?

        public var executionEndTime: String?

        public var hostName: String?

        public var IP: String?

        public var inspectionAlarmRules: [GetInspectionTaskResponseBody.InspectionTask.InspectionAlarmRules]?

        public var inspectionResult: String?

        public var itemId: String?

        public var itemName: String?

        public var model: [String]?

        public var scriptId: String?

        public var space: String?

        public var taskId: String?

        public var taskStatus: String?

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
            if self.deviceDisplay != nil {
                map["DeviceDisplay"] = self.deviceDisplay!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.executionBeginTime != nil {
                map["ExecutionBeginTime"] = self.executionBeginTime!
            }
            if self.executionEndTime != nil {
                map["ExecutionEndTime"] = self.executionEndTime!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.inspectionAlarmRules != nil {
                var tmp : [Any] = []
                for k in self.inspectionAlarmRules! {
                    tmp.append(k.toMap())
                }
                map["InspectionAlarmRules"] = tmp
            }
            if self.inspectionResult != nil {
                map["InspectionResult"] = self.inspectionResult!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.scriptId != nil {
                map["ScriptId"] = self.scriptId!
            }
            if self.space != nil {
                map["Space"] = self.space!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceDisplay"] as? String {
                self.deviceDisplay = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ExecutionBeginTime"] as? String {
                self.executionBeginTime = value
            }
            if let value = dict["ExecutionEndTime"] as? String {
                self.executionEndTime = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["InspectionAlarmRules"] as? [Any?] {
                var tmp : [GetInspectionTaskResponseBody.InspectionTask.InspectionAlarmRules] = []
                for v in value {
                    if v != nil {
                        var model = GetInspectionTaskResponseBody.InspectionTask.InspectionAlarmRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionAlarmRules = tmp
            }
            if let value = dict["InspectionResult"] as? String {
                self.inspectionResult = value
            }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["ItemName"] as? String {
                self.itemName = value
            }
            if let value = dict["Model"] as? [String] {
                self.model = value
            }
            if let value = dict["ScriptId"] as? String {
                self.scriptId = value
            }
            if let value = dict["Space"] as? String {
                self.space = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var inspectionTask: GetInspectionTaskResponseBody.InspectionTask?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.inspectionTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTask != nil {
            map["InspectionTask"] = self.inspectionTask?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTask"] as? [String: Any?] {
            var model = GetInspectionTaskResponseBody.InspectionTask()
            model.fromMap(value)
            self.inspectionTask = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInspectionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMonitorItemRequest : Tea.TeaModel {
    public var instanceId: String?

    public var monitorItemId: String?

    public override init() {
        super.init()
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
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
    }
}

public class GetMonitorItemResponseBody : Tea.TeaModel {
    public class MonitorItem : Tea.TeaModel {
        public class AlarmRuleList : Tea.TeaModel {
            public var alarmStatus: String?

            public var expression: String?

            public var value: String?

            public var variable: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alarmStatus != nil {
                    map["AlarmStatus"] = self.alarmStatus!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.variable != nil {
                    map["Variable"] = self.variable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmStatus"] as? String {
                    self.alarmStatus = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Variable"] as? String {
                    self.variable = value
                }
            }
        }
        public class PersonalizedAlarmRuleList : Tea.TeaModel {
            public var alarmStatus: String?

            public var expression: String?

            public var fieldName: String?

            public var fieldValue: String?

            public var value: String?

            public var variable: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alarmStatus != nil {
                    map["AlarmStatus"] = self.alarmStatus!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.fieldValue != nil {
                    map["FieldValue"] = self.fieldValue!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.variable != nil {
                    map["Variable"] = self.variable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmStatus"] as? String {
                    self.alarmStatus = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["FieldValue"] as? String {
                    self.fieldValue = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Variable"] as? String {
                    self.variable = value
                }
            }
        }
        public var alarmRuleList: [GetMonitorItemResponseBody.MonitorItem.AlarmRuleList]?

        public var analysisCode: String?

        public var collectionType: String?

        public var config: String?

        public var createTime: String?

        public var dataItem: String?

        public var deviceForm: String?

        public var effective: Int32?

        public var execInterval: Int32?

        public var monitorItemDescription: String?

        public var monitorItemId: String?

        public var monitorItemName: String?

        public var personalizedAlarmRuleList: [GetMonitorItemResponseBody.MonitorItem.PersonalizedAlarmRuleList]?

        public var securityDomain: String?

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
            if self.alarmRuleList != nil {
                var tmp : [Any] = []
                for k in self.alarmRuleList! {
                    tmp.append(k.toMap())
                }
                map["AlarmRuleList"] = tmp
            }
            if self.analysisCode != nil {
                map["AnalysisCode"] = self.analysisCode!
            }
            if self.collectionType != nil {
                map["CollectionType"] = self.collectionType!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataItem != nil {
                map["DataItem"] = self.dataItem!
            }
            if self.deviceForm != nil {
                map["DeviceForm"] = self.deviceForm!
            }
            if self.effective != nil {
                map["Effective"] = self.effective!
            }
            if self.execInterval != nil {
                map["ExecInterval"] = self.execInterval!
            }
            if self.monitorItemDescription != nil {
                map["MonitorItemDescription"] = self.monitorItemDescription!
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.monitorItemName != nil {
                map["MonitorItemName"] = self.monitorItemName!
            }
            if self.personalizedAlarmRuleList != nil {
                var tmp : [Any] = []
                for k in self.personalizedAlarmRuleList! {
                    tmp.append(k.toMap())
                }
                map["PersonalizedAlarmRuleList"] = tmp
            }
            if self.securityDomain != nil {
                map["SecurityDomain"] = self.securityDomain!
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
            if let value = dict["AlarmRuleList"] as? [Any?] {
                var tmp : [GetMonitorItemResponseBody.MonitorItem.AlarmRuleList] = []
                for v in value {
                    if v != nil {
                        var model = GetMonitorItemResponseBody.MonitorItem.AlarmRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alarmRuleList = tmp
            }
            if let value = dict["AnalysisCode"] as? String {
                self.analysisCode = value
            }
            if let value = dict["CollectionType"] as? String {
                self.collectionType = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DataItem"] as? String {
                self.dataItem = value
            }
            if let value = dict["DeviceForm"] as? String {
                self.deviceForm = value
            }
            if let value = dict["Effective"] as? Int32 {
                self.effective = value
            }
            if let value = dict["ExecInterval"] as? Int32 {
                self.execInterval = value
            }
            if let value = dict["MonitorItemDescription"] as? String {
                self.monitorItemDescription = value
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["MonitorItemName"] as? String {
                self.monitorItemName = value
            }
            if let value = dict["PersonalizedAlarmRuleList"] as? [Any?] {
                var tmp : [GetMonitorItemResponseBody.MonitorItem.PersonalizedAlarmRuleList] = []
                for v in value {
                    if v != nil {
                        var model = GetMonitorItemResponseBody.MonitorItem.PersonalizedAlarmRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.personalizedAlarmRuleList = tmp
            }
            if let value = dict["SecurityDomain"] as? String {
                self.securityDomain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var monitorItem: GetMonitorItemResponseBody.MonitorItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.monitorItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.monitorItem != nil {
            map["MonitorItem"] = self.monitorItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MonitorItem"] as? [String: Any?] {
            var model = GetMonitorItemResponseBody.MonitorItem()
            model.fromMap(value)
            self.monitorItem = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMonitorItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMonitorItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMonitorItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOsVersionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var osVersionId: String?

    public override init() {
        super.init()
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
        if self.osVersionId != nil {
            map["OsVersionId"] = self.osVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OsVersionId"] as? String {
            self.osVersionId = value
        }
    }
}

public class GetOsVersionResponseBody : Tea.TeaModel {
    public class OsVersion : Tea.TeaModel {
        public var downloadPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadPath != nil {
                map["DownloadPath"] = self.downloadPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadPath"] as? String {
                self.downloadPath = value
            }
        }
    }
    public var osVersion: GetOsVersionResponseBody.OsVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.osVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OsVersion"] as? [String: Any?] {
            var model = GetOsVersionResponseBody.OsVersion()
            model.fromMap(value)
            self.osVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOsVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOsVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssPolicyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetOssPolicyResponseBody : Tea.TeaModel {
    public class OssPolicy : Tea.TeaModel {
        public var accessId: String?

        public var directory: String?

        public var expireTime: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["Directory"] as? String {
                self.directory = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
        }
    }
    public var ossPolicy: GetOssPolicyResponseBody.OssPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossPolicy != nil {
            map["OssPolicy"] = self.ossPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssPolicy"] as? [String: Any?] {
            var model = GetOssPolicyResponseBody.OssPolicy()
            model.fromMap(value)
            self.ossPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOssPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPhysicalSpaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
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
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class GetPhysicalSpaceResponseBody : Tea.TeaModel {
    public class PhysicalSpace : Tea.TeaModel {
        public var address: String?

        public var adminSpace: String?

        public var city: String?

        public var country: String?

        public var owner: String?

        public var physicalSpaceId: String?

        public var physicalSpaceName: String?

        public var province: String?

        public var remark: String?

        public var securityDomainList: [String]?

        public var spaceAbbreviation: String?

        public var spaceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.adminSpace != nil {
                map["AdminSpace"] = self.adminSpace!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            if self.physicalSpaceName != nil {
                map["PhysicalSpaceName"] = self.physicalSpaceName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.securityDomainList != nil {
                map["SecurityDomainList"] = self.securityDomainList!
            }
            if self.spaceAbbreviation != nil {
                map["SpaceAbbreviation"] = self.spaceAbbreviation!
            }
            if self.spaceType != nil {
                map["SpaceType"] = self.spaceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AdminSpace"] as? String {
                self.adminSpace = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
            if let value = dict["PhysicalSpaceName"] as? String {
                self.physicalSpaceName = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SecurityDomainList"] as? [String] {
                self.securityDomainList = value
            }
            if let value = dict["SpaceAbbreviation"] as? String {
                self.spaceAbbreviation = value
            }
            if let value = dict["SpaceType"] as? String {
                self.spaceType = value
            }
        }
    }
    public var physicalSpace: GetPhysicalSpaceResponseBody.PhysicalSpace?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.physicalSpace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.physicalSpace != nil {
            map["PhysicalSpace"] = self.physicalSpace?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PhysicalSpace"] as? [String: Any?] {
            var model = GetPhysicalSpaceResponseBody.PhysicalSpace()
            model.fromMap(value)
            self.physicalSpace = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPhysicalSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPhysicalSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRealtimeTaskRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetRealtimeTaskResponseBody : Tea.TeaModel {
    public class InspectionTask : Tea.TeaModel {
        public var errorCode: String?

        public var inspectionMessage: String?

        public var inspectionResult: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.inspectionMessage != nil {
                map["InspectionMessage"] = self.inspectionMessage!
            }
            if self.inspectionResult != nil {
                map["InspectionResult"] = self.inspectionResult!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InspectionMessage"] as? String {
                self.inspectionMessage = value
            }
            if let value = dict["InspectionResult"] as? String {
                self.inspectionResult = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var inspectionTask: GetRealtimeTaskResponseBody.InspectionTask?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.inspectionTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTask != nil {
            map["InspectionTask"] = self.inspectionTask?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTask"] as? [String: Any?] {
            var model = GetRealtimeTaskResponseBody.InspectionTask()
            model.fromMap(value)
            self.inspectionTask = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRealtimeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealtimeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRealtimeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSpaceModelRequest : Tea.TeaModel {
    public var instanceId: String?

    public var spaceModelId: String?

    public override init() {
        super.init()
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
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
    }
}

public class GetSpaceModelResponseBody : Tea.TeaModel {
    public class SpaceModel : Tea.TeaModel {
        public class Sort : Tea.TeaModel {
            public var level: Int64?

            public var levelName: String?

            public override init() {
                super.init()
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
                    map["Level"] = self.level!
                }
                if self.levelName != nil {
                    map["LevelName"] = self.levelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Level"] as? Int64 {
                    self.level = value
                }
                if let value = dict["LevelName"] as? String {
                    self.levelName = value
                }
            }
        }
        public var createTime: String?

        public var sort: [GetSpaceModelResponseBody.SpaceModel.Sort]?

        public var spaceModelId: String?

        public var spaceType: String?

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
            if self.sort != nil {
                var tmp : [Any] = []
                for k in self.sort! {
                    tmp.append(k.toMap())
                }
                map["Sort"] = tmp
            }
            if self.spaceModelId != nil {
                map["SpaceModelId"] = self.spaceModelId!
            }
            if self.spaceType != nil {
                map["SpaceType"] = self.spaceType!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Sort"] as? [Any?] {
                var tmp : [GetSpaceModelResponseBody.SpaceModel.Sort] = []
                for v in value {
                    if v != nil {
                        var model = GetSpaceModelResponseBody.SpaceModel.Sort()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sort = tmp
            }
            if let value = dict["SpaceModelId"] as? String {
                self.spaceModelId = value
            }
            if let value = dict["SpaceType"] as? String {
                self.spaceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var spaceModel: GetSpaceModelResponseBody.SpaceModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spaceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceModel != nil {
            map["SpaceModel"] = self.spaceModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpaceModel"] as? [String: Any?] {
            var model = GetSpaceModelResponseBody.SpaceModel()
            model.fromMap(value)
            self.spaceModel = model
        }
    }
}

public class GetSpaceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpaceModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSpaceModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSpaceModelInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operateType: String?

    public var spaceId: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["SpaceId"] as? String {
            self.spaceId = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class GetSpaceModelInstanceResponseBody : Tea.TeaModel {
    public class SpaceModel : Tea.TeaModel {
        public var instance: String?

        public override init() {
            super.init()
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
                map["Instance"] = self.instance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? String {
                self.instance = value
            }
        }
    }
    public var requestId: String?

    public var spaceModel: GetSpaceModelInstanceResponseBody.SpaceModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spaceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceModel != nil {
            map["SpaceModel"] = self.spaceModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpaceModel"] as? [String: Any?] {
            var model = GetSpaceModelInstanceResponseBody.SpaceModel()
            model.fromMap(value)
            self.spaceModel = model
        }
    }
}

public class GetSpaceModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpaceModelInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSpaceModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSpaceModelSortRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operateType: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class GetSpaceModelSortResponseBody : Tea.TeaModel {
    public class SpaceModel : Tea.TeaModel {
        public var level: Int64?

        public var levelName: String?

        public override init() {
            super.init()
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
                map["Level"] = self.level!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["LevelName"] as? String {
                self.levelName = value
            }
        }
    }
    public var requestId: String?

    public var spaceModel: [GetSpaceModelSortResponseBody.SpaceModel]?

    public override init() {
        super.init()
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
        if self.spaceModel != nil {
            var tmp : [Any] = []
            for k in self.spaceModel! {
                tmp.append(k.toMap())
            }
            map["SpaceModel"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpaceModel"] as? [Any?] {
            var tmp : [GetSpaceModelSortResponseBody.SpaceModel] = []
            for v in value {
                if v != nil {
                    var model = GetSpaceModelSortResponseBody.SpaceModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spaceModel = tmp
        }
    }
}

public class GetSpaceModelSortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpaceModelSortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSpaceModelSortResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var category: String?

        public var createTime: String?

        public var params: String?

        public var responseCode: String?

        public var result: String?

        public var status: String?

        public var taskId: String?

        public var templateId: String?

        public var templateName: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.responseCode != nil {
                map["ResponseCode"] = self.responseCode!
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
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["ResponseCode"] as? String {
                self.responseCode = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? [String: Any?] {
            var model = GetTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlarmStatusRequest : Tea.TeaModel {
    public var aggregateDataName: String?

    public var city: String?

    public var country: String?

    public var dedicatedLineId: String?

    public var dedicatedLineName: String?

    public var deviceForm: String?

    public var deviceId: String?

    public var domain: String?

    public var hostName: String?

    public var instanceId: String?

    public var manufacturer: String?

    public var maxResults: Int32?

    public var model: String?

    public var monitorItemId: String?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public var portCollectionId: String?

    public var portCollectionName: String?

    public var province: String?

    public var region: String?

    public var role: String?

    public var securityDomain: String?

    public var serviceStatus: String?

    public var space: String?

    public var spaceType: String?

    public var status: String?

    public var type: String?

    public var uniqueKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregateDataName != nil {
            map["AggregateDataName"] = self.aggregateDataName!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.dedicatedLineName != nil {
            map["DedicatedLineName"] = self.dedicatedLineName!
        }
        if self.deviceForm != nil {
            map["DeviceForm"] = self.deviceForm!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.manufacturer != nil {
            map["Manufacturer"] = self.manufacturer!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.portCollectionName != nil {
            map["PortCollectionName"] = self.portCollectionName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uniqueKey != nil {
            map["UniqueKey"] = self.uniqueKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataName"] as? String {
            self.aggregateDataName = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DedicatedLineName"] as? String {
            self.dedicatedLineName = value
        }
        if let value = dict["DeviceForm"] as? String {
            self.deviceForm = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Manufacturer"] as? String {
            self.manufacturer = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["PortCollectionName"] as? String {
            self.portCollectionName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UniqueKey"] as? String {
            self.uniqueKey = value
        }
    }
}

public class ListAlarmStatusResponseBody : Tea.TeaModel {
    public class AlarmStatus : Tea.TeaModel {
        public class AggregateData : Tea.TeaModel {
            public var aggregateDataName: String?

            public var dataItem: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aggregateDataName != nil {
                    map["AggregateDataName"] = self.aggregateDataName!
                }
                if self.dataItem != nil {
                    map["DataItem"] = self.dataItem!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AggregateDataName"] as? String {
                    self.aggregateDataName = value
                }
                if let value = dict["DataItem"] as? String {
                    self.dataItem = value
                }
            }
        }
        public class DedicatedLine : Tea.TeaModel {
            public var dedicatedLineName: String?

            public var physicalSpace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dedicatedLineName != nil {
                    map["DedicatedLineName"] = self.dedicatedLineName!
                }
                if self.physicalSpace != nil {
                    map["PhysicalSpace"] = self.physicalSpace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DedicatedLineName"] as? String {
                    self.dedicatedLineName = value
                }
                if let value = dict["PhysicalSpace"] as? String {
                    self.physicalSpace = value
                }
            }
        }
        public class MonitorItem : Tea.TeaModel {
            public var collectionType: String?

            public var monitorItemDescription: String?

            public var monitorItemName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.collectionType != nil {
                    map["CollectionType"] = self.collectionType!
                }
                if self.monitorItemDescription != nil {
                    map["MonitorItemDescription"] = self.monitorItemDescription!
                }
                if self.monitorItemName != nil {
                    map["MonitorItemName"] = self.monitorItemName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CollectionType"] as? String {
                    self.collectionType = value
                }
                if let value = dict["MonitorItemDescription"] as? String {
                    self.monitorItemDescription = value
                }
                if let value = dict["MonitorItemName"] as? String {
                    self.monitorItemName = value
                }
            }
        }
        public class NotificationSwitch : Tea.TeaModel {
            public var expiryTime: String?

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
                if self.expiryTime != nil {
                    map["ExpiryTime"] = self.expiryTime!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExpiryTime"] as? String {
                    self.expiryTime = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public class PortCollection : Tea.TeaModel {
            public var portCollectionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.portCollectionName != nil {
                    map["PortCollectionName"] = self.portCollectionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PortCollectionName"] as? String {
                    self.portCollectionName = value
                }
            }
        }
        public class ResourceApp : Tea.TeaModel {
            public var appId: String?

            public var domain: String?

            public var port: String?

            public var securityDomain: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.securityDomain != nil {
                    map["SecurityDomain"] = self.securityDomain!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["SecurityDomain"] as? String {
                    self.securityDomain = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class ResourceDevice : Tea.TeaModel {
            public var city: String?

            public var deviceForm: String?

            public var hostName: String?

            public var physicalSpace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.deviceForm != nil {
                    map["DeviceForm"] = self.deviceForm!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.physicalSpace != nil {
                    map["PhysicalSpace"] = self.physicalSpace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["City"] as? String {
                    self.city = value
                }
                if let value = dict["DeviceForm"] as? String {
                    self.deviceForm = value
                }
                if let value = dict["HostName"] as? String {
                    self.hostName = value
                }
                if let value = dict["PhysicalSpace"] as? String {
                    self.physicalSpace = value
                }
            }
        }
        public var abnormalDataItem: String?

        public var agentIp: String?

        public var aggregateData: ListAlarmStatusResponseBody.AlarmStatus.AggregateData?

        public var aggregateDataId: String?

        public var alarmRule: String?

        public var alarmStatus: String?

        public var appId: String?

        public var collectionTime: String?

        public var dedicatedLine: ListAlarmStatusResponseBody.AlarmStatus.DedicatedLine?

        public var dedicatedLineId: String?

        public var deviceId: String?

        public var firstAbnormalTime: String?

        public var monitorItem: ListAlarmStatusResponseBody.AlarmStatus.MonitorItem?

        public var monitorItemId: String?

        public var notificationSwitch: ListAlarmStatusResponseBody.AlarmStatus.NotificationSwitch?

        public var portCollection: ListAlarmStatusResponseBody.AlarmStatus.PortCollection?

        public var portCollectionId: String?

        public var receiveTime: String?

        public var resourceApp: ListAlarmStatusResponseBody.AlarmStatus.ResourceApp?

        public var resourceDevice: ListAlarmStatusResponseBody.AlarmStatus.ResourceDevice?

        public var responseCode: String?

        public var result: String?

        public var uniqueKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aggregateData?.validate()
            try self.dedicatedLine?.validate()
            try self.monitorItem?.validate()
            try self.notificationSwitch?.validate()
            try self.portCollection?.validate()
            try self.resourceApp?.validate()
            try self.resourceDevice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalDataItem != nil {
                map["AbnormalDataItem"] = self.abnormalDataItem!
            }
            if self.agentIp != nil {
                map["AgentIp"] = self.agentIp!
            }
            if self.aggregateData != nil {
                map["AggregateData"] = self.aggregateData?.toMap()
            }
            if self.aggregateDataId != nil {
                map["AggregateDataId"] = self.aggregateDataId!
            }
            if self.alarmRule != nil {
                map["AlarmRule"] = self.alarmRule!
            }
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.collectionTime != nil {
                map["CollectionTime"] = self.collectionTime!
            }
            if self.dedicatedLine != nil {
                map["DedicatedLine"] = self.dedicatedLine?.toMap()
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.firstAbnormalTime != nil {
                map["FirstAbnormalTime"] = self.firstAbnormalTime!
            }
            if self.monitorItem != nil {
                map["MonitorItem"] = self.monitorItem?.toMap()
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.notificationSwitch != nil {
                map["NotificationSwitch"] = self.notificationSwitch?.toMap()
            }
            if self.portCollection != nil {
                map["PortCollection"] = self.portCollection?.toMap()
            }
            if self.portCollectionId != nil {
                map["PortCollectionId"] = self.portCollectionId!
            }
            if self.receiveTime != nil {
                map["ReceiveTime"] = self.receiveTime!
            }
            if self.resourceApp != nil {
                map["ResourceApp"] = self.resourceApp?.toMap()
            }
            if self.resourceDevice != nil {
                map["ResourceDevice"] = self.resourceDevice?.toMap()
            }
            if self.responseCode != nil {
                map["ResponseCode"] = self.responseCode!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.uniqueKey != nil {
                map["UniqueKey"] = self.uniqueKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbnormalDataItem"] as? String {
                self.abnormalDataItem = value
            }
            if let value = dict["AgentIp"] as? String {
                self.agentIp = value
            }
            if let value = dict["AggregateData"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.AggregateData()
                model.fromMap(value)
                self.aggregateData = model
            }
            if let value = dict["AggregateDataId"] as? String {
                self.aggregateDataId = value
            }
            if let value = dict["AlarmRule"] as? String {
                self.alarmRule = value
            }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["CollectionTime"] as? String {
                self.collectionTime = value
            }
            if let value = dict["DedicatedLine"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.DedicatedLine()
                model.fromMap(value)
                self.dedicatedLine = model
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["FirstAbnormalTime"] as? String {
                self.firstAbnormalTime = value
            }
            if let value = dict["MonitorItem"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.MonitorItem()
                model.fromMap(value)
                self.monitorItem = model
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["NotificationSwitch"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.NotificationSwitch()
                model.fromMap(value)
                self.notificationSwitch = model
            }
            if let value = dict["PortCollection"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.PortCollection()
                model.fromMap(value)
                self.portCollection = model
            }
            if let value = dict["PortCollectionId"] as? String {
                self.portCollectionId = value
            }
            if let value = dict["ReceiveTime"] as? String {
                self.receiveTime = value
            }
            if let value = dict["ResourceApp"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.ResourceApp()
                model.fromMap(value)
                self.resourceApp = model
            }
            if let value = dict["ResourceDevice"] as? [String: Any?] {
                var model = ListAlarmStatusResponseBody.AlarmStatus.ResourceDevice()
                model.fromMap(value)
                self.resourceDevice = model
            }
            if let value = dict["ResponseCode"] as? String {
                self.responseCode = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["UniqueKey"] as? String {
                self.uniqueKey = value
            }
        }
    }
    public class Statistics : Tea.TeaModel {
        public var count: Int64?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var alarmStatus: [ListAlarmStatusResponseBody.AlarmStatus]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var statistics: [ListAlarmStatusResponseBody.Statistics]?

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
        if self.alarmStatus != nil {
            var tmp : [Any] = []
            for k in self.alarmStatus! {
                tmp.append(k.toMap())
            }
            map["AlarmStatus"] = tmp
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
        if self.statistics != nil {
            var tmp : [Any] = []
            for k in self.statistics! {
                tmp.append(k.toMap())
            }
            map["Statistics"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? [Any?] {
            var tmp : [ListAlarmStatusResponseBody.AlarmStatus] = []
            for v in value {
                if v != nil {
                    var model = ListAlarmStatusResponseBody.AlarmStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alarmStatus = tmp
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
        if let value = dict["Statistics"] as? [Any?] {
            var tmp : [ListAlarmStatusResponseBody.Statistics] = []
            for v in value {
                if v != nil {
                    var model = ListAlarmStatusResponseBody.Statistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statistics = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAlarmStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlarmStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAlarmStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlarmStatusHistoriesRequest : Tea.TeaModel {
    public var aggregateDataId: String?

    public var appId: String?

    public var dedicatedLineId: String?

    public var deviceId: String?

    public var end: Int64?

    public var instanceId: String?

    public var monitorItemId: String?

    public var portCollectionId: String?

    public var start: Int64?

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
        if self.aggregateDataId != nil {
            map["AggregateDataId"] = self.aggregateDataId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataId"] as? String {
            self.aggregateDataId = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListAlarmStatusHistoriesResponseBody : Tea.TeaModel {
    public class AlarmStatusHistories : Tea.TeaModel {
        public var timestamp: Int64?

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
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var alarmStatusHistories: [ListAlarmStatusHistoriesResponseBody.AlarmStatusHistories]?

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
        if self.alarmStatusHistories != nil {
            var tmp : [Any] = []
            for k in self.alarmStatusHistories! {
                tmp.append(k.toMap())
            }
            map["AlarmStatusHistories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatusHistories"] as? [Any?] {
            var tmp : [ListAlarmStatusHistoriesResponseBody.AlarmStatusHistories] = []
            for v in value {
                if v != nil {
                    var model = ListAlarmStatusHistoriesResponseBody.AlarmStatusHistories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alarmStatusHistories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAlarmStatusHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlarmStatusHistoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAlarmStatusHistoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlarmStatusStatisticsRequest : Tea.TeaModel {
    public var alarmStatus: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public var securityDomain: String?

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
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListAlarmStatusStatisticsResponseBody : Tea.TeaModel {
    public class Statistics : Tea.TeaModel {
        public var count: Int64?

        public var name: String?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var statistics: [ListAlarmStatusStatisticsResponseBody.Statistics]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statistics != nil {
            var tmp : [Any] = []
            for k in self.statistics! {
                tmp.append(k.toMap())
            }
            map["Statistics"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Statistics"] as? [Any?] {
            var tmp : [ListAlarmStatusStatisticsResponseBody.Statistics] = []
            for v in value {
                if v != nil {
                    var model = ListAlarmStatusStatisticsResponseBody.Statistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statistics = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAlarmStatusStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlarmStatusStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAlarmStatusStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDedicatedLinesRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var dedicatedLineGateway: String?

    public var dedicatedLineIp: String?

    public var dedicatedLineRole: String?

    public var description_: String?

    public var deviceId: String?

    public var deviceName: String?

    public var devicePort: String?

    public var expirationDate: String?

    public var extAttributes: String?

    public var instanceId: String?

    public var isp: String?

    public var ispFormId: String?

    public var ispId: String?

    public var keyword: String?

    public var keywords: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var onlineDate: String?

    public var physicalSpaceId: String?

    public var spaceName: String?

    public override init() {
        super.init()
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
            map["Bandwidth"] = self.bandwidth!
        }
        if self.dedicatedLineGateway != nil {
            map["DedicatedLineGateway"] = self.dedicatedLineGateway!
        }
        if self.dedicatedLineIp != nil {
            map["DedicatedLineIp"] = self.dedicatedLineIp!
        }
        if self.dedicatedLineRole != nil {
            map["DedicatedLineRole"] = self.dedicatedLineRole!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.devicePort != nil {
            map["DevicePort"] = self.devicePort!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isp != nil {
            map["Isp"] = self.isp!
        }
        if self.ispFormId != nil {
            map["IspFormId"] = self.ispFormId!
        }
        if self.ispId != nil {
            map["IspId"] = self.ispId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.onlineDate != nil {
            map["OnlineDate"] = self.onlineDate!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.spaceName != nil {
            map["SpaceName"] = self.spaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["DedicatedLineGateway"] as? String {
            self.dedicatedLineGateway = value
        }
        if let value = dict["DedicatedLineIp"] as? String {
            self.dedicatedLineIp = value
        }
        if let value = dict["DedicatedLineRole"] as? String {
            self.dedicatedLineRole = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["DevicePort"] as? String {
            self.devicePort = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Isp"] as? String {
            self.isp = value
        }
        if let value = dict["IspFormId"] as? String {
            self.ispFormId = value
        }
        if let value = dict["IspId"] as? String {
            self.ispId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Keywords"] as? String {
            self.keywords = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OnlineDate"] as? String {
            self.onlineDate = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["SpaceName"] as? String {
            self.spaceName = value
        }
    }
}

public class ListDedicatedLinesResponseBody : Tea.TeaModel {
    public class DedicatedLines : Tea.TeaModel {
        public class Contact : Tea.TeaModel {
            public var description_: String?

            public var email: String?

            public var name: String?

            public var phone: String?

            public override init() {
                super.init()
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
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
            }
        }
        public var bandwidth: Int32?

        public var contact: [ListDedicatedLinesResponseBody.DedicatedLines.Contact]?

        public var dedicatedLineGateway: String?

        public var dedicatedLineId: String?

        public var dedicatedLineIp: String?

        public var dedicatedLineRole: String?

        public var description_: String?

        public var deviceId: String?

        public var deviceName: String?

        public var devicePort: String?

        public var expirationDate: String?

        public var ext: String?

        public var isp: String?

        public var ispFormId: String?

        public var ispFormName: String?

        public var ispId: String?

        public var keyword: String?

        public var onlineDate: String?

        public var phone: String?

        public var physicalSpaceId: String?

        public var spaceName: String?

        public override init() {
            super.init()
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
                map["Bandwidth"] = self.bandwidth!
            }
            if self.contact != nil {
                var tmp : [Any] = []
                for k in self.contact! {
                    tmp.append(k.toMap())
                }
                map["Contact"] = tmp
            }
            if self.dedicatedLineGateway != nil {
                map["DedicatedLineGateway"] = self.dedicatedLineGateway!
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.dedicatedLineIp != nil {
                map["DedicatedLineIp"] = self.dedicatedLineIp!
            }
            if self.dedicatedLineRole != nil {
                map["DedicatedLineRole"] = self.dedicatedLineRole!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.devicePort != nil {
                map["DevicePort"] = self.devicePort!
            }
            if self.expirationDate != nil {
                map["ExpirationDate"] = self.expirationDate!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.ispFormId != nil {
                map["IspFormId"] = self.ispFormId!
            }
            if self.ispFormName != nil {
                map["IspFormName"] = self.ispFormName!
            }
            if self.ispId != nil {
                map["IspId"] = self.ispId!
            }
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            if self.onlineDate != nil {
                map["OnlineDate"] = self.onlineDate!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            if self.spaceName != nil {
                map["SpaceName"] = self.spaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["Contact"] as? [Any?] {
                var tmp : [ListDedicatedLinesResponseBody.DedicatedLines.Contact] = []
                for v in value {
                    if v != nil {
                        var model = ListDedicatedLinesResponseBody.DedicatedLines.Contact()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contact = tmp
            }
            if let value = dict["DedicatedLineGateway"] as? String {
                self.dedicatedLineGateway = value
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DedicatedLineIp"] as? String {
                self.dedicatedLineIp = value
            }
            if let value = dict["DedicatedLineRole"] as? String {
                self.dedicatedLineRole = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["DevicePort"] as? String {
                self.devicePort = value
            }
            if let value = dict["ExpirationDate"] as? String {
                self.expirationDate = value
            }
            if let value = dict["Ext"] as? String {
                self.ext = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["IspFormId"] as? String {
                self.ispFormId = value
            }
            if let value = dict["IspFormName"] as? String {
                self.ispFormName = value
            }
            if let value = dict["IspId"] as? String {
                self.ispId = value
            }
            if let value = dict["Keyword"] as? String {
                self.keyword = value
            }
            if let value = dict["OnlineDate"] as? String {
                self.onlineDate = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
            if let value = dict["SpaceName"] as? String {
                self.spaceName = value
            }
        }
    }
    public var dedicatedLines: [ListDedicatedLinesResponseBody.DedicatedLines]?

    public var maxResults: Int32?

    public var nextToken: Int32?

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
        if self.dedicatedLines != nil {
            var tmp : [Any] = []
            for k in self.dedicatedLines! {
                tmp.append(k.toMap())
            }
            map["DedicatedLines"] = tmp
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
        if let value = dict["DedicatedLines"] as? [Any?] {
            var tmp : [ListDedicatedLinesResponseBody.DedicatedLines] = []
            for v in value {
                if v != nil {
                    var model = ListDedicatedLinesResponseBody.DedicatedLines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dedicatedLines = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListDedicatedLinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDedicatedLinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDedicatedLinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeviceFormsRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListDeviceFormsResponseBody : Tea.TeaModel {
    public class DeviceForms : Tea.TeaModel {
        public class AttributeList : Tea.TeaModel {
            public var attributeBuiltIn: Bool?

            public var attributeContent: String?

            public var attributeFormat: String?

            public var attributeFuzzyQuery: Bool?

            public var attributeKey: String?

            public var attributeName: String?

            public var attributePlaceholder: String?

            public var attributeQuery: Bool?

            public var attributeReference: String?

            public var attributeRequirement: Bool?

            public var attributeSequence: Int32?

            public var attributeTableDisplay: Bool?

            public var attributeType: String?

            public var attributeUniqueness: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributeBuiltIn != nil {
                    map["AttributeBuiltIn"] = self.attributeBuiltIn!
                }
                if self.attributeContent != nil {
                    map["AttributeContent"] = self.attributeContent!
                }
                if self.attributeFormat != nil {
                    map["AttributeFormat"] = self.attributeFormat!
                }
                if self.attributeFuzzyQuery != nil {
                    map["AttributeFuzzyQuery"] = self.attributeFuzzyQuery!
                }
                if self.attributeKey != nil {
                    map["AttributeKey"] = self.attributeKey!
                }
                if self.attributeName != nil {
                    map["AttributeName"] = self.attributeName!
                }
                if self.attributePlaceholder != nil {
                    map["AttributePlaceholder"] = self.attributePlaceholder!
                }
                if self.attributeQuery != nil {
                    map["AttributeQuery"] = self.attributeQuery!
                }
                if self.attributeReference != nil {
                    map["AttributeReference"] = self.attributeReference!
                }
                if self.attributeRequirement != nil {
                    map["AttributeRequirement"] = self.attributeRequirement!
                }
                if self.attributeSequence != nil {
                    map["AttributeSequence"] = self.attributeSequence!
                }
                if self.attributeTableDisplay != nil {
                    map["AttributeTableDisplay"] = self.attributeTableDisplay!
                }
                if self.attributeType != nil {
                    map["AttributeType"] = self.attributeType!
                }
                if self.attributeUniqueness != nil {
                    map["AttributeUniqueness"] = self.attributeUniqueness!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttributeBuiltIn"] as? Bool {
                    self.attributeBuiltIn = value
                }
                if let value = dict["AttributeContent"] as? String {
                    self.attributeContent = value
                }
                if let value = dict["AttributeFormat"] as? String {
                    self.attributeFormat = value
                }
                if let value = dict["AttributeFuzzyQuery"] as? Bool {
                    self.attributeFuzzyQuery = value
                }
                if let value = dict["AttributeKey"] as? String {
                    self.attributeKey = value
                }
                if let value = dict["AttributeName"] as? String {
                    self.attributeName = value
                }
                if let value = dict["AttributePlaceholder"] as? String {
                    self.attributePlaceholder = value
                }
                if let value = dict["AttributeQuery"] as? Bool {
                    self.attributeQuery = value
                }
                if let value = dict["AttributeReference"] as? String {
                    self.attributeReference = value
                }
                if let value = dict["AttributeRequirement"] as? Bool {
                    self.attributeRequirement = value
                }
                if let value = dict["AttributeSequence"] as? Int32 {
                    self.attributeSequence = value
                }
                if let value = dict["AttributeTableDisplay"] as? Bool {
                    self.attributeTableDisplay = value
                }
                if let value = dict["AttributeType"] as? String {
                    self.attributeType = value
                }
                if let value = dict["AttributeUniqueness"] as? Bool {
                    self.attributeUniqueness = value
                }
            }
        }
        public var accountConfig: Bool?

        public var attributeList: [ListDeviceFormsResponseBody.DeviceForms.AttributeList]?

        public var configCompare: Bool?

        public var detailDisplay: Bool?

        public var deviceFormId: String?

        public var deviceFormName: String?

        public var formBuiltIn: Bool?

        public var relatedDeviceFormId: String?

        public var resourceUse: String?

        public var script: String?

        public var uniqueKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountConfig != nil {
                map["AccountConfig"] = self.accountConfig!
            }
            if self.attributeList != nil {
                var tmp : [Any] = []
                for k in self.attributeList! {
                    tmp.append(k.toMap())
                }
                map["AttributeList"] = tmp
            }
            if self.configCompare != nil {
                map["ConfigCompare"] = self.configCompare!
            }
            if self.detailDisplay != nil {
                map["DetailDisplay"] = self.detailDisplay!
            }
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.formBuiltIn != nil {
                map["FormBuiltIn"] = self.formBuiltIn!
            }
            if self.relatedDeviceFormId != nil {
                map["RelatedDeviceFormId"] = self.relatedDeviceFormId!
            }
            if self.resourceUse != nil {
                map["ResourceUse"] = self.resourceUse!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            if self.uniqueKey != nil {
                map["UniqueKey"] = self.uniqueKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountConfig"] as? Bool {
                self.accountConfig = value
            }
            if let value = dict["AttributeList"] as? [Any?] {
                var tmp : [ListDeviceFormsResponseBody.DeviceForms.AttributeList] = []
                for v in value {
                    if v != nil {
                        var model = ListDeviceFormsResponseBody.DeviceForms.AttributeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributeList = tmp
            }
            if let value = dict["ConfigCompare"] as? Bool {
                self.configCompare = value
            }
            if let value = dict["DetailDisplay"] as? Bool {
                self.detailDisplay = value
            }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["FormBuiltIn"] as? Bool {
                self.formBuiltIn = value
            }
            if let value = dict["RelatedDeviceFormId"] as? String {
                self.relatedDeviceFormId = value
            }
            if let value = dict["ResourceUse"] as? String {
                self.resourceUse = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
            if let value = dict["UniqueKey"] as? String {
                self.uniqueKey = value
            }
        }
    }
    public var deviceForms: [ListDeviceFormsResponseBody.DeviceForms]?

    public var maxResults: Int32?

    public var nextToken: Int32?

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
        if self.deviceForms != nil {
            var tmp : [Any] = []
            for k in self.deviceForms! {
                tmp.append(k.toMap())
            }
            map["DeviceForms"] = tmp
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
        if let value = dict["DeviceForms"] as? [Any?] {
            var tmp : [ListDeviceFormsResponseBody.DeviceForms] = []
            for v in value {
                if v != nil {
                    var model = ListDeviceFormsResponseBody.DeviceForms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deviceForms = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListDeviceFormsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceFormsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDeviceFormsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDevicePropertiesRequest : Tea.TeaModel {
    public var deviceFormId: String?

    public var instanceId: String?

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
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListDevicePropertiesResponseBody : Tea.TeaModel {
    public class DeviceProperties : Tea.TeaModel {
        public var builtIn: Bool?

        public var deviceFormId: String?

        public var deviceFormName: String?

        public var devicePropertyId: String?

        public var propertyContent: String?

        public var propertyFormat: String?

        public var propertyKey: String?

        public var propertyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.builtIn != nil {
                map["BuiltIn"] = self.builtIn!
            }
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.devicePropertyId != nil {
                map["DevicePropertyId"] = self.devicePropertyId!
            }
            if self.propertyContent != nil {
                map["PropertyContent"] = self.propertyContent!
            }
            if self.propertyFormat != nil {
                map["PropertyFormat"] = self.propertyFormat!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyName != nil {
                map["PropertyName"] = self.propertyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuiltIn"] as? Bool {
                self.builtIn = value
            }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["DevicePropertyId"] as? String {
                self.devicePropertyId = value
            }
            if let value = dict["PropertyContent"] as? String {
                self.propertyContent = value
            }
            if let value = dict["PropertyFormat"] as? String {
                self.propertyFormat = value
            }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["PropertyName"] as? String {
                self.propertyName = value
            }
        }
    }
    public var deviceProperties: [ListDevicePropertiesResponseBody.DeviceProperties]?

    public var maxResults: Int32?

    public var nextToken: Int32?

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
        if self.deviceProperties != nil {
            var tmp : [Any] = []
            for k in self.deviceProperties! {
                tmp.append(k.toMap())
            }
            map["DeviceProperties"] = tmp
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
        if let value = dict["DeviceProperties"] as? [Any?] {
            var tmp : [ListDevicePropertiesResponseBody.DeviceProperties] = []
            for v in value {
                if v != nil {
                    var model = ListDevicePropertiesResponseBody.DeviceProperties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deviceProperties = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListDevicePropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDevicePropertiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDevicePropertiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeviceValuesRequest : Tea.TeaModel {
    public var attributeGroup: String?

    public var attributeKeyword: String?

    public var deviceFormId: String?

    public var deviceFormName: String?

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
        if self.attributeGroup != nil {
            map["AttributeGroup"] = self.attributeGroup!
        }
        if self.attributeKeyword != nil {
            map["AttributeKeyword"] = self.attributeKeyword!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.deviceFormName != nil {
            map["DeviceFormName"] = self.deviceFormName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttributeGroup"] as? String {
            self.attributeGroup = value
        }
        if let value = dict["AttributeKeyword"] as? String {
            self.attributeKeyword = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DeviceFormName"] as? String {
            self.deviceFormName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListDeviceValuesResponseBody : Tea.TeaModel {
    public var deviceValues: [String]?

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
        if self.deviceValues != nil {
            map["DeviceValues"] = self.deviceValues!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceValues"] as? [String] {
            self.deviceValues = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDeviceValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDeviceValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDevicesRequest : Tea.TeaModel {
    public var calculateAmount: Bool?

    public var deviceFormId: String?

    public var deviceFormName: String?

    public var deviceIds: [String]?

    public var extAttributes: String?

    public var hostName: [String]?

    public var instanceId: String?

    public var ip: [String]?

    public var keyword: String?

    public var mac: [String]?

    public var maxResults: Int32?

    public var model: [String]?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public var physicalSpaceIds: [String]?

    public var securityDomain: [String]?

    public var serviceStatus: [String]?

    public var sn: [String]?

    public var vendor: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calculateAmount != nil {
            map["CalculateAmount"] = self.calculateAmount!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.deviceFormName != nil {
            map["DeviceFormName"] = self.deviceFormName!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceIds != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIds!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalculateAmount"] as? Bool {
            self.calculateAmount = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DeviceFormName"] as? String {
            self.deviceFormName = value
        }
        if let value = dict["DeviceIds"] as? [String] {
            self.deviceIds = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["HostName"] as? [String] {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? [String] {
            self.ip = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Mac"] as? [String] {
            self.mac = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? [String] {
            self.model = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceIds"] as? [String] {
            self.physicalSpaceIds = value
        }
        if let value = dict["SecurityDomain"] as? [String] {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? [String] {
            self.serviceStatus = value
        }
        if let value = dict["Sn"] as? [String] {
            self.sn = value
        }
        if let value = dict["Vendor"] as? [String] {
            self.vendor = value
        }
    }
}

public class ListDevicesShrinkRequest : Tea.TeaModel {
    public var calculateAmount: Bool?

    public var deviceFormId: String?

    public var deviceFormName: String?

    public var deviceIdsShrink: String?

    public var extAttributes: String?

    public var hostNameShrink: String?

    public var instanceId: String?

    public var ipShrink: String?

    public var keyword: String?

    public var macShrink: String?

    public var maxResults: Int32?

    public var modelShrink: String?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public var physicalSpaceIdsShrink: String?

    public var securityDomainShrink: String?

    public var serviceStatusShrink: String?

    public var snShrink: String?

    public var vendorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calculateAmount != nil {
            map["CalculateAmount"] = self.calculateAmount!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.deviceFormName != nil {
            map["DeviceFormName"] = self.deviceFormName!
        }
        if self.deviceIdsShrink != nil {
            map["DeviceIds"] = self.deviceIdsShrink!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.hostNameShrink != nil {
            map["HostName"] = self.hostNameShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipShrink != nil {
            map["Ip"] = self.ipShrink!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.macShrink != nil {
            map["Mac"] = self.macShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.modelShrink != nil {
            map["Model"] = self.modelShrink!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceIdsShrink != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIdsShrink!
        }
        if self.securityDomainShrink != nil {
            map["SecurityDomain"] = self.securityDomainShrink!
        }
        if self.serviceStatusShrink != nil {
            map["ServiceStatus"] = self.serviceStatusShrink!
        }
        if self.snShrink != nil {
            map["Sn"] = self.snShrink!
        }
        if self.vendorShrink != nil {
            map["Vendor"] = self.vendorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalculateAmount"] as? Bool {
            self.calculateAmount = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["DeviceFormName"] as? String {
            self.deviceFormName = value
        }
        if let value = dict["DeviceIds"] as? String {
            self.deviceIdsShrink = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["HostName"] as? String {
            self.hostNameShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ipShrink = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Mac"] as? String {
            self.macShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.modelShrink = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceIds"] as? String {
            self.physicalSpaceIdsShrink = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomainShrink = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatusShrink = value
        }
        if let value = dict["Sn"] as? String {
            self.snShrink = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendorShrink = value
        }
    }
}

public class ListDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var deviceFormId: String?

        public var deviceFormName: String?

        public var deviceId: String?

        public var enablePassword: String?

        public var extAttributes: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var hostName: String?

        public var ip: String?

        public var loginPassword: String?

        public var loginType: String?

        public var loginUsername: String?

        public var mac: String?

        public var model: String?

        public var physicalSpaceId: String?

        public var physicalSpaceName: String?

        public var securityDomain: String?

        public var serviceStatus: String?

        public var sn: String?

        public var snmpAccountType: String?

        public var snmpAccountVersion: String?

        public var snmpAuthPassphrase: String?

        public var snmpAuthProtocol: String?

        public var snmpCommunity: String?

        public var snmpPrivacyPassphrase: String?

        public var snmpPrivacyProtocol: String?

        public var snmpSecurityLevel: String?

        public var snmpUsername: String?

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
            if self.deviceFormId != nil {
                map["DeviceFormId"] = self.deviceFormId!
            }
            if self.deviceFormName != nil {
                map["DeviceFormName"] = self.deviceFormName!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.enablePassword != nil {
                map["EnablePassword"] = self.enablePassword!
            }
            if self.extAttributes != nil {
                map["ExtAttributes"] = self.extAttributes!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.loginPassword != nil {
                map["LoginPassword"] = self.loginPassword!
            }
            if self.loginType != nil {
                map["LoginType"] = self.loginType!
            }
            if self.loginUsername != nil {
                map["LoginUsername"] = self.loginUsername!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            if self.physicalSpaceName != nil {
                map["PhysicalSpaceName"] = self.physicalSpaceName!
            }
            if self.securityDomain != nil {
                map["SecurityDomain"] = self.securityDomain!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.snmpAccountType != nil {
                map["SnmpAccountType"] = self.snmpAccountType!
            }
            if self.snmpAccountVersion != nil {
                map["SnmpAccountVersion"] = self.snmpAccountVersion!
            }
            if self.snmpAuthPassphrase != nil {
                map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
            }
            if self.snmpAuthProtocol != nil {
                map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
            }
            if self.snmpCommunity != nil {
                map["SnmpCommunity"] = self.snmpCommunity!
            }
            if self.snmpPrivacyPassphrase != nil {
                map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
            }
            if self.snmpPrivacyProtocol != nil {
                map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
            }
            if self.snmpSecurityLevel != nil {
                map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
            }
            if self.snmpUsername != nil {
                map["SnmpUsername"] = self.snmpUsername!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceFormId"] as? String {
                self.deviceFormId = value
            }
            if let value = dict["DeviceFormName"] as? String {
                self.deviceFormName = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["EnablePassword"] as? String {
                self.enablePassword = value
            }
            if let value = dict["ExtAttributes"] as? String {
                self.extAttributes = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["LoginPassword"] as? String {
                self.loginPassword = value
            }
            if let value = dict["LoginType"] as? String {
                self.loginType = value
            }
            if let value = dict["LoginUsername"] as? String {
                self.loginUsername = value
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
            if let value = dict["PhysicalSpaceName"] as? String {
                self.physicalSpaceName = value
            }
            if let value = dict["SecurityDomain"] as? String {
                self.securityDomain = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["Sn"] as? String {
                self.sn = value
            }
            if let value = dict["SnmpAccountType"] as? String {
                self.snmpAccountType = value
            }
            if let value = dict["SnmpAccountVersion"] as? String {
                self.snmpAccountVersion = value
            }
            if let value = dict["SnmpAuthPassphrase"] as? String {
                self.snmpAuthPassphrase = value
            }
            if let value = dict["SnmpAuthProtocol"] as? String {
                self.snmpAuthProtocol = value
            }
            if let value = dict["SnmpCommunity"] as? String {
                self.snmpCommunity = value
            }
            if let value = dict["SnmpPrivacyPassphrase"] as? String {
                self.snmpPrivacyPassphrase = value
            }
            if let value = dict["SnmpPrivacyProtocol"] as? String {
                self.snmpPrivacyProtocol = value
            }
            if let value = dict["SnmpSecurityLevel"] as? String {
                self.snmpSecurityLevel = value
            }
            if let value = dict["SnmpUsername"] as? String {
                self.snmpUsername = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var amountDetail: String?

    public var amountUsed: Int32?

    public var devices: [ListDevicesResponseBody.Devices]?

    public var iotCoefficient: Int32?

    public var maxResults: Int32?

    public var networkCoefficient: Int32?

    public var networkMaintenanceCoefficient: Int32?

    public var nextToken: Int32?

    public var otherCoefficient: Int32?

    public var requestId: String?

    public var serverCoefficient: Int32?

    public var serverMaintenanceCoefficient: Int32?

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
        if self.amountDetail != nil {
            map["AmountDetail"] = self.amountDetail!
        }
        if self.amountUsed != nil {
            map["AmountUsed"] = self.amountUsed!
        }
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.iotCoefficient != nil {
            map["IotCoefficient"] = self.iotCoefficient!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.networkCoefficient != nil {
            map["NetworkCoefficient"] = self.networkCoefficient!
        }
        if self.networkMaintenanceCoefficient != nil {
            map["NetworkMaintenanceCoefficient"] = self.networkMaintenanceCoefficient!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.otherCoefficient != nil {
            map["OtherCoefficient"] = self.otherCoefficient!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverCoefficient != nil {
            map["ServerCoefficient"] = self.serverCoefficient!
        }
        if self.serverMaintenanceCoefficient != nil {
            map["ServerMaintenanceCoefficient"] = self.serverMaintenanceCoefficient!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AmountDetail"] as? String {
            self.amountDetail = value
        }
        if let value = dict["AmountUsed"] as? Int32 {
            self.amountUsed = value
        }
        if let value = dict["Devices"] as? [Any?] {
            var tmp : [ListDevicesResponseBody.Devices] = []
            for v in value {
                if v != nil {
                    var model = ListDevicesResponseBody.Devices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.devices = tmp
        }
        if let value = dict["IotCoefficient"] as? Int32 {
            self.iotCoefficient = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NetworkCoefficient"] as? Int32 {
            self.networkCoefficient = value
        }
        if let value = dict["NetworkMaintenanceCoefficient"] as? Int32 {
            self.networkMaintenanceCoefficient = value
        }
        if let value = dict["NextToken"] as? Int32 {
            self.nextToken = value
        }
        if let value = dict["OtherCoefficient"] as? Int32 {
            self.otherCoefficient = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerCoefficient"] as? Int32 {
            self.serverCoefficient = value
        }
        if let value = dict["ServerMaintenanceCoefficient"] as? Int32 {
            self.serverMaintenanceCoefficient = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEventDefinitionsRequest : Tea.TeaModel {
    public var eventId: String?

    public var eventName: String?

    public var eventType: String?

    public var instanceId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListEventDefinitionsResponseBody : Tea.TeaModel {
    public var eventDefinitions: [EventDefinition]?

    public var maxResults: Int32?

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
        if self.eventDefinitions != nil {
            var tmp : [Any] = []
            for k in self.eventDefinitions! {
                tmp.append(k.toMap())
            }
            map["EventDefinitions"] = tmp
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
        if let value = dict["EventDefinitions"] as? [Any?] {
            var tmp : [EventDefinition] = []
            for v in value {
                if v != nil {
                    var model = EventDefinition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventDefinitions = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListEventDefinitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventDefinitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEventDefinitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEventsRequest : Tea.TeaModel {
    public var alarmStatus: String?

    public var deviceId: String?

    public var eventType: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class ListEventsResponseBody : Tea.TeaModel {
    public class Statistics : Tea.TeaModel {
        public var count: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var events: [Event]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var statistics: [ListEventsResponseBody.Statistics]?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
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
        if self.statistics != nil {
            var tmp : [Any] = []
            for k in self.statistics! {
                tmp.append(k.toMap())
            }
            map["Statistics"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [Event] = []
            for v in value {
                if v != nil {
                    var model = Event()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
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
        if let value = dict["Statistics"] as? [Any?] {
            var tmp : [ListEventsResponseBody.Statistics] = []
            for v in value {
                if v != nil {
                    var model = ListEventsResponseBody.Statistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statistics = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInspectionDevicesRequest : Tea.TeaModel {
    public var appState: String?

    public var instanceId: String?

    public var model: [String]?

    public var role: String?

    public var space: String?

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
        if self.appState != nil {
            map["AppState"] = self.appState!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppState"] as? String {
            self.appState = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? [String] {
            self.model = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ListInspectionDevicesShrinkRequest : Tea.TeaModel {
    public var appState: String?

    public var instanceId: String?

    public var modelShrink: String?

    public var role: String?

    public var space: String?

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
        if self.appState != nil {
            map["AppState"] = self.appState!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modelShrink != nil {
            map["Model"] = self.modelShrink!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppState"] as? String {
            self.appState = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.modelShrink = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ListInspectionDevicesResponseBody : Tea.TeaModel {
    public class InspectionScripts : Tea.TeaModel {
        public var appState: String?

        public var deviceId: String?

        public var deviceState: String?

        public var hostName: String?

        public var manageIp: String?

        public var model: String?

        public var role: String?

        public var space: String?

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
            if self.appState != nil {
                map["AppState"] = self.appState!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceState != nil {
                map["DeviceState"] = self.deviceState!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.manageIp != nil {
                map["ManageIp"] = self.manageIp!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.space != nil {
                map["Space"] = self.space!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppState"] as? String {
                self.appState = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceState"] as? String {
                self.deviceState = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["ManageIp"] as? String {
                self.manageIp = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Space"] as? String {
                self.space = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var inspectionScripts: [ListInspectionDevicesResponseBody.InspectionScripts]?

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
        if self.inspectionScripts != nil {
            var tmp : [Any] = []
            for k in self.inspectionScripts! {
                tmp.append(k.toMap())
            }
            map["InspectionScripts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionScripts"] as? [Any?] {
            var tmp : [ListInspectionDevicesResponseBody.InspectionScripts] = []
            for v in value {
                if v != nil {
                    var model = ListInspectionDevicesResponseBody.InspectionScripts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionScripts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInspectionDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInspectionDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInspectionDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInspectionTasksRequest : Tea.TeaModel {
    public var alarmStatus: [String]?

    public var deviceType: String?

    public var hostName: String?

    public var IP: String?

    public var instanceId: String?

    public var itemId: String?

    public var maxResults: Int32?

    public var model: String?

    public var nextToken: String?

    public var role: String?

    public var space: String?

    public var taskStatus: String?

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
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.IP != nil {
            map["IP"] = self.IP!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? [String] {
            self.alarmStatus = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["IP"] as? String {
            self.IP = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ListInspectionTasksShrinkRequest : Tea.TeaModel {
    public var alarmStatusShrink: String?

    public var deviceType: String?

    public var hostName: String?

    public var IP: String?

    public var instanceId: String?

    public var itemId: String?

    public var maxResults: Int32?

    public var model: String?

    public var nextToken: String?

    public var role: String?

    public var space: String?

    public var taskStatus: String?

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
        if self.alarmStatusShrink != nil {
            map["AlarmStatus"] = self.alarmStatusShrink!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.IP != nil {
            map["IP"] = self.IP!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.space != nil {
            map["Space"] = self.space!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatusShrink = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["IP"] as? String {
            self.IP = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Space"] as? String {
            self.space = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ListInspectionTasksResponseBody : Tea.TeaModel {
    public class InspectionTasks : Tea.TeaModel {
        public class InspectionAlarmRules : Tea.TeaModel {
            public var actualValue: String?

            public var alarmExpression: String?

            public var alarmLevel: String?

            public var alarmOperator: String?

            public var alarmValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualValue != nil {
                    map["ActualValue"] = self.actualValue!
                }
                if self.alarmExpression != nil {
                    map["AlarmExpression"] = self.alarmExpression!
                }
                if self.alarmLevel != nil {
                    map["AlarmLevel"] = self.alarmLevel!
                }
                if self.alarmOperator != nil {
                    map["AlarmOperator"] = self.alarmOperator!
                }
                if self.alarmValue != nil {
                    map["AlarmValue"] = self.alarmValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualValue"] as? String {
                    self.actualValue = value
                }
                if let value = dict["AlarmExpression"] as? String {
                    self.alarmExpression = value
                }
                if let value = dict["AlarmLevel"] as? String {
                    self.alarmLevel = value
                }
                if let value = dict["AlarmOperator"] as? String {
                    self.alarmOperator = value
                }
                if let value = dict["AlarmValue"] as? String {
                    self.alarmValue = value
                }
            }
        }
        public var alarmStatus: String?

        public var deviceId: String?

        public var deviceType: String?

        public var errorCode: String?

        public var executionBeginTime: String?

        public var executionEndTime: String?

        public var hostName: String?

        public var IP: String?

        public var inspectionAlarmRules: [ListInspectionTasksResponseBody.InspectionTasks.InspectionAlarmRules]?

        public var inspectionMessage: String?

        public var inspectionResult: String?

        public var isInspectionResultTruncation: Bool?

        public var itemId: String?

        public var itemName: String?

        public var model: [String]?

        public var role: String?

        public var scriptId: String?

        public var space: String?

        public var taskId: String?

        public var taskStatus: String?

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
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.executionBeginTime != nil {
                map["ExecutionBeginTime"] = self.executionBeginTime!
            }
            if self.executionEndTime != nil {
                map["ExecutionEndTime"] = self.executionEndTime!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.inspectionAlarmRules != nil {
                var tmp : [Any] = []
                for k in self.inspectionAlarmRules! {
                    tmp.append(k.toMap())
                }
                map["InspectionAlarmRules"] = tmp
            }
            if self.inspectionMessage != nil {
                map["InspectionMessage"] = self.inspectionMessage!
            }
            if self.inspectionResult != nil {
                map["InspectionResult"] = self.inspectionResult!
            }
            if self.isInspectionResultTruncation != nil {
                map["IsInspectionResultTruncation"] = self.isInspectionResultTruncation!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.scriptId != nil {
                map["ScriptId"] = self.scriptId!
            }
            if self.space != nil {
                map["Space"] = self.space!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ExecutionBeginTime"] as? String {
                self.executionBeginTime = value
            }
            if let value = dict["ExecutionEndTime"] as? String {
                self.executionEndTime = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["InspectionAlarmRules"] as? [Any?] {
                var tmp : [ListInspectionTasksResponseBody.InspectionTasks.InspectionAlarmRules] = []
                for v in value {
                    if v != nil {
                        var model = ListInspectionTasksResponseBody.InspectionTasks.InspectionAlarmRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionAlarmRules = tmp
            }
            if let value = dict["InspectionMessage"] as? String {
                self.inspectionMessage = value
            }
            if let value = dict["InspectionResult"] as? String {
                self.inspectionResult = value
            }
            if let value = dict["IsInspectionResultTruncation"] as? Bool {
                self.isInspectionResultTruncation = value
            }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["ItemName"] as? String {
                self.itemName = value
            }
            if let value = dict["Model"] as? [String] {
                self.model = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["ScriptId"] as? String {
                self.scriptId = value
            }
            if let value = dict["Space"] as? String {
                self.space = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var inspectionTasks: [ListInspectionTasksResponseBody.InspectionTasks]?

    public var nextToken: Int32?

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
        if self.inspectionTasks != nil {
            var tmp : [Any] = []
            for k in self.inspectionTasks! {
                tmp.append(k.toMap())
            }
            map["InspectionTasks"] = tmp
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
        if let value = dict["InspectionTasks"] as? [Any?] {
            var tmp : [ListInspectionTasksResponseBody.InspectionTasks] = []
            for v in value {
                if v != nil {
                    var model = ListInspectionTasksResponseBody.InspectionTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionTasks = tmp
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListInspectionTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInspectionTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInspectionTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instanceDeviceMaxCount: String?

        public var instanceEndDate: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceOpenDate: String?

        public var instanceSpec: String?

        public var instanceStatus: String?

        public var parentInstance: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceDeviceMaxCount != nil {
                map["InstanceDeviceMaxCount"] = self.instanceDeviceMaxCount!
            }
            if self.instanceEndDate != nil {
                map["InstanceEndDate"] = self.instanceEndDate!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceOpenDate != nil {
                map["InstanceOpenDate"] = self.instanceOpenDate!
            }
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.parentInstance != nil {
                map["ParentInstance"] = self.parentInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceDeviceMaxCount"] as? String {
                self.instanceDeviceMaxCount = value
            }
            if let value = dict["InstanceEndDate"] as? String {
                self.instanceEndDate = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceOpenDate"] as? String {
                self.instanceOpenDate = value
            }
            if let value = dict["InstanceSpec"] as? String {
                self.instanceSpec = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["ParentInstance"] as? String {
                self.parentInstance = value
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIpBlocksRequest : Tea.TeaModel {
    public var bottomNode: Bool?

    public var category: String?

    public var extAttributes: [String: Any]?

    public var instanceId: String?

    public var ip: String?

    public var ipBlockCode: String?

    public var ipList: [String]?

    public var leafNode: Bool?

    public var maxResults: Int32?

    public var netBusiness: String?

    public var netType: String?

    public var nextToken: String?

    public var parentUid: String?

    public var status: String?

    public var subNetBusiness: String?

    public var topParent: Bool?

    public var treeType: Bool?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bottomNode != nil {
            map["BottomNode"] = self.bottomNode!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipBlockCode != nil {
            map["IpBlockCode"] = self.ipBlockCode!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.leafNode != nil {
            map["LeafNode"] = self.leafNode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.netBusiness != nil {
            map["NetBusiness"] = self.netBusiness!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subNetBusiness != nil {
            map["SubNetBusiness"] = self.subNetBusiness!
        }
        if self.topParent != nil {
            map["TopParent"] = self.topParent!
        }
        if self.treeType != nil {
            map["TreeType"] = self.treeType!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BottomNode"] as? Bool {
            self.bottomNode = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ExtAttributes"] as? [String: Any] {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["IpBlockCode"] as? String {
            self.ipBlockCode = value
        }
        if let value = dict["IpList"] as? [String] {
            self.ipList = value
        }
        if let value = dict["LeafNode"] as? Bool {
            self.leafNode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NetBusiness"] as? String {
            self.netBusiness = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubNetBusiness"] as? String {
            self.subNetBusiness = value
        }
        if let value = dict["TopParent"] as? Bool {
            self.topParent = value
        }
        if let value = dict["TreeType"] as? Bool {
            self.treeType = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class ListIpBlocksShrinkRequest : Tea.TeaModel {
    public var bottomNode: Bool?

    public var category: String?

    public var extAttributesShrink: String?

    public var instanceId: String?

    public var ip: String?

    public var ipBlockCode: String?

    public var ipListShrink: String?

    public var leafNode: Bool?

    public var maxResults: Int32?

    public var netBusiness: String?

    public var netType: String?

    public var nextToken: String?

    public var parentUid: String?

    public var status: String?

    public var subNetBusiness: String?

    public var topParent: Bool?

    public var treeType: Bool?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bottomNode != nil {
            map["BottomNode"] = self.bottomNode!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.extAttributesShrink != nil {
            map["ExtAttributes"] = self.extAttributesShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipBlockCode != nil {
            map["IpBlockCode"] = self.ipBlockCode!
        }
        if self.ipListShrink != nil {
            map["IpList"] = self.ipListShrink!
        }
        if self.leafNode != nil {
            map["LeafNode"] = self.leafNode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.netBusiness != nil {
            map["NetBusiness"] = self.netBusiness!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subNetBusiness != nil {
            map["SubNetBusiness"] = self.subNetBusiness!
        }
        if self.topParent != nil {
            map["TopParent"] = self.topParent!
        }
        if self.treeType != nil {
            map["TreeType"] = self.treeType!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BottomNode"] as? Bool {
            self.bottomNode = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributesShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["IpBlockCode"] as? String {
            self.ipBlockCode = value
        }
        if let value = dict["IpList"] as? String {
            self.ipListShrink = value
        }
        if let value = dict["LeafNode"] as? Bool {
            self.leafNode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NetBusiness"] as? String {
            self.netBusiness = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubNetBusiness"] as? String {
            self.subNetBusiness = value
        }
        if let value = dict["TopParent"] as? Bool {
            self.topParent = value
        }
        if let value = dict["TreeType"] as? Bool {
            self.treeType = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
        }
    }
}

public class ListIpBlocksResponseBody : Tea.TeaModel {
    public class IpBlock : Tea.TeaModel {
        public class Tasks : Tea.TeaModel {
            public class IpList : Tea.TeaModel {
                public var devId: String?

                public var devName: String?

                public var ip: String?

                public var origin: String?

                public var ping: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.devId != nil {
                        map["DevId"] = self.devId!
                    }
                    if self.devName != nil {
                        map["DevName"] = self.devName!
                    }
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    if self.origin != nil {
                        map["Origin"] = self.origin!
                    }
                    if self.ping != nil {
                        map["Ping"] = self.ping!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DevId"] as? String {
                        self.devId = value
                    }
                    if let value = dict["DevName"] as? String {
                        self.devName = value
                    }
                    if let value = dict["Ip"] as? String {
                        self.ip = value
                    }
                    if let value = dict["Origin"] as? String {
                        self.origin = value
                    }
                    if let value = dict["Ping"] as? String {
                        self.ping = value
                    }
                }
            }
            public var domain: String?

            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var ip: String?

            public var ipList: [ListIpBlocksResponseBody.IpBlock.Tasks.IpList]?

            public var msg: String?

            public var status: String?

            public var taskId: String?

            public var totalIpCount: Int64?

            public override init() {
                super.init()
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
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.ipList != nil {
                    var tmp : [Any] = []
                    for k in self.ipList! {
                        tmp.append(k.toMap())
                    }
                    map["IpList"] = tmp
                }
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.totalIpCount != nil {
                    map["TotalIpCount"] = self.totalIpCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtModifiedTime"] as? String {
                    self.gmtModifiedTime = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["IpList"] as? [Any?] {
                    var tmp : [ListIpBlocksResponseBody.IpBlock.Tasks.IpList] = []
                    for v in value {
                        if v != nil {
                            var model = ListIpBlocksResponseBody.IpBlock.Tasks.IpList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ipList = tmp
                }
                if let value = dict["Msg"] as? String {
                    self.msg = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TotalIpCount"] as? Int64 {
                    self.totalIpCount = value
                }
            }
        }
        public class ZoneLayer : Tea.TeaModel {
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
        public var abbr: String?

        public var application: String?

        public var backupDeviceName: String?

        public var businessTypeId: String?

        public var businessTypeName: String?

        public var category: String?

        public var description_: String?

        public var deviceName: String?

        public var extAttributes: [String: Any]?

        public var ipBlockCode: String?

        public var ipBlockId: String?

        public var ipBlocks: [String]?

        public var isLock: Int64?

        public var limitZoneTypes: String?

        public var netBusiness: String?

        public var netType: String?

        public var ownership: String?

        public var parentId: String?

        public var queryIpList: [String]?

        public var splitRate: Double?

        public var status: String?

        public var subBusinessTypeName: String?

        public var tasks: [ListIpBlocksResponseBody.IpBlock.Tasks]?

        public var zoneLayer: [ListIpBlocksResponseBody.IpBlock.ZoneLayer]?

        public var zoneName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abbr != nil {
                map["Abbr"] = self.abbr!
            }
            if self.application != nil {
                map["Application"] = self.application!
            }
            if self.backupDeviceName != nil {
                map["BackupDeviceName"] = self.backupDeviceName!
            }
            if self.businessTypeId != nil {
                map["BusinessTypeId"] = self.businessTypeId!
            }
            if self.businessTypeName != nil {
                map["BusinessTypeName"] = self.businessTypeName!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.extAttributes != nil {
                map["ExtAttributes"] = self.extAttributes!
            }
            if self.ipBlockCode != nil {
                map["IpBlockCode"] = self.ipBlockCode!
            }
            if self.ipBlockId != nil {
                map["IpBlockId"] = self.ipBlockId!
            }
            if self.ipBlocks != nil {
                map["IpBlocks"] = self.ipBlocks!
            }
            if self.isLock != nil {
                map["IsLock"] = self.isLock!
            }
            if self.limitZoneTypes != nil {
                map["LimitZoneTypes"] = self.limitZoneTypes!
            }
            if self.netBusiness != nil {
                map["NetBusiness"] = self.netBusiness!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.ownership != nil {
                map["Ownership"] = self.ownership!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.queryIpList != nil {
                map["QueryIpList"] = self.queryIpList!
            }
            if self.splitRate != nil {
                map["SplitRate"] = self.splitRate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subBusinessTypeName != nil {
                map["SubBusinessTypeName"] = self.subBusinessTypeName!
            }
            if self.tasks != nil {
                var tmp : [Any] = []
                for k in self.tasks! {
                    tmp.append(k.toMap())
                }
                map["Tasks"] = tmp
            }
            if self.zoneLayer != nil {
                var tmp : [Any] = []
                for k in self.zoneLayer! {
                    tmp.append(k.toMap())
                }
                map["ZoneLayer"] = tmp
            }
            if self.zoneName != nil {
                map["ZoneName"] = self.zoneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Abbr"] as? String {
                self.abbr = value
            }
            if let value = dict["Application"] as? String {
                self.application = value
            }
            if let value = dict["BackupDeviceName"] as? String {
                self.backupDeviceName = value
            }
            if let value = dict["BusinessTypeId"] as? String {
                self.businessTypeId = value
            }
            if let value = dict["BusinessTypeName"] as? String {
                self.businessTypeName = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["ExtAttributes"] as? [String: Any] {
                self.extAttributes = value
            }
            if let value = dict["IpBlockCode"] as? String {
                self.ipBlockCode = value
            }
            if let value = dict["IpBlockId"] as? String {
                self.ipBlockId = value
            }
            if let value = dict["IpBlocks"] as? [String] {
                self.ipBlocks = value
            }
            if let value = dict["IsLock"] as? Int64 {
                self.isLock = value
            }
            if let value = dict["LimitZoneTypes"] as? String {
                self.limitZoneTypes = value
            }
            if let value = dict["NetBusiness"] as? String {
                self.netBusiness = value
            }
            if let value = dict["NetType"] as? String {
                self.netType = value
            }
            if let value = dict["Ownership"] as? String {
                self.ownership = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["QueryIpList"] as? [String] {
                self.queryIpList = value
            }
            if let value = dict["SplitRate"] as? Double {
                self.splitRate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubBusinessTypeName"] as? String {
                self.subBusinessTypeName = value
            }
            if let value = dict["Tasks"] as? [Any?] {
                var tmp : [ListIpBlocksResponseBody.IpBlock.Tasks] = []
                for v in value {
                    if v != nil {
                        var model = ListIpBlocksResponseBody.IpBlock.Tasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tasks = tmp
            }
            if let value = dict["ZoneLayer"] as? [Any?] {
                var tmp : [ListIpBlocksResponseBody.IpBlock.ZoneLayer] = []
                for v in value {
                    if v != nil {
                        var model = ListIpBlocksResponseBody.IpBlock.ZoneLayer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneLayer = tmp
            }
            if let value = dict["ZoneName"] as? String {
                self.zoneName = value
            }
        }
    }
    public var ipBlock: [ListIpBlocksResponseBody.IpBlock]?

    public var maxResults: Int32?

    public var nextToken: Int32?

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
        if self.ipBlock != nil {
            var tmp : [Any] = []
            for k in self.ipBlock! {
                tmp.append(k.toMap())
            }
            map["IpBlock"] = tmp
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
        if let value = dict["IpBlock"] as? [Any?] {
            var tmp : [ListIpBlocksResponseBody.IpBlock] = []
            for v in value {
                if v != nil {
                    var model = ListIpBlocksResponseBody.IpBlock()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlock = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListIpBlocksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIpBlocksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIpBlocksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogsRequest : Tea.TeaModel {
    public var alarmStatus: String?

    public var content: String?

    public var deviceId: String?

    public var end: Int64?

    public var instanceId: String?

    public var logType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var sort: String?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class ListLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public class ResourceDevice : Tea.TeaModel {
            public var hostName: String?

            public var physicalSpace: String?

            public override init() {
                super.init()
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
                if self.physicalSpace != nil {
                    map["PhysicalSpace"] = self.physicalSpace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HostName"] as? String {
                    self.hostName = value
                }
                if let value = dict["PhysicalSpace"] as? String {
                    self.physicalSpace = value
                }
            }
        }
        public var alarmObject: String?

        public var alarmStatus: String?

        public var alarmType: String?

        public var deviceId: String?

        public var log: String?

        public var receiveTime: String?

        public var resourceDevice: ListLogsResponseBody.Logs.ResourceDevice?

        public var time: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceDevice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmObject != nil {
                map["AlarmObject"] = self.alarmObject!
            }
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.alarmType != nil {
                map["AlarmType"] = self.alarmType!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.log != nil {
                map["Log"] = self.log!
            }
            if self.receiveTime != nil {
                map["ReceiveTime"] = self.receiveTime!
            }
            if self.resourceDevice != nil {
                map["ResourceDevice"] = self.resourceDevice?.toMap()
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmObject"] as? String {
                self.alarmObject = value
            }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["AlarmType"] as? String {
                self.alarmType = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["Log"] as? String {
                self.log = value
            }
            if let value = dict["ReceiveTime"] as? String {
                self.receiveTime = value
            }
            if let value = dict["ResourceDevice"] as? [String: Any?] {
                var model = ListLogsResponseBody.Logs.ResourceDevice()
                model.fromMap(value)
                self.resourceDevice = model
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
        }
    }
    public var logs: [ListLogsResponseBody.Logs]?

    public var maxResults: Int32?

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
        if self.logs != nil {
            var tmp : [Any] = []
            for k in self.logs! {
                tmp.append(k.toMap())
            }
            map["Logs"] = tmp
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
        if let value = dict["Logs"] as? [Any?] {
            var tmp : [ListLogsResponseBody.Logs] = []
            for v in value {
                if v != nil {
                    var model = ListLogsResponseBody.Logs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logs = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMonitorDataRequest : Tea.TeaModel {
    public var aggregateDataId: String?

    public var aggregationType: String?

    public var appId: String?

    public var dataItem: String?

    public var dataType: String?

    public var dedicatedLineId: String?

    public var deviceId: String?

    public var end: Int64?

    public var instanceId: String?

    public var key: String?

    public var monitorItemId: String?

    public var portCollectionId: String?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregateDataId != nil {
            map["AggregateDataId"] = self.aggregateDataId!
        }
        if self.aggregationType != nil {
            map["AggregationType"] = self.aggregationType!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.dataItem != nil {
            map["DataItem"] = self.dataItem!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataId"] as? String {
            self.aggregateDataId = value
        }
        if let value = dict["AggregationType"] as? String {
            self.aggregationType = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DataItem"] as? String {
            self.dataItem = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class ListMonitorDataResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public var dataItem: String?

        public var key: String?

        public var timestamp: Int64?

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
            if self.dataItem != nil {
                map["DataItem"] = self.dataItem!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataItem"] as? String {
                self.dataItem = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var monitorData: [ListMonitorDataResponseBody.MonitorData]?

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
        if self.monitorData != nil {
            var tmp : [Any] = []
            for k in self.monitorData! {
                tmp.append(k.toMap())
            }
            map["MonitorData"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MonitorData"] as? [Any?] {
            var tmp : [ListMonitorDataResponseBody.MonitorData] = []
            for v in value {
                if v != nil {
                    var model = ListMonitorDataResponseBody.MonitorData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.monitorData = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMonitorDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMonitorDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMonitorDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNotificationHistoriesRequest : Tea.TeaModel {
    public var aggregateDataId: String?

    public var alarmStatus: String?

    public var appId: String?

    public var dedicatedLineId: String?

    public var deviceId: String?

    public var end: Int64?

    public var eventItemId: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var message: String?

    public var monitorItemId: String?

    public var nextToken: String?

    public var notificationGroupId: String?

    public var notificationMode: String?

    public var physicalSpaceId: String?

    public var portCollectionId: String?

    public var start: Int64?

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
        if self.aggregateDataId != nil {
            map["AggregateDataId"] = self.aggregateDataId!
        }
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.eventItemId != nil {
            map["EventItemId"] = self.eventItemId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.monitorItemId != nil {
            map["MonitorItemId"] = self.monitorItemId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.notificationGroupId != nil {
            map["NotificationGroupId"] = self.notificationGroupId!
        }
        if self.notificationMode != nil {
            map["NotificationMode"] = self.notificationMode!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.portCollectionId != nil {
            map["PortCollectionId"] = self.portCollectionId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateDataId"] as? String {
            self.aggregateDataId = value
        }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["EventItemId"] as? String {
            self.eventItemId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MonitorItemId"] as? String {
            self.monitorItemId = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NotificationGroupId"] as? String {
            self.notificationGroupId = value
        }
        if let value = dict["NotificationMode"] as? String {
            self.notificationMode = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PortCollectionId"] as? String {
            self.portCollectionId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListNotificationHistoriesResponseBody : Tea.TeaModel {
    public class NotificationHistories : Tea.TeaModel {
        public var aggregateDataId: String?

        public var alarmStatus: String?

        public var appId: String?

        public var dedicatedLineId: String?

        public var deviceId: String?

        public var message: String?

        public var monitorItemId: String?

        public var notificationGroupId: String?

        public var notificationGroupName: String?

        public var notificationMode: String?

        public var output: String?

        public var portCollectionId: String?

        public var status: String?

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
            if self.aggregateDataId != nil {
                map["AggregateDataId"] = self.aggregateDataId!
            }
            if self.alarmStatus != nil {
                map["AlarmStatus"] = self.alarmStatus!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.dedicatedLineId != nil {
                map["DedicatedLineId"] = self.dedicatedLineId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.monitorItemId != nil {
                map["MonitorItemId"] = self.monitorItemId!
            }
            if self.notificationGroupId != nil {
                map["NotificationGroupId"] = self.notificationGroupId!
            }
            if self.notificationGroupName != nil {
                map["NotificationGroupName"] = self.notificationGroupName!
            }
            if self.notificationMode != nil {
                map["NotificationMode"] = self.notificationMode!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.portCollectionId != nil {
                map["PortCollectionId"] = self.portCollectionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AggregateDataId"] as? String {
                self.aggregateDataId = value
            }
            if let value = dict["AlarmStatus"] as? String {
                self.alarmStatus = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["DedicatedLineId"] as? String {
                self.dedicatedLineId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["MonitorItemId"] as? String {
                self.monitorItemId = value
            }
            if let value = dict["NotificationGroupId"] as? String {
                self.notificationGroupId = value
            }
            if let value = dict["NotificationGroupName"] as? String {
                self.notificationGroupName = value
            }
            if let value = dict["NotificationMode"] as? String {
                self.notificationMode = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["PortCollectionId"] as? String {
                self.portCollectionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var notificationHistories: [ListNotificationHistoriesResponseBody.NotificationHistories]?

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
        if self.notificationHistories != nil {
            var tmp : [Any] = []
            for k in self.notificationHistories! {
                tmp.append(k.toMap())
            }
            map["NotificationHistories"] = tmp
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
        if let value = dict["NotificationHistories"] as? [Any?] {
            var tmp : [ListNotificationHistoriesResponseBody.NotificationHistories] = []
            for v in value {
                if v != nil {
                    var model = ListNotificationHistoriesResponseBody.NotificationHistories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.notificationHistories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNotificationHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNotificationHistoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNotificationHistoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNotificationHistoriesStatisticsRequest : Tea.TeaModel {
    public var end: Int64?

    public var instanceId: String?

    public var isDedicatedLine: Bool?

    public var isDevice: Bool?

    public var isMonitorItem: Bool?

    public var isPhysicalSpace: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var physicalSpaceId: String?

    public var start: Int64?

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
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isDedicatedLine != nil {
            map["IsDedicatedLine"] = self.isDedicatedLine!
        }
        if self.isDevice != nil {
            map["IsDevice"] = self.isDevice!
        }
        if self.isMonitorItem != nil {
            map["IsMonitorItem"] = self.isMonitorItem!
        }
        if self.isPhysicalSpace != nil {
            map["IsPhysicalSpace"] = self.isPhysicalSpace!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsDedicatedLine"] as? Bool {
            self.isDedicatedLine = value
        }
        if let value = dict["IsDevice"] as? Bool {
            self.isDevice = value
        }
        if let value = dict["IsMonitorItem"] as? Bool {
            self.isMonitorItem = value
        }
        if let value = dict["IsPhysicalSpace"] as? Bool {
            self.isPhysicalSpace = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListNotificationHistoriesStatisticsResponseBody : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var count: String?

        public var mode: String?

        public var quota: String?

        public override init() {
            super.init()
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
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Quota"] as? String {
                self.quota = value
            }
        }
    }
    public class Statistics : Tea.TeaModel {
        public var count: String?

        public var name: String?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quota: [ListNotificationHistoriesStatisticsResponseBody.Quota]?

    public var requestId: String?

    public var statistics: [ListNotificationHistoriesStatisticsResponseBody.Statistics]?

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
        if self.quota != nil {
            var tmp : [Any] = []
            for k in self.quota! {
                tmp.append(k.toMap())
            }
            map["Quota"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statistics != nil {
            var tmp : [Any] = []
            for k in self.statistics! {
                tmp.append(k.toMap())
            }
            map["Statistics"] = tmp
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
        if let value = dict["Quota"] as? [Any?] {
            var tmp : [ListNotificationHistoriesStatisticsResponseBody.Quota] = []
            for v in value {
                if v != nil {
                    var model = ListNotificationHistoriesStatisticsResponseBody.Quota()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quota = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Statistics"] as? [Any?] {
            var tmp : [ListNotificationHistoriesStatisticsResponseBody.Statistics] = []
            for v in value {
                if v != nil {
                    var model = ListNotificationHistoriesStatisticsResponseBody.Statistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statistics = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNotificationHistoriesStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNotificationHistoriesStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNotificationHistoriesStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOsVersionsRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListOsVersionsResponseBody : Tea.TeaModel {
    public class OsVersion : Tea.TeaModel {
        public var bootPatch: String?

        public var createTime: String?

        public var featurePatch: String?

        public var fileName: String?

        public var filePath: String?

        public var model: String?

        public var osVersion: String?

        public var osVersionId: String?

        public var status: String?

        public var systemPatch: String?

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
            if self.bootPatch != nil {
                map["BootPatch"] = self.bootPatch!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.featurePatch != nil {
                map["FeaturePatch"] = self.featurePatch!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.osVersion != nil {
                map["OsVersion"] = self.osVersion!
            }
            if self.osVersionId != nil {
                map["OsVersionId"] = self.osVersionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.systemPatch != nil {
                map["SystemPatch"] = self.systemPatch!
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
            if let value = dict["BootPatch"] as? String {
                self.bootPatch = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FeaturePatch"] as? String {
                self.featurePatch = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["OsVersion"] as? String {
                self.osVersion = value
            }
            if let value = dict["OsVersionId"] as? String {
                self.osVersionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SystemPatch"] as? String {
                self.systemPatch = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public var maxResults: Int64?

    public var nextToken: Int32?

    public var osVersion: [ListOsVersionsResponseBody.OsVersion]?

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
        if self.osVersion != nil {
            var tmp : [Any] = []
            for k in self.osVersion! {
                tmp.append(k.toMap())
            }
            map["OsVersion"] = tmp
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
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? Int32 {
            self.nextToken = value
        }
        if let value = dict["OsVersion"] as? [Any?] {
            var tmp : [ListOsVersionsResponseBody.OsVersion] = []
            for v in value {
                if v != nil {
                    var model = ListOsVersionsResponseBody.OsVersion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.osVersion = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListOsVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOsVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOsVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPhysicalSpacesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var physicalSpaceIds: [String]?

    public var physicalSpaceName: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceIds != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIds!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceIds"] as? [String] {
            self.physicalSpaceIds = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
    }
}

public class ListPhysicalSpacesShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var physicalSpaceIdsShrink: String?

    public var physicalSpaceName: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceIdsShrink != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIdsShrink!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceIds"] as? String {
            self.physicalSpaceIdsShrink = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
    }
}

public class ListPhysicalSpacesResponseBody : Tea.TeaModel {
    public class PhysicalSpaces : Tea.TeaModel {
        public var address: String?

        public var adminSpace: String?

        public var city: String?

        public var country: String?

        public var instance: String?

        public var owner: String?

        public var physicalSpaceId: String?

        public var physicalSpaceName: String?

        public var province: String?

        public var remark: String?

        public var securityDomainList: [String]?

        public var spaceAbbreviation: String?

        public var spaceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.adminSpace != nil {
                map["AdminSpace"] = self.adminSpace!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.instance != nil {
                map["Instance"] = self.instance!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.physicalSpaceId != nil {
                map["PhysicalSpaceId"] = self.physicalSpaceId!
            }
            if self.physicalSpaceName != nil {
                map["PhysicalSpaceName"] = self.physicalSpaceName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.securityDomainList != nil {
                map["SecurityDomainList"] = self.securityDomainList!
            }
            if self.spaceAbbreviation != nil {
                map["SpaceAbbreviation"] = self.spaceAbbreviation!
            }
            if self.spaceType != nil {
                map["SpaceType"] = self.spaceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AdminSpace"] as? String {
                self.adminSpace = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Instance"] as? String {
                self.instance = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["PhysicalSpaceId"] as? String {
                self.physicalSpaceId = value
            }
            if let value = dict["PhysicalSpaceName"] as? String {
                self.physicalSpaceName = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SecurityDomainList"] as? [String] {
                self.securityDomainList = value
            }
            if let value = dict["SpaceAbbreviation"] as? String {
                self.spaceAbbreviation = value
            }
            if let value = dict["SpaceType"] as? String {
                self.spaceType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: Int32?

    public var physicalSpaces: [ListPhysicalSpacesResponseBody.PhysicalSpaces]?

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
        if self.physicalSpaces != nil {
            var tmp : [Any] = []
            for k in self.physicalSpaces! {
                tmp.append(k.toMap())
            }
            map["PhysicalSpaces"] = tmp
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
        if let value = dict["NextToken"] as? Int32 {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaces"] as? [Any?] {
            var tmp : [ListPhysicalSpacesResponseBody.PhysicalSpaces] = []
            for v in value {
                if v != nil {
                    var model = ListPhysicalSpacesResponseBody.PhysicalSpaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.physicalSpaces = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPhysicalSpacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPhysicalSpacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPhysicalSpacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

public class ListSpaceModelsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var spaceType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListSpaceModelsResponseBody : Tea.TeaModel {
    public class SpaceModel : Tea.TeaModel {
        public class Sort : Tea.TeaModel {
            public var level: Int64?

            public var levelName: String?

            public override init() {
                super.init()
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
                    map["Level"] = self.level!
                }
                if self.levelName != nil {
                    map["LevelName"] = self.levelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Level"] as? Int64 {
                    self.level = value
                }
                if let value = dict["LevelName"] as? String {
                    self.levelName = value
                }
            }
        }
        public var createTime: String?

        public var sort: [ListSpaceModelsResponseBody.SpaceModel.Sort]?

        public var spaceModelId: String?

        public var spaceType: String?

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
            if self.sort != nil {
                var tmp : [Any] = []
                for k in self.sort! {
                    tmp.append(k.toMap())
                }
                map["Sort"] = tmp
            }
            if self.spaceModelId != nil {
                map["SpaceModelId"] = self.spaceModelId!
            }
            if self.spaceType != nil {
                map["SpaceType"] = self.spaceType!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Sort"] as? [Any?] {
                var tmp : [ListSpaceModelsResponseBody.SpaceModel.Sort] = []
                for v in value {
                    if v != nil {
                        var model = ListSpaceModelsResponseBody.SpaceModel.Sort()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sort = tmp
            }
            if let value = dict["SpaceModelId"] as? String {
                self.spaceModelId = value
            }
            if let value = dict["SpaceType"] as? String {
                self.spaceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public var spaceModel: [ListSpaceModelsResponseBody.SpaceModel]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceModel != nil {
            var tmp : [Any] = []
            for k in self.spaceModel! {
                tmp.append(k.toMap())
            }
            map["SpaceModel"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpaceModel"] as? [Any?] {
            var tmp : [ListSpaceModelsResponseBody.SpaceModel] = []
            for v in value {
                if v != nil {
                    var model = ListSpaceModelsResponseBody.SpaceModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spaceModel = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSpaceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSpaceModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSpaceModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTasksHistoriesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var instanceId: String?

    public var itemId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
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
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListTasksHistoriesResponseBody : Tea.TeaModel {
    public class InspectionTasks : Tea.TeaModel {
        public class InspectionAlarmRules : Tea.TeaModel {
            public var actualValue: String?

            public var alarmExpression: String?

            public var alarmLevel: String?

            public var alarmOperator: String?

            public var alarmValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualValue != nil {
                    map["ActualValue"] = self.actualValue!
                }
                if self.alarmExpression != nil {
                    map["AlarmExpression"] = self.alarmExpression!
                }
                if self.alarmLevel != nil {
                    map["AlarmLevel"] = self.alarmLevel!
                }
                if self.alarmOperator != nil {
                    map["AlarmOperator"] = self.alarmOperator!
                }
                if self.alarmValue != nil {
                    map["AlarmValue"] = self.alarmValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualValue"] as? String {
                    self.actualValue = value
                }
                if let value = dict["AlarmExpression"] as? String {
                    self.alarmExpression = value
                }
                if let value = dict["AlarmLevel"] as? String {
                    self.alarmLevel = value
                }
                if let value = dict["AlarmOperator"] as? String {
                    self.alarmOperator = value
                }
                if let value = dict["AlarmValue"] as? String {
                    self.alarmValue = value
                }
            }
        }
        public var deviceDisplay: String?

        public var errorCode: String?

        public var executionBeginTime: String?

        public var executionEndTime: String?

        public var inspectionAlarmRules: [ListTasksHistoriesResponseBody.InspectionTasks.InspectionAlarmRules]?

        public var inspectionResult: String?

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
            if self.deviceDisplay != nil {
                map["DeviceDisplay"] = self.deviceDisplay!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.executionBeginTime != nil {
                map["ExecutionBeginTime"] = self.executionBeginTime!
            }
            if self.executionEndTime != nil {
                map["ExecutionEndTime"] = self.executionEndTime!
            }
            if self.inspectionAlarmRules != nil {
                var tmp : [Any] = []
                for k in self.inspectionAlarmRules! {
                    tmp.append(k.toMap())
                }
                map["InspectionAlarmRules"] = tmp
            }
            if self.inspectionResult != nil {
                map["InspectionResult"] = self.inspectionResult!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceDisplay"] as? String {
                self.deviceDisplay = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ExecutionBeginTime"] as? String {
                self.executionBeginTime = value
            }
            if let value = dict["ExecutionEndTime"] as? String {
                self.executionEndTime = value
            }
            if let value = dict["InspectionAlarmRules"] as? [Any?] {
                var tmp : [ListTasksHistoriesResponseBody.InspectionTasks.InspectionAlarmRules] = []
                for v in value {
                    if v != nil {
                        var model = ListTasksHistoriesResponseBody.InspectionTasks.InspectionAlarmRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionAlarmRules = tmp
            }
            if let value = dict["InspectionResult"] as? String {
                self.inspectionResult = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var inspectionTasks: [ListTasksHistoriesResponseBody.InspectionTasks]?

    public var nextToken: Int32?

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
        if self.inspectionTasks != nil {
            var tmp : [Any] = []
            for k in self.inspectionTasks! {
                tmp.append(k.toMap())
            }
            map["InspectionTasks"] = tmp
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
        if let value = dict["InspectionTasks"] as? [Any?] {
            var tmp : [ListTasksHistoriesResponseBody.InspectionTasks] = []
            for v in value {
                if v != nil {
                    var model = ListTasksHistoriesResponseBody.InspectionTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionTasks = tmp
        }
        if let value = dict["NextToken"] as? Int32 {
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

public class ListTasksHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksHistoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTasksHistoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTreePhysicalSpacesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: String?

    public var nextToken: String?

    public var physicalSpaceIds: [String]?

    public var physicalSpaceName: String?

    public var tree: Bool?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceIds != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIds!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.tree != nil {
            map["Tree"] = self.tree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceIds"] as? [String] {
            self.physicalSpaceIds = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Tree"] as? Bool {
            self.tree = value
        }
    }
}

public class ListTreePhysicalSpacesShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: String?

    public var nextToken: String?

    public var physicalSpaceIdsShrink: String?

    public var physicalSpaceName: String?

    public var tree: Bool?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.physicalSpaceIdsShrink != nil {
            map["PhysicalSpaceIds"] = self.physicalSpaceIdsShrink!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.tree != nil {
            map["Tree"] = self.tree!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaceIds"] as? String {
            self.physicalSpaceIdsShrink = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Tree"] as? Bool {
            self.tree = value
        }
    }
}

public class ListTreePhysicalSpacesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: Int32?

    public var physicalSpaces: [PhysicalSpaceDto]?

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
        if self.physicalSpaces != nil {
            var tmp : [Any] = []
            for k in self.physicalSpaces! {
                tmp.append(k.toMap())
            }
            map["PhysicalSpaces"] = tmp
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
        if let value = dict["NextToken"] as? Int32 {
            self.nextToken = value
        }
        if let value = dict["PhysicalSpaces"] as? [Any?] {
            var tmp : [PhysicalSpaceDto] = []
            for v in value {
                if v != nil {
                    var model = PhysicalSpaceDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.physicalSpaces = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTreePhysicalSpacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTreePhysicalSpacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTreePhysicalSpacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LockSpaceModelRequest : Tea.TeaModel {
    public var instanceId: String?

    public var spaceModelId: String?

    public override init() {
        super.init()
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
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
    }
}

public class LockSpaceModelResponseBody : Tea.TeaModel {
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

public class LockSpaceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockSpaceModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LockSpaceModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryTasksRequest : Tea.TeaModel {
    public class RetryTasks : Tea.TeaModel {
        public var deviceId: String?

        public var itemName: String?

        public var scriptId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.scriptId != nil {
                map["ScriptId"] = self.scriptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["ItemName"] as? String {
                self.itemName = value
            }
            if let value = dict["ScriptId"] as? String {
                self.scriptId = value
            }
        }
    }
    public var instanceId: String?

    public var retryTasks: [RetryTasksRequest.RetryTasks]?

    public override init() {
        super.init()
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
        if self.retryTasks != nil {
            var tmp : [Any] = []
            for k in self.retryTasks! {
                tmp.append(k.toMap())
            }
            map["RetryTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RetryTasks"] as? [Any?] {
            var tmp : [RetryTasksRequest.RetryTasks] = []
            for v in value {
                if v != nil {
                    var model = RetryTasksRequest.RetryTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.retryTasks = tmp
        }
    }
}

public class RetryTasksShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var retryTasksShrink: String?

    public override init() {
        super.init()
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
        if self.retryTasksShrink != nil {
            map["RetryTasks"] = self.retryTasksShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RetryTasks"] as? String {
            self.retryTasksShrink = value
        }
    }
}

public class RetryTasksResponseBody : Tea.TeaModel {
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

public class RetryTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDedicatedLineRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var contact: String?

    public var dedicatedLineGateway: String?

    public var dedicatedLineId: String?

    public var dedicatedLineIp: String?

    public var dedicatedLineRole: String?

    public var description_: String?

    public var deviceId: String?

    public var devicePort: String?

    public var expirationDate: String?

    public var extAttributes: String?

    public var instanceId: String?

    public var isp: String?

    public var ispId: String?

    public var keyword: String?

    public var onlineDate: String?

    public var phone: String?

    public var physicalSpaceId: String?

    public override init() {
        super.init()
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
            map["Bandwidth"] = self.bandwidth!
        }
        if self.contact != nil {
            map["Contact"] = self.contact!
        }
        if self.dedicatedLineGateway != nil {
            map["DedicatedLineGateway"] = self.dedicatedLineGateway!
        }
        if self.dedicatedLineId != nil {
            map["DedicatedLineId"] = self.dedicatedLineId!
        }
        if self.dedicatedLineIp != nil {
            map["DedicatedLineIp"] = self.dedicatedLineIp!
        }
        if self.dedicatedLineRole != nil {
            map["DedicatedLineRole"] = self.dedicatedLineRole!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.devicePort != nil {
            map["DevicePort"] = self.devicePort!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isp != nil {
            map["Isp"] = self.isp!
        }
        if self.ispId != nil {
            map["IspId"] = self.ispId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.onlineDate != nil {
            map["OnlineDate"] = self.onlineDate!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Contact"] as? String {
            self.contact = value
        }
        if let value = dict["DedicatedLineGateway"] as? String {
            self.dedicatedLineGateway = value
        }
        if let value = dict["DedicatedLineId"] as? String {
            self.dedicatedLineId = value
        }
        if let value = dict["DedicatedLineIp"] as? String {
            self.dedicatedLineIp = value
        }
        if let value = dict["DedicatedLineRole"] as? String {
            self.dedicatedLineRole = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["DevicePort"] as? String {
            self.devicePort = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Isp"] as? String {
            self.isp = value
        }
        if let value = dict["IspId"] as? String {
            self.ispId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OnlineDate"] as? String {
            self.onlineDate = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
    }
}

public class UpdateDedicatedLineResponseBody : Tea.TeaModel {
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

public class UpdateDedicatedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDedicatedLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDedicatedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var enablePassword: String?

    public var extAttributes: String?

    public var hostName: String?

    public var instanceId: String?

    public var ip: String?

    public var loginPassword: String?

    public var loginType: String?

    public var loginUsername: String?

    public var mac: String?

    public var model: String?

    public var physicalSpaceId: String?

    public var securityDomain: String?

    public var serviceStatus: String?

    public var sn: String?

    public var snmpAccountType: String?

    public var snmpAccountVersion: String?

    public var snmpAuthPassphrase: String?

    public var snmpAuthProtocol: String?

    public var snmpCommunity: String?

    public var snmpPrivacyPassphrase: String?

    public var snmpPrivacyProtocol: String?

    public var snmpSecurityLevel: String?

    public var snmpUsername: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.enablePassword != nil {
            map["EnablePassword"] = self.enablePassword!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.loginPassword != nil {
            map["LoginPassword"] = self.loginPassword!
        }
        if self.loginType != nil {
            map["LoginType"] = self.loginType!
        }
        if self.loginUsername != nil {
            map["LoginUsername"] = self.loginUsername!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        if self.snmpAccountType != nil {
            map["SnmpAccountType"] = self.snmpAccountType!
        }
        if self.snmpAccountVersion != nil {
            map["SnmpAccountVersion"] = self.snmpAccountVersion!
        }
        if self.snmpAuthPassphrase != nil {
            map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
        }
        if self.snmpAuthProtocol != nil {
            map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
        }
        if self.snmpCommunity != nil {
            map["SnmpCommunity"] = self.snmpCommunity!
        }
        if self.snmpPrivacyPassphrase != nil {
            map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
        }
        if self.snmpPrivacyProtocol != nil {
            map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
        }
        if self.snmpSecurityLevel != nil {
            map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
        }
        if self.snmpUsername != nil {
            map["SnmpUsername"] = self.snmpUsername!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["EnablePassword"] as? String {
            self.enablePassword = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["LoginPassword"] as? String {
            self.loginPassword = value
        }
        if let value = dict["LoginType"] as? String {
            self.loginType = value
        }
        if let value = dict["LoginUsername"] as? String {
            self.loginUsername = value
        }
        if let value = dict["Mac"] as? String {
            self.mac = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["Sn"] as? String {
            self.sn = value
        }
        if let value = dict["SnmpAccountType"] as? String {
            self.snmpAccountType = value
        }
        if let value = dict["SnmpAccountVersion"] as? String {
            self.snmpAccountVersion = value
        }
        if let value = dict["SnmpAuthPassphrase"] as? String {
            self.snmpAuthPassphrase = value
        }
        if let value = dict["SnmpAuthProtocol"] as? String {
            self.snmpAuthProtocol = value
        }
        if let value = dict["SnmpCommunity"] as? String {
            self.snmpCommunity = value
        }
        if let value = dict["SnmpPrivacyPassphrase"] as? String {
            self.snmpPrivacyPassphrase = value
        }
        if let value = dict["SnmpPrivacyProtocol"] as? String {
            self.snmpPrivacyProtocol = value
        }
        if let value = dict["SnmpSecurityLevel"] as? String {
            self.snmpSecurityLevel = value
        }
        if let value = dict["SnmpUsername"] as? String {
            self.snmpUsername = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class UpdateDeviceResponseBody : Tea.TeaModel {
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

public class UpdateDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeviceFormRequest : Tea.TeaModel {
    public class AttributeList : Tea.TeaModel {
        public var attributeFormat: String?

        public var attributeFuzzyQuery: Bool?

        public var attributeKey: String?

        public var attributeName: String?

        public var attributePlaceholder: String?

        public var attributeQuery: Bool?

        public var attributeReference: String?

        public var attributeRequirement: Bool?

        public var attributeSequence: Int32?

        public var attributeTableDisplay: Bool?

        public var attributeType: String?

        public var attributeUniqueness: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributeFormat != nil {
                map["AttributeFormat"] = self.attributeFormat!
            }
            if self.attributeFuzzyQuery != nil {
                map["AttributeFuzzyQuery"] = self.attributeFuzzyQuery!
            }
            if self.attributeKey != nil {
                map["AttributeKey"] = self.attributeKey!
            }
            if self.attributeName != nil {
                map["AttributeName"] = self.attributeName!
            }
            if self.attributePlaceholder != nil {
                map["AttributePlaceholder"] = self.attributePlaceholder!
            }
            if self.attributeQuery != nil {
                map["AttributeQuery"] = self.attributeQuery!
            }
            if self.attributeReference != nil {
                map["AttributeReference"] = self.attributeReference!
            }
            if self.attributeRequirement != nil {
                map["AttributeRequirement"] = self.attributeRequirement!
            }
            if self.attributeSequence != nil {
                map["AttributeSequence"] = self.attributeSequence!
            }
            if self.attributeTableDisplay != nil {
                map["AttributeTableDisplay"] = self.attributeTableDisplay!
            }
            if self.attributeType != nil {
                map["AttributeType"] = self.attributeType!
            }
            if self.attributeUniqueness != nil {
                map["AttributeUniqueness"] = self.attributeUniqueness!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributeFormat"] as? String {
                self.attributeFormat = value
            }
            if let value = dict["AttributeFuzzyQuery"] as? Bool {
                self.attributeFuzzyQuery = value
            }
            if let value = dict["AttributeKey"] as? String {
                self.attributeKey = value
            }
            if let value = dict["AttributeName"] as? String {
                self.attributeName = value
            }
            if let value = dict["AttributePlaceholder"] as? String {
                self.attributePlaceholder = value
            }
            if let value = dict["AttributeQuery"] as? Bool {
                self.attributeQuery = value
            }
            if let value = dict["AttributeReference"] as? String {
                self.attributeReference = value
            }
            if let value = dict["AttributeRequirement"] as? Bool {
                self.attributeRequirement = value
            }
            if let value = dict["AttributeSequence"] as? Int32 {
                self.attributeSequence = value
            }
            if let value = dict["AttributeTableDisplay"] as? Bool {
                self.attributeTableDisplay = value
            }
            if let value = dict["AttributeType"] as? String {
                self.attributeType = value
            }
            if let value = dict["AttributeUniqueness"] as? Bool {
                self.attributeUniqueness = value
            }
        }
    }
    public var accountConfig: Bool?

    public var attributeList: [UpdateDeviceFormRequest.AttributeList]?

    public var configCompare: Bool?

    public var detailDisplay: Bool?

    public var deviceFormId: String?

    public var instanceId: String?

    public var relatedDeviceFormId: String?

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
        if self.accountConfig != nil {
            map["AccountConfig"] = self.accountConfig!
        }
        if self.attributeList != nil {
            var tmp : [Any] = []
            for k in self.attributeList! {
                tmp.append(k.toMap())
            }
            map["AttributeList"] = tmp
        }
        if self.configCompare != nil {
            map["ConfigCompare"] = self.configCompare!
        }
        if self.detailDisplay != nil {
            map["DetailDisplay"] = self.detailDisplay!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.relatedDeviceFormId != nil {
            map["RelatedDeviceFormId"] = self.relatedDeviceFormId!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountConfig"] as? Bool {
            self.accountConfig = value
        }
        if let value = dict["AttributeList"] as? [Any?] {
            var tmp : [UpdateDeviceFormRequest.AttributeList] = []
            for v in value {
                if v != nil {
                    var model = UpdateDeviceFormRequest.AttributeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attributeList = tmp
        }
        if let value = dict["ConfigCompare"] as? Bool {
            self.configCompare = value
        }
        if let value = dict["DetailDisplay"] as? Bool {
            self.detailDisplay = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RelatedDeviceFormId"] as? String {
            self.relatedDeviceFormId = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
    }
}

public class UpdateDeviceFormShrinkRequest : Tea.TeaModel {
    public var accountConfig: Bool?

    public var attributeListShrink: String?

    public var configCompare: Bool?

    public var detailDisplay: Bool?

    public var deviceFormId: String?

    public var instanceId: String?

    public var relatedDeviceFormId: String?

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
        if self.accountConfig != nil {
            map["AccountConfig"] = self.accountConfig!
        }
        if self.attributeListShrink != nil {
            map["AttributeList"] = self.attributeListShrink!
        }
        if self.configCompare != nil {
            map["ConfigCompare"] = self.configCompare!
        }
        if self.detailDisplay != nil {
            map["DetailDisplay"] = self.detailDisplay!
        }
        if self.deviceFormId != nil {
            map["DeviceFormId"] = self.deviceFormId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.relatedDeviceFormId != nil {
            map["RelatedDeviceFormId"] = self.relatedDeviceFormId!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountConfig"] as? Bool {
            self.accountConfig = value
        }
        if let value = dict["AttributeList"] as? String {
            self.attributeListShrink = value
        }
        if let value = dict["ConfigCompare"] as? Bool {
            self.configCompare = value
        }
        if let value = dict["DetailDisplay"] as? Bool {
            self.detailDisplay = value
        }
        if let value = dict["DeviceFormId"] as? String {
            self.deviceFormId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RelatedDeviceFormId"] as? String {
            self.relatedDeviceFormId = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
    }
}

public class UpdateDeviceFormResponseBody : Tea.TeaModel {
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

public class UpdateDeviceFormResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeviceFormResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDeviceFormResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDevicePropertyRequest : Tea.TeaModel {
    public var devicePropertyId: String?

    public var instanceId: String?

    public var propertyContent: String?

    public var propertyFormat: String?

    public var propertyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devicePropertyId != nil {
            map["DevicePropertyId"] = self.devicePropertyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.propertyContent != nil {
            map["PropertyContent"] = self.propertyContent!
        }
        if self.propertyFormat != nil {
            map["PropertyFormat"] = self.propertyFormat!
        }
        if self.propertyName != nil {
            map["PropertyName"] = self.propertyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DevicePropertyId"] as? String {
            self.devicePropertyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PropertyContent"] as? String {
            self.propertyContent = value
        }
        if let value = dict["PropertyFormat"] as? String {
            self.propertyFormat = value
        }
        if let value = dict["PropertyName"] as? String {
            self.propertyName = value
        }
    }
}

public class UpdateDevicePropertyResponseBody : Tea.TeaModel {
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

public class UpdateDevicePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDevicePropertyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDevicePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDevicesRequest : Tea.TeaModel {
    public var deviceIds: [String]?

    public var enablePassword: String?

    public var extAttributes: String?

    public var instanceId: String?

    public var loginPassword: String?

    public var loginType: String?

    public var loginUsername: String?

    public var model: String?

    public var physicalSpaceId: String?

    public var physicalSpaceName: String?

    public var securityDomain: String?

    public var serviceStatus: String?

    public var snmpAccountType: String?

    public var snmpAccountVersion: String?

    public var snmpAuthPassphrase: String?

    public var snmpAuthProtocol: String?

    public var snmpCommunity: String?

    public var snmpPrivacyPassphrase: String?

    public var snmpPrivacyProtocol: String?

    public var snmpSecurityLevel: String?

    public var snmpUsername: String?

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
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.enablePassword != nil {
            map["EnablePassword"] = self.enablePassword!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginPassword != nil {
            map["LoginPassword"] = self.loginPassword!
        }
        if self.loginType != nil {
            map["LoginType"] = self.loginType!
        }
        if self.loginUsername != nil {
            map["LoginUsername"] = self.loginUsername!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.snmpAccountType != nil {
            map["SnmpAccountType"] = self.snmpAccountType!
        }
        if self.snmpAccountVersion != nil {
            map["SnmpAccountVersion"] = self.snmpAccountVersion!
        }
        if self.snmpAuthPassphrase != nil {
            map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
        }
        if self.snmpAuthProtocol != nil {
            map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
        }
        if self.snmpCommunity != nil {
            map["SnmpCommunity"] = self.snmpCommunity!
        }
        if self.snmpPrivacyPassphrase != nil {
            map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
        }
        if self.snmpPrivacyProtocol != nil {
            map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
        }
        if self.snmpSecurityLevel != nil {
            map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
        }
        if self.snmpUsername != nil {
            map["SnmpUsername"] = self.snmpUsername!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? [String] {
            self.deviceIds = value
        }
        if let value = dict["EnablePassword"] as? String {
            self.enablePassword = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginPassword"] as? String {
            self.loginPassword = value
        }
        if let value = dict["LoginType"] as? String {
            self.loginType = value
        }
        if let value = dict["LoginUsername"] as? String {
            self.loginUsername = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["SnmpAccountType"] as? String {
            self.snmpAccountType = value
        }
        if let value = dict["SnmpAccountVersion"] as? String {
            self.snmpAccountVersion = value
        }
        if let value = dict["SnmpAuthPassphrase"] as? String {
            self.snmpAuthPassphrase = value
        }
        if let value = dict["SnmpAuthProtocol"] as? String {
            self.snmpAuthProtocol = value
        }
        if let value = dict["SnmpCommunity"] as? String {
            self.snmpCommunity = value
        }
        if let value = dict["SnmpPrivacyPassphrase"] as? String {
            self.snmpPrivacyPassphrase = value
        }
        if let value = dict["SnmpPrivacyProtocol"] as? String {
            self.snmpPrivacyProtocol = value
        }
        if let value = dict["SnmpSecurityLevel"] as? String {
            self.snmpSecurityLevel = value
        }
        if let value = dict["SnmpUsername"] as? String {
            self.snmpUsername = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class UpdateDevicesShrinkRequest : Tea.TeaModel {
    public var deviceIdsShrink: String?

    public var enablePassword: String?

    public var extAttributes: String?

    public var instanceId: String?

    public var loginPassword: String?

    public var loginType: String?

    public var loginUsername: String?

    public var model: String?

    public var physicalSpaceId: String?

    public var physicalSpaceName: String?

    public var securityDomain: String?

    public var serviceStatus: String?

    public var snmpAccountType: String?

    public var snmpAccountVersion: String?

    public var snmpAuthPassphrase: String?

    public var snmpAuthProtocol: String?

    public var snmpCommunity: String?

    public var snmpPrivacyPassphrase: String?

    public var snmpPrivacyProtocol: String?

    public var snmpSecurityLevel: String?

    public var snmpUsername: String?

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
        if self.deviceIdsShrink != nil {
            map["DeviceIds"] = self.deviceIdsShrink!
        }
        if self.enablePassword != nil {
            map["EnablePassword"] = self.enablePassword!
        }
        if self.extAttributes != nil {
            map["ExtAttributes"] = self.extAttributes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginPassword != nil {
            map["LoginPassword"] = self.loginPassword!
        }
        if self.loginType != nil {
            map["LoginType"] = self.loginType!
        }
        if self.loginUsername != nil {
            map["LoginUsername"] = self.loginUsername!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.securityDomain != nil {
            map["SecurityDomain"] = self.securityDomain!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.snmpAccountType != nil {
            map["SnmpAccountType"] = self.snmpAccountType!
        }
        if self.snmpAccountVersion != nil {
            map["SnmpAccountVersion"] = self.snmpAccountVersion!
        }
        if self.snmpAuthPassphrase != nil {
            map["SnmpAuthPassphrase"] = self.snmpAuthPassphrase!
        }
        if self.snmpAuthProtocol != nil {
            map["SnmpAuthProtocol"] = self.snmpAuthProtocol!
        }
        if self.snmpCommunity != nil {
            map["SnmpCommunity"] = self.snmpCommunity!
        }
        if self.snmpPrivacyPassphrase != nil {
            map["SnmpPrivacyPassphrase"] = self.snmpPrivacyPassphrase!
        }
        if self.snmpPrivacyProtocol != nil {
            map["SnmpPrivacyProtocol"] = self.snmpPrivacyProtocol!
        }
        if self.snmpSecurityLevel != nil {
            map["SnmpSecurityLevel"] = self.snmpSecurityLevel!
        }
        if self.snmpUsername != nil {
            map["SnmpUsername"] = self.snmpUsername!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? String {
            self.deviceIdsShrink = value
        }
        if let value = dict["EnablePassword"] as? String {
            self.enablePassword = value
        }
        if let value = dict["ExtAttributes"] as? String {
            self.extAttributes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginPassword"] as? String {
            self.loginPassword = value
        }
        if let value = dict["LoginType"] as? String {
            self.loginType = value
        }
        if let value = dict["LoginUsername"] as? String {
            self.loginUsername = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["SecurityDomain"] as? String {
            self.securityDomain = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["SnmpAccountType"] as? String {
            self.snmpAccountType = value
        }
        if let value = dict["SnmpAccountVersion"] as? String {
            self.snmpAccountVersion = value
        }
        if let value = dict["SnmpAuthPassphrase"] as? String {
            self.snmpAuthPassphrase = value
        }
        if let value = dict["SnmpAuthProtocol"] as? String {
            self.snmpAuthProtocol = value
        }
        if let value = dict["SnmpCommunity"] as? String {
            self.snmpCommunity = value
        }
        if let value = dict["SnmpPrivacyPassphrase"] as? String {
            self.snmpPrivacyPassphrase = value
        }
        if let value = dict["SnmpPrivacyProtocol"] as? String {
            self.snmpPrivacyProtocol = value
        }
        if let value = dict["SnmpSecurityLevel"] as? String {
            self.snmpSecurityLevel = value
        }
        if let value = dict["SnmpUsername"] as? String {
            self.snmpUsername = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class UpdateDevicesResponseBody : Tea.TeaModel {
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

public class UpdateDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEventDefinitionRequest : Tea.TeaModel {
    public var eventId: String?

    public var eventName: String?

    public var eventType: String?

    public var instanceId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class UpdateEventDefinitionResponseBody : Tea.TeaModel {
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

public class UpdateEventDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventDefinitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateEventDefinitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
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

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOsVersionRequest : Tea.TeaModel {
    public var bootPatch: String?

    public var featurePatch: String?

    public var fileName: String?

    public var filePath: String?

    public var instanceId: String?

    public var model: String?

    public var osVersion: String?

    public var osVersionId: String?

    public var status: String?

    public var systemPatch: String?

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
        if self.bootPatch != nil {
            map["BootPatch"] = self.bootPatch!
        }
        if self.featurePatch != nil {
            map["FeaturePatch"] = self.featurePatch!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion!
        }
        if self.osVersionId != nil {
            map["OsVersionId"] = self.osVersionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.systemPatch != nil {
            map["SystemPatch"] = self.systemPatch!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BootPatch"] as? String {
            self.bootPatch = value
        }
        if let value = dict["FeaturePatch"] as? String {
            self.featurePatch = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OsVersion"] as? String {
            self.osVersion = value
        }
        if let value = dict["OsVersionId"] as? String {
            self.osVersionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SystemPatch"] as? String {
            self.systemPatch = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class UpdateOsVersionResponseBody : Tea.TeaModel {
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

public class UpdateOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOsVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePhysicalSpaceRequest : Tea.TeaModel {
    public var address: String?

    public var adminSpace: String?

    public var city: String?

    public var country: String?

    public var instanceId: String?

    public var moveAction: String?

    public var owner: String?

    public var parentUid: String?

    public var physicalSpaceId: String?

    public var physicalSpaceName: String?

    public var province: String?

    public var remark: String?

    public var securityDomainList: [String]?

    public var spaceAbbreviation: String?

    public var spaceType: String?

    public var targetUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.adminSpace != nil {
            map["AdminSpace"] = self.adminSpace!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moveAction != nil {
            map["MoveAction"] = self.moveAction!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityDomainList != nil {
            map["SecurityDomainList"] = self.securityDomainList!
        }
        if self.spaceAbbreviation != nil {
            map["SpaceAbbreviation"] = self.spaceAbbreviation!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.targetUid != nil {
            map["TargetUid"] = self.targetUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AdminSpace"] as? String {
            self.adminSpace = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MoveAction"] as? String {
            self.moveAction = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityDomainList"] as? [String] {
            self.securityDomainList = value
        }
        if let value = dict["SpaceAbbreviation"] as? String {
            self.spaceAbbreviation = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["TargetUid"] as? String {
            self.targetUid = value
        }
    }
}

public class UpdatePhysicalSpaceShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var adminSpace: String?

    public var city: String?

    public var country: String?

    public var instanceId: String?

    public var moveAction: String?

    public var owner: String?

    public var parentUid: String?

    public var physicalSpaceId: String?

    public var physicalSpaceName: String?

    public var province: String?

    public var remark: String?

    public var securityDomainListShrink: String?

    public var spaceAbbreviation: String?

    public var spaceType: String?

    public var targetUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.adminSpace != nil {
            map["AdminSpace"] = self.adminSpace!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moveAction != nil {
            map["MoveAction"] = self.moveAction!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.physicalSpaceId != nil {
            map["PhysicalSpaceId"] = self.physicalSpaceId!
        }
        if self.physicalSpaceName != nil {
            map["PhysicalSpaceName"] = self.physicalSpaceName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityDomainListShrink != nil {
            map["SecurityDomainList"] = self.securityDomainListShrink!
        }
        if self.spaceAbbreviation != nil {
            map["SpaceAbbreviation"] = self.spaceAbbreviation!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        if self.targetUid != nil {
            map["TargetUid"] = self.targetUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AdminSpace"] as? String {
            self.adminSpace = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MoveAction"] as? String {
            self.moveAction = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PhysicalSpaceId"] as? String {
            self.physicalSpaceId = value
        }
        if let value = dict["PhysicalSpaceName"] as? String {
            self.physicalSpaceName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityDomainList"] as? String {
            self.securityDomainListShrink = value
        }
        if let value = dict["SpaceAbbreviation"] as? String {
            self.spaceAbbreviation = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
        if let value = dict["TargetUid"] as? String {
            self.targetUid = value
        }
    }
}

public class UpdatePhysicalSpaceResponseBody : Tea.TeaModel {
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

public class UpdatePhysicalSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhysicalSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePhysicalSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSpaceModelRequest : Tea.TeaModel {
    public class Sort : Tea.TeaModel {
        public var level: Int64?

        public var levelName: String?

        public override init() {
            super.init()
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
                map["Level"] = self.level!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Level"] as? Int64 {
                self.level = value
            }
            if let value = dict["LevelName"] as? String {
                self.levelName = value
            }
        }
    }
    public var instanceId: String?

    public var sort: [UpdateSpaceModelRequest.Sort]?

    public var spaceModelId: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.sort != nil {
            var tmp : [Any] = []
            for k in self.sort! {
                tmp.append(k.toMap())
            }
            map["Sort"] = tmp
        }
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Sort"] as? [Any?] {
            var tmp : [UpdateSpaceModelRequest.Sort] = []
            for v in value {
                if v != nil {
                    var model = UpdateSpaceModelRequest.Sort()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sort = tmp
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class UpdateSpaceModelShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var sortShrink: String?

    public var spaceModelId: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.spaceModelId != nil {
            map["SpaceModelId"] = self.spaceModelId!
        }
        if self.spaceType != nil {
            map["SpaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["SpaceModelId"] as? String {
            self.spaceModelId = value
        }
        if let value = dict["SpaceType"] as? String {
            self.spaceType = value
        }
    }
}

public class UpdateSpaceModelResponseBody : Tea.TeaModel {
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

public class UpdateSpaceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSpaceModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSpaceModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSpaceModelInstanceRequest : Tea.TeaModel {
    public var instance: String?

    public var instanceId: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
            map["Instance"] = self.instance!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instance"] as? String {
            self.instance = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SpaceId"] as? String {
            self.spaceId = value
        }
    }
}

public class UpdateSpaceModelInstanceResponseBody : Tea.TeaModel {
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

public class UpdateSpaceModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSpaceModelInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSpaceModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
