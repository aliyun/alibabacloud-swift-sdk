import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BackfillStrategy : Tea.TeaModel {
    public var enabled: Bool?

    public var endTime: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class BatchGroup : Tea.TeaModel {
    public var batchId: String?

    public var records: [ExperimentRecord]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? String {
            self.batchId = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExperimentRecord] = []
            for v in value {
                if v != nil {
                    var model = ExperimentRecord()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
    }
}

public class ConnectorProperties : Tea.TeaModel {
    public var channelType: String?

    public var dryRunRequestBody: String?

    public var modelList: String?

    public var network: String?

    public var protocol_: String?

    public var region: String?

    public var responseBodyPath: String?

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
        if self.channelType != nil {
            map["channelType"] = self.channelType!
        }
        if self.dryRunRequestBody != nil {
            map["dryRunRequestBody"] = self.dryRunRequestBody!
        }
        if self.modelList != nil {
            map["modelList"] = self.modelList!
        }
        if self.network != nil {
            map["network"] = self.network!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.responseBodyPath != nil {
            map["responseBodyPath"] = self.responseBodyPath!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelType"] as? String {
            self.channelType = value
        }
        if let value = dict["dryRunRequestBody"] as? String {
            self.dryRunRequestBody = value
        }
        if let value = dict["modelList"] as? String {
            self.modelList = value
        }
        if let value = dict["network"] as? String {
            self.network = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["responseBodyPath"] as? String {
            self.responseBodyPath = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ContinuousStrategy : Tea.TeaModel {
    public var dataDelayMinutes: Int32?

    public var enabled: Bool?

    public var intervalUnit: String?

    public var intervalValue: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataDelayMinutes != nil {
            map["dataDelayMinutes"] = self.dataDelayMinutes!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.intervalUnit != nil {
            map["intervalUnit"] = self.intervalUnit!
        }
        if self.intervalValue != nil {
            map["intervalValue"] = self.intervalValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataDelayMinutes"] as? Int32 {
            self.dataDelayMinutes = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["intervalUnit"] as? String {
            self.intervalUnit = value
        }
        if let value = dict["intervalValue"] as? Int32 {
            self.intervalValue = value
        }
    }
}

public class DataFilter : Tea.TeaModel {
    public var maxRecords: Int32?

    public var provided: [String: Any]?

    public var query: String?

    public var samplingRate: Int32?

    public var serviceNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxRecords != nil {
            map["maxRecords"] = self.maxRecords!
        }
        if self.provided != nil {
            map["provided"] = self.provided!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.samplingRate != nil {
            map["samplingRate"] = self.samplingRate!
        }
        if self.serviceNames != nil {
            map["serviceNames"] = self.serviceNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxRecords"] as? Int32 {
            self.maxRecords = value
        }
        if let value = dict["provided"] as? [String: Any] {
            self.provided = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["samplingRate"] as? Int32 {
            self.samplingRate = value
        }
        if let value = dict["serviceNames"] as? [String] {
            self.serviceNames = value
        }
    }
}

public class Evaluator : Tea.TeaModel {
    public var config: [String: Any]?

    public var evaluatorRef: String?

    public var filters: [String: Any]?

    public var name: String?

    public var resultName: String?

    public var resultType: String?

    public var type: String?

    public var variableMapping: [String: String]?

    public override init() {
        super.init()
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
        if self.evaluatorRef != nil {
            map["evaluatorRef"] = self.evaluatorRef!
        }
        if self.filters != nil {
            map["filters"] = self.filters!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resultName != nil {
            map["resultName"] = self.resultName!
        }
        if self.resultType != nil {
            map["resultType"] = self.resultType!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.variableMapping != nil {
            map["variableMapping"] = self.variableMapping!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["evaluatorRef"] as? String {
            self.evaluatorRef = value
        }
        if let value = dict["filters"] as? [String: Any] {
            self.filters = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resultName"] as? String {
            self.resultName = value
        }
        if let value = dict["resultType"] as? String {
            self.resultType = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["variableMapping"] as? [String: String] {
            self.variableMapping = value
        }
    }
}

public class ExperimentConfig : Tea.TeaModel {
    public var endpointConnectorId: String?

    public var label: String?

    public var modelName: String?

    public var modelParameters: ModelParameters?

    public var modelProvider: String?

    public var name: String?

    public var promptTemplate: [PromptTemplateItem]?

    public var requestBodyTemplate: String?

    public var requestMethod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modelParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointConnectorId != nil {
            map["endpointConnectorId"] = self.endpointConnectorId!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.modelParameters != nil {
            map["modelParameters"] = self.modelParameters?.toMap()
        }
        if self.modelProvider != nil {
            map["modelProvider"] = self.modelProvider!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.promptTemplate != nil {
            var tmp : [Any] = []
            for k in self.promptTemplate! {
                tmp.append(k.toMap())
            }
            map["promptTemplate"] = tmp
        }
        if self.requestBodyTemplate != nil {
            map["requestBodyTemplate"] = self.requestBodyTemplate!
        }
        if self.requestMethod != nil {
            map["requestMethod"] = self.requestMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endpointConnectorId"] as? String {
            self.endpointConnectorId = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["modelParameters"] as? [String: Any?] {
            var model = ModelParameters()
            model.fromMap(value)
            self.modelParameters = model
        }
        if let value = dict["modelProvider"] as? String {
            self.modelProvider = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["promptTemplate"] as? [Any?] {
            var tmp : [PromptTemplateItem] = []
            for v in value {
                if v != nil {
                    var model = PromptTemplateItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptTemplate = tmp
        }
        if let value = dict["requestBodyTemplate"] as? String {
            self.requestBodyTemplate = value
        }
        if let value = dict["requestMethod"] as? String {
            self.requestMethod = value
        }
    }
}

public class ExperimentPlanData : Tea.TeaModel {
    public var createdAt: Int64?

    public var datasetId: String?

    public var description_: String?

    public var experimentCount: Int32?

    public var experimentType: String?

    public var planId: String?

    public var planName: String?

    public var querySql: String?

    public var status: String?

    public var updatedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.experimentCount != nil {
            map["experimentCount"] = self.experimentCount!
        }
        if self.experimentType != nil {
            map["experimentType"] = self.experimentType!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.querySql != nil {
            map["querySql"] = self.querySql!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["experimentCount"] as? Int32 {
            self.experimentCount = value
        }
        if let value = dict["experimentType"] as? String {
            self.experimentType = value
        }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["querySql"] as? String {
            self.querySql = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class ExperimentRecord : Tea.TeaModel {
    public var completedAt: Int64?

    public var completedTasks: Int32?

    public var dataSourceType: String?

    public var datasetId: String?

    public var datasetProject: String?

    public var errorMessage: String?

    public var evaluationTaskId: String?

    public var evaluators: [Evaluator]?

    public var executedAt: Int64?

    public var experimentConfig: [ExperimentConfig]?

    public var experimentPlanId: String?

    public var failedTasks: Int32?

    public var input: [String: Any]?

    public var modelNames: [String]?

    public var planName: String?

    public var progress: Double?

    public var querySql: String?

    public var recordId: String?

    public var recordName: String?

    public var selectedItemIds: [String]?

    public var status: String?

    public var totalTasks: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completedAt != nil {
            map["completedAt"] = self.completedAt!
        }
        if self.completedTasks != nil {
            map["completedTasks"] = self.completedTasks!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.datasetProject != nil {
            map["datasetProject"] = self.datasetProject!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.evaluationTaskId != nil {
            map["evaluationTaskId"] = self.evaluationTaskId!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.executedAt != nil {
            map["executedAt"] = self.executedAt!
        }
        if self.experimentConfig != nil {
            var tmp : [Any] = []
            for k in self.experimentConfig! {
                tmp.append(k.toMap())
            }
            map["experimentConfig"] = tmp
        }
        if self.experimentPlanId != nil {
            map["experimentPlanId"] = self.experimentPlanId!
        }
        if self.failedTasks != nil {
            map["failedTasks"] = self.failedTasks!
        }
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.modelNames != nil {
            map["modelNames"] = self.modelNames!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.querySql != nil {
            map["querySql"] = self.querySql!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        if self.recordName != nil {
            map["recordName"] = self.recordName!
        }
        if self.selectedItemIds != nil {
            map["selectedItemIds"] = self.selectedItemIds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalTasks != nil {
            map["totalTasks"] = self.totalTasks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["completedAt"] as? Int64 {
            self.completedAt = value
        }
        if let value = dict["completedTasks"] as? Int32 {
            self.completedTasks = value
        }
        if let value = dict["dataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["datasetProject"] as? String {
            self.datasetProject = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["evaluationTaskId"] as? String {
            self.evaluationTaskId = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["executedAt"] as? Int64 {
            self.executedAt = value
        }
        if let value = dict["experimentConfig"] as? [Any?] {
            var tmp : [ExperimentConfig] = []
            for v in value {
                if v != nil {
                    var model = ExperimentConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experimentConfig = tmp
        }
        if let value = dict["experimentPlanId"] as? String {
            self.experimentPlanId = value
        }
        if let value = dict["failedTasks"] as? Int32 {
            self.failedTasks = value
        }
        if let value = dict["input"] as? [String: Any] {
            self.input = value
        }
        if let value = dict["modelNames"] as? [String] {
            self.modelNames = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["progress"] as? Double {
            self.progress = value
        }
        if let value = dict["querySql"] as? String {
            self.querySql = value
        }
        if let value = dict["recordId"] as? String {
            self.recordId = value
        }
        if let value = dict["recordName"] as? String {
            self.recordName = value
        }
        if let value = dict["selectedItemIds"] as? [String] {
            self.selectedItemIds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalTasks"] as? Int32 {
            self.totalTasks = value
        }
    }
}

public class IndexJsonKey : Tea.TeaModel {
    public var chn: Bool?

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
        if self.chn != nil {
            map["chn"] = self.chn!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chn"] as? Bool {
            self.chn = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IndexKey : Tea.TeaModel {
    public var chn: Bool?

    public var embedding: String?

    public var jsonKeys: [String: IndexJsonKey]?

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
        if self.chn != nil {
            map["chn"] = self.chn!
        }
        if self.embedding != nil {
            map["embedding"] = self.embedding!
        }
        if self.jsonKeys != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.jsonKeys! {
                tmp[k] = v.toMap()
            }
            map["jsonKeys"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chn"] as? Bool {
            self.chn = value
        }
        if let value = dict["embedding"] as? String {
            self.embedding = value
        }
        if let value = dict["jsonKeys"] as? [String: Any?] {
            var tmp : [String: IndexJsonKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexJsonKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.jsonKeys = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ModelParameters : Tea.TeaModel {
    public var frequencyPenalty: Double?

    public var maxTokens: Int64?

    public var presencePenalty: Double?

    public var stopSequences: [String]?

    public var temperature: Double?

    public var topK: Int32?

    public var topP: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.frequencyPenalty != nil {
            map["frequencyPenalty"] = self.frequencyPenalty!
        }
        if self.maxTokens != nil {
            map["maxTokens"] = self.maxTokens!
        }
        if self.presencePenalty != nil {
            map["presencePenalty"] = self.presencePenalty!
        }
        if self.stopSequences != nil {
            map["stopSequences"] = self.stopSequences!
        }
        if self.temperature != nil {
            map["temperature"] = self.temperature!
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        if self.topP != nil {
            map["topP"] = self.topP!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["frequencyPenalty"] as? Double {
            self.frequencyPenalty = value
        }
        if let value = dict["maxTokens"] as? Int64 {
            self.maxTokens = value
        }
        if let value = dict["presencePenalty"] as? Double {
            self.presencePenalty = value
        }
        if let value = dict["stopSequences"] as? [String] {
            self.stopSequences = value
        }
        if let value = dict["temperature"] as? Double {
            self.temperature = value
        }
        if let value = dict["topK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["topP"] as? Double {
            self.topP = value
        }
    }
}

public class OfflineExperimentConfig : Tea.TeaModel {
    public var desc: String?

    public var label: String?

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
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class PromptTemplateItem : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
    }
}

public class RunStrategies : Tea.TeaModel {
    public var backfill: BackfillStrategy?

    public var continuous: ContinuousStrategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backfill?.validate()
        try self.continuous?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backfill != nil {
            map["backfill"] = self.backfill?.toMap()
        }
        if self.continuous != nil {
            map["continuous"] = self.continuous?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backfill"] as? [String: Any?] {
            var model = BackfillStrategy()
            model.fromMap(value)
            self.backfill = model
        }
        if let value = dict["continuous"] as? [String: Any?] {
            var model = ContinuousStrategy()
            model.fromMap(value)
            self.continuous = model
        }
    }
}

public class AddDatasetDataRequest : Tea.TeaModel {
    public var dataArray: [[String: Any]]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataArray != nil {
            map["dataArray"] = self.dataArray!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataArray"] as? [[String: Any]] {
            self.dataArray = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class AddDatasetDataResponseBody : Tea.TeaModel {
    public var affectedRows: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectedRows != nil {
            map["affectedRows"] = self.affectedRows!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["affectedRows"] as? Int32 {
            self.affectedRows = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddDatasetDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDatasetDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDatasetDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPipelineRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class CancelPipelineRunResponseBody : Tea.TeaModel {
    public var finishTime: String?

    public var requestId: String?

    public var runId: String?

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
        if self.finishTime != nil {
            map["finishTime"] = self.finishTime!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CancelPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelPipelineRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentSpaceRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var cmsWorkspace: String?

    public var description_: String?

    public var trajectoryStoreEnabled: Bool?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.cmsWorkspace != nil {
            map["cmsWorkspace"] = self.cmsWorkspace!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.trajectoryStoreEnabled != nil {
            map["trajectoryStoreEnabled"] = self.trajectoryStoreEnabled!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["cmsWorkspace"] as? String {
            self.cmsWorkspace = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["trajectoryStoreEnabled"] as? Bool {
            self.trajectoryStoreEnabled = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateAgentSpaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAgentSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAgentSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateContextStoreRequest : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public class Source : Tea.TeaModel {
            public var agentSpace: String?

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
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public var metadataField: [String: String]?

        public var miningInterval: String?

        public var serviceNames: [String]?

        public var source: CreateContextStoreRequest.Config.Source?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metadataField != nil {
                map["metadataField"] = self.metadataField!
            }
            if self.miningInterval != nil {
                map["miningInterval"] = self.miningInterval!
            }
            if self.serviceNames != nil {
                map["serviceNames"] = self.serviceNames!
            }
            if self.source != nil {
                map["source"] = self.source?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metadataField"] as? [String: String] {
                self.metadataField = value
            }
            if let value = dict["miningInterval"] as? String {
                self.miningInterval = value
            }
            if let value = dict["serviceNames"] as? [String] {
                self.serviceNames = value
            }
            if let value = dict["source"] as? [String: Any?] {
                var model = CreateContextStoreRequest.Config.Source()
                model.fromMap(value)
                self.source = model
            }
        }
    }
    public var config: CreateContextStoreRequest.Config?

    public var contextStoreName: String?

    public var contextType: String?

    public var description_: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.contextStoreName != nil {
            map["contextStoreName"] = self.contextStoreName!
        }
        if self.contextType != nil {
            map["contextType"] = self.contextType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = CreateContextStoreRequest.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["contextStoreName"] as? String {
            self.contextStoreName = value
        }
        if let value = dict["contextType"] as? String {
            self.contextType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateContextStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateContextStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContextStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateContextStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateContextStoreAPIKeyRequest : Tea.TeaModel {
    public var name: String?

    public var clientToken: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateContextStoreAPIKeyResponseBody : Tea.TeaModel {
    public var apiKey: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateContextStoreAPIKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContextStoreAPIKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateContextStoreAPIKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetRequest : Tea.TeaModel {
    public var datasetName: String?

    public var description_: String?

    public var schema: [String: IndexKey]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["datasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.schema != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.schema! {
                tmp[k] = v.toMap()
            }
            map["schema"] = tmp
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var tmp : [String: IndexKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.schema = tmp
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateDatasetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEvaluationTaskRequest : Tea.TeaModel {
    public var channel: String?

    public var config: [String: String]?

    public var dataFilter: String?

    public var dataType: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var runStrategies: RunStrategies?

    public var tags: [String: String]?

    public var taskMode: String?

    public var taskName: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runStrategies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.dataFilter != nil {
            map["dataFilter"] = self.dataFilter!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.runStrategies != nil {
            map["runStrategies"] = self.runStrategies?.toMap()
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.taskMode != nil {
            map["taskMode"] = self.taskMode!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["dataFilter"] as? String {
            self.dataFilter = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["runStrategies"] as? [String: Any?] {
            var model = RunStrategies()
            model.fromMap(value)
            self.runStrategies = model
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["taskMode"] as? String {
            self.taskMode = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateEvaluationTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

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
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateEvaluationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEvaluationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEvaluationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEvaluatorRequest : Tea.TeaModel {
    public var annotations: [String]?

    public var config: [String: Any]?

    public var description_: String?

    public var displayName: String?

    public var metricName: String?

    public var name: String?

    public var properties: [String: Any]?

    public var type: String?

    public var version: String?

    public var versionDescription: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            map["annotations"] = self.annotations!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.metricName != nil {
            map["metricName"] = self.metricName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.versionDescription != nil {
            map["versionDescription"] = self.versionDescription!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotations"] as? [String] {
            self.annotations = value
        }
        if let value = dict["config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["metricName"] as? String {
            self.metricName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["versionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateEvaluatorResponseBody : Tea.TeaModel {
    public var name: String?

    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class CreateEvaluatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEvaluatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEvaluatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEvaluatorSkillRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var content: String?

        public var name: String?

        public var remark: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
        }
    }
    public var agentSpace: String?

    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var files: [CreateEvaluatorSkillRequest.Files]?

    public var skillName: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [CreateEvaluatorSkillRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = CreateEvaluatorSkillRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateEvaluatorSkillResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var skillName: String?

    public override init() {
        super.init()
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
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
    }
}

public class CreateEvaluatorSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEvaluatorSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEvaluatorSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentPlanRequest : Tea.TeaModel {
    public var datasetId: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var experimentType: String?

    public var experiments: [ExperimentConfig]?

    public var input: [String: Any]?

    public var planName: String?

    public var querySql: String?

    public var selectedItemIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.experimentType != nil {
            map["experimentType"] = self.experimentType!
        }
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["experiments"] = tmp
        }
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.querySql != nil {
            map["querySql"] = self.querySql!
        }
        if self.selectedItemIds != nil {
            map["selectedItemIds"] = self.selectedItemIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["experimentType"] as? String {
            self.experimentType = value
        }
        if let value = dict["experiments"] as? [Any?] {
            var tmp : [ExperimentConfig] = []
            for v in value {
                if v != nil {
                    var model = ExperimentConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experiments = tmp
        }
        if let value = dict["input"] as? [String: Any] {
            self.input = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["querySql"] as? String {
            self.querySql = value
        }
        if let value = dict["selectedItemIds"] as? [String] {
            self.selectedItemIds = value
        }
    }
}

public class CreateExperimentPlanResponseBody : Tea.TeaModel {
    public var message: String?

    public var planId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentRunRequest : Tea.TeaModel {
    public var completedAt: Int64?

    public var completedTasks: Int32?

    public var executedAt: Int64?

    public var experimentPlanId: String?

    public var failedTasks: Int32?

    public var offlineExperiments: [OfflineExperimentConfig]?

    public var recordName: String?

    public var status: String?

    public var totalTasks: Int32?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completedAt != nil {
            map["completedAt"] = self.completedAt!
        }
        if self.completedTasks != nil {
            map["completedTasks"] = self.completedTasks!
        }
        if self.executedAt != nil {
            map["executedAt"] = self.executedAt!
        }
        if self.experimentPlanId != nil {
            map["experimentPlanId"] = self.experimentPlanId!
        }
        if self.failedTasks != nil {
            map["failedTasks"] = self.failedTasks!
        }
        if self.offlineExperiments != nil {
            var tmp : [Any] = []
            for k in self.offlineExperiments! {
                tmp.append(k.toMap())
            }
            map["offlineExperiments"] = tmp
        }
        if self.recordName != nil {
            map["recordName"] = self.recordName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalTasks != nil {
            map["totalTasks"] = self.totalTasks!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["completedAt"] as? Int64 {
            self.completedAt = value
        }
        if let value = dict["completedTasks"] as? Int32 {
            self.completedTasks = value
        }
        if let value = dict["executedAt"] as? Int64 {
            self.executedAt = value
        }
        if let value = dict["experimentPlanId"] as? String {
            self.experimentPlanId = value
        }
        if let value = dict["failedTasks"] as? Int32 {
            self.failedTasks = value
        }
        if let value = dict["offlineExperiments"] as? [Any?] {
            var tmp : [OfflineExperimentConfig] = []
            for v in value {
                if v != nil {
                    var model = OfflineExperimentConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.offlineExperiments = tmp
        }
        if let value = dict["recordName"] as? String {
            self.recordName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalTasks"] as? Int32 {
            self.totalTasks = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateExperimentRunResponseBody : Tea.TeaModel {
    public var message: String?

    public var recordId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["recordId"] as? String {
            self.recordId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateExperimentRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateExperimentRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePipelineRequest : Tea.TeaModel {
    public class ExecutePolicy : Tea.TeaModel {
        public class RunOnce : Tea.TeaModel {
            public var fromTime: Int64?

            public var toTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.toTime != nil {
                    map["toTime"] = self.toTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["toTime"] as? Int64 {
                    self.toTime = value
                }
            }
        }
        public class Scheduled : Tea.TeaModel {
            public var fromTime: Int64?

            public var interval: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.interval != nil {
                    map["interval"] = self.interval!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["interval"] as? String {
                    self.interval = value
                }
            }
        }
        public var mode: String?

        public var runOnce: CreatePipelineRequest.ExecutePolicy.RunOnce?

        public var scheduled: CreatePipelineRequest.ExecutePolicy.Scheduled?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runOnce?.validate()
            try self.scheduled?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.runOnce != nil {
                map["runOnce"] = self.runOnce?.toMap()
            }
            if self.scheduled != nil {
                map["scheduled"] = self.scheduled?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["runOnce"] as? [String: Any?] {
                var model = CreatePipelineRequest.ExecutePolicy.RunOnce()
                model.fromMap(value)
                self.runOnce = model
            }
            if let value = dict["scheduled"] as? [String: Any?] {
                var model = CreatePipelineRequest.ExecutePolicy.Scheduled()
                model.fromMap(value)
                self.scheduled = model
            }
        }
    }
    public class Pipeline : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var id: String?

            public var parameters: [String: Any]?

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
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var nodes: [CreatePipelineRequest.Pipeline.Nodes]?

        public override init() {
            super.init()
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
                map["nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [CreatePipelineRequest.Pipeline.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = CreatePipelineRequest.Pipeline.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public class Sink : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var agentSpace: String?

            public var dataset: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.dataset != nil {
                    map["dataset"] = self.dataset!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["dataset"] as? String {
                    self.dataset = value
                }
            }
        }
        public var dataset: CreatePipelineRequest.Sink.Dataset?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataset != nil {
                map["dataset"] = self.dataset?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataset"] as? [String: Any?] {
                var model = CreatePipelineRequest.Sink.Dataset()
                model.fromMap(value)
                self.dataset = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Source : Tea.TeaModel {
        public class Logstore : Tea.TeaModel {
            public var logstore: String?

            public var project: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.query != nil {
                    map["query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["query"] as? String {
                    self.query = value
                }
            }
        }
        public var logstore: CreatePipelineRequest.Source.Logstore?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logstore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstore != nil {
                map["logstore"] = self.logstore?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? [String: Any?] {
                var model = CreatePipelineRequest.Source.Logstore()
                model.fromMap(value)
                self.logstore = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var description_: String?

    public var executePolicy: CreatePipelineRequest.ExecutePolicy?

    public var pipeline: CreatePipelineRequest.Pipeline?

    public var pipelineName: String?

    public var sink: CreatePipelineRequest.Sink?

    public var source: CreatePipelineRequest.Source?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executePolicy?.validate()
        try self.pipeline?.validate()
        try self.sink?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executePolicy != nil {
            map["executePolicy"] = self.executePolicy?.toMap()
        }
        if self.pipeline != nil {
            map["pipeline"] = self.pipeline?.toMap()
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.sink != nil {
            map["sink"] = self.sink?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executePolicy"] as? [String: Any?] {
            var model = CreatePipelineRequest.ExecutePolicy()
            model.fromMap(value)
            self.executePolicy = model
        }
        if let value = dict["pipeline"] as? [String: Any?] {
            var model = CreatePipelineRequest.Pipeline()
            model.fromMap(value)
            self.pipeline = model
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["sink"] as? [String: Any?] {
            var model = CreatePipelineRequest.Sink()
            model.fromMap(value)
            self.sink = model
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = CreatePipelineRequest.Source()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreatePipelineResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentSpaceRequest : Tea.TeaModel {
    public var deleteCmsWorkspace: Bool?

    public var deleteMseNamespace: Bool?

    public var deleteSlsProject: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteCmsWorkspace != nil {
            map["deleteCmsWorkspace"] = self.deleteCmsWorkspace!
        }
        if self.deleteMseNamespace != nil {
            map["deleteMseNamespace"] = self.deleteMseNamespace!
        }
        if self.deleteSlsProject != nil {
            map["deleteSlsProject"] = self.deleteSlsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deleteCmsWorkspace"] as? Bool {
            self.deleteCmsWorkspace = value
        }
        if let value = dict["deleteMseNamespace"] as? Bool {
            self.deleteMseNamespace = value
        }
        if let value = dict["deleteSlsProject"] as? Bool {
            self.deleteSlsProject = value
        }
    }
}

public class DeleteAgentSpaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAgentSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAgentSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAgentSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContextStoreRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteContextStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteContextStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContextStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteContextStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContextStoreAPIKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteContextStoreAPIKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteContextStoreAPIKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContextStoreAPIKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteContextStoreAPIKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteDatasetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEvaluationRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteEvaluationRunResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEvaluationRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEvaluationRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEvaluationRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEvaluationTaskRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteEvaluationTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEvaluationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEvaluationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEvaluationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEvaluatorRequest : Tea.TeaModel {
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
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class DeleteEvaluatorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEvaluatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEvaluatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEvaluatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEvaluatorSkillRequest : Tea.TeaModel {
    public var agentSpace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
    }
}

public class DeleteEvaluatorSkillResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEvaluatorSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEvaluatorSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEvaluatorSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentPlanRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteExperimentPlanResponseBody : Tea.TeaModel {
    public var planId: String?

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
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteExperimentRunResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteExperimentRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteExperimentRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePipelineRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeletePipelineResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var language: String?

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
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var internetEndpoint: String?

        public var localName: String?

        public var regionId: String?

        public var vpcEndpoint: String?

        public override init() {
            super.init()
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
                map["internetEndpoint"] = self.internetEndpoint!
            }
            if self.localName != nil {
                map["localName"] = self.localName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.vpcEndpoint != nil {
                map["vpcEndpoint"] = self.vpcEndpoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["internetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["localName"] as? String {
                self.localName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["vpcEndpoint"] as? String {
                self.vpcEndpoint = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["regions"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regions"] as? [Any?] {
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
        if let value = dict["requestId"] as? String {
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

public class ExecuteQueryRequest : Tea.TeaModel {
    public var from: Int32?

    public var length: Int32?

    public var maxOutputLength: Int32?

    public var offset: Int32?

    public var query: String?

    public var to: Int32?

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
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.length != nil {
            map["length"] = self.length!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["length"] as? Int32 {
            self.length = value
        }
        if let value = dict["maxOutputLength"] as? Int32 {
            self.maxOutputLength = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class ExecuteQueryResponseBody : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public class Truncation : Tea.TeaModel {
            public var truncated: Bool?

            public var truncatedColumnIndexes: [[Int32]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.truncated != nil {
                    map["truncated"] = self.truncated!
                }
                if self.truncatedColumnIndexes != nil {
                    map["truncatedColumnIndexes"] = self.truncatedColumnIndexes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["truncated"] as? Bool {
                    self.truncated = value
                }
                if let value = dict["truncatedColumnIndexes"] as? [[Int32]] {
                    self.truncatedColumnIndexes = value
                }
            }
        }
        public var affectedRows: Int32?

        public var count: Int32?

        public var elapsedMillisecond: Int64?

        public var progress: String?

        public var truncation: ExecuteQueryResponseBody.Meta.Truncation?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.truncation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedRows != nil {
                map["affectedRows"] = self.affectedRows!
            }
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.elapsedMillisecond != nil {
                map["elapsedMillisecond"] = self.elapsedMillisecond!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            if self.truncation != nil {
                map["truncation"] = self.truncation?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["affectedRows"] as? Int32 {
                self.affectedRows = value
            }
            if let value = dict["count"] as? Int32 {
                self.count = value
            }
            if let value = dict["elapsedMillisecond"] as? Int64 {
                self.elapsedMillisecond = value
            }
            if let value = dict["progress"] as? String {
                self.progress = value
            }
            if let value = dict["truncation"] as? [String: Any?] {
                var model = ExecuteQueryResponseBody.Meta.Truncation()
                model.fromMap(value)
                self.truncation = model
            }
        }
    }
    public var columnTypes: [String]?

    public var columns: [String]?

    public var meta: ExecuteQueryResponseBody.Meta?

    public var requestId: String?

    public var rows: [[Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.meta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnTypes != nil {
            map["columnTypes"] = self.columnTypes!
        }
        if self.columns != nil {
            map["columns"] = self.columns!
        }
        if self.meta != nil {
            map["meta"] = self.meta?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.rows != nil {
            map["rows"] = self.rows!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columnTypes"] as? [String] {
            self.columnTypes = value
        }
        if let value = dict["columns"] as? [String] {
            self.columns = value
        }
        if let value = dict["meta"] as? [String: Any?] {
            var model = ExecuteQueryResponseBody.Meta()
            model.fromMap(value)
            self.meta = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["rows"] as? [[Any]] {
            self.rows = value
        }
    }
}

public class ExecuteQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentSpaceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetAgentSpaceResponseBody : Tea.TeaModel {
    public class MseNamespace : Tea.TeaModel {
        public var namespaceId: String?

        public var namespaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaceId != nil {
                map["namespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["namespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
        }
    }
    public var agentSpace: String?

    public var cmsWorkspace: String?

    public var cmsWorkspaceBindType: String?

    public var createTime: String?

    public var description_: String?

    public var mseNamespace: GetAgentSpaceResponseBody.MseNamespace?

    public var regionId: String?

    public var requestId: String?

    public var slsProject: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mseNamespace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.cmsWorkspace != nil {
            map["cmsWorkspace"] = self.cmsWorkspace!
        }
        if self.cmsWorkspaceBindType != nil {
            map["cmsWorkspaceBindType"] = self.cmsWorkspaceBindType!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.mseNamespace != nil {
            map["mseNamespace"] = self.mseNamespace?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["cmsWorkspace"] as? String {
            self.cmsWorkspace = value
        }
        if let value = dict["cmsWorkspaceBindType"] as? String {
            self.cmsWorkspaceBindType = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["mseNamespace"] as? [String: Any?] {
            var model = GetAgentSpaceResponseBody.MseNamespace()
            model.fromMap(value)
            self.mseNamespace = model
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["slsProject"] as? String {
            self.slsProject = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetAgentSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAgentSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetContextStoreRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetContextStoreResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public class Source : Tea.TeaModel {
            public var agentSpace: String?

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
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public var metadataField: [String: String]?

        public var miningInterval: String?

        public var serviceNames: [String]?

        public var source: GetContextStoreResponseBody.Config.Source?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metadataField != nil {
                map["metadataField"] = self.metadataField!
            }
            if self.miningInterval != nil {
                map["miningInterval"] = self.miningInterval!
            }
            if self.serviceNames != nil {
                map["serviceNames"] = self.serviceNames!
            }
            if self.source != nil {
                map["source"] = self.source?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metadataField"] as? [String: String] {
                self.metadataField = value
            }
            if let value = dict["miningInterval"] as? String {
                self.miningInterval = value
            }
            if let value = dict["serviceNames"] as? [String] {
                self.serviceNames = value
            }
            if let value = dict["source"] as? [String: Any?] {
                var model = GetContextStoreResponseBody.Config.Source()
                model.fromMap(value)
                self.source = model
            }
        }
    }
    public var agentSpace: String?

    public var config: GetContextStoreResponseBody.Config?

    public var contextStoreName: String?

    public var contextType: String?

    public var createTime: String?

    public var description_: String?

    public var regionId: String?

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
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.contextStoreName != nil {
            map["contextStoreName"] = self.contextStoreName!
        }
        if self.contextType != nil {
            map["contextType"] = self.contextType!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["config"] as? [String: Any?] {
            var model = GetContextStoreResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["contextStoreName"] as? String {
            self.contextStoreName = value
        }
        if let value = dict["contextType"] as? String {
            self.contextType = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetContextStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetContextStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetContextStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetContextStoreAPIKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetContextStoreAPIKeyResponseBody : Tea.TeaModel {
    public var agentSpace: String?

    public var apiKey: String?

    public var contextStoreName: String?

    public var createTime: String?

    public var name: String?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.contextStoreName != nil {
            map["contextStoreName"] = self.contextStoreName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["contextStoreName"] as? String {
            self.contextStoreName = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetContextStoreAPIKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetContextStoreAPIKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetContextStoreAPIKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetDatasetResponseBody : Tea.TeaModel {
    public var agentSpace: String?

    public var createTime: String?

    public var datasetName: String?

    public var description_: String?

    public var isFavorite: Bool?

    public var regionId: String?

    public var requestId: String?

    public var schema: [String: IndexKey]?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.datasetName != nil {
            map["datasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.isFavorite != nil {
            map["isFavorite"] = self.isFavorite!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.schema != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.schema! {
                tmp[k] = v.toMap()
            }
            map["schema"] = tmp
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["datasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["isFavorite"] as? Bool {
            self.isFavorite = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var tmp : [String: IndexKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.schema = tmp
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEvaluationRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetEvaluationRunResponseBody : Tea.TeaModel {
    public class EvaluatorProgress : Tea.TeaModel {
        public var evaluatorName: String?

        public var failedCount: Int32?

        public var successCount: Int32?

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
            if self.evaluatorName != nil {
                map["evaluatorName"] = self.evaluatorName!
            }
            if self.failedCount != nil {
                map["failedCount"] = self.failedCount!
            }
            if self.successCount != nil {
                map["successCount"] = self.successCount!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["evaluatorName"] as? String {
                self.evaluatorName = value
            }
            if let value = dict["failedCount"] as? Int32 {
                self.failedCount = value
            }
            if let value = dict["successCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["totalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var createdAt: Int64?

    public var dataEndTime: Int64?

    public var dataStartTime: Int64?

    public var evaluatorProgress: [GetEvaluationRunResponseBody.EvaluatorProgress]?

    public var evaluators: String?

    public var failedCount: Int32?

    public var requestId: String?

    public var runId: String?

    public var runName: String?

    public var runType: String?

    public var status: String?

    public var successCount: Int32?

    public var taskId: String?

    public var totalCount: Int32?

    public var updatedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.dataEndTime != nil {
            map["dataEndTime"] = self.dataEndTime!
        }
        if self.dataStartTime != nil {
            map["dataStartTime"] = self.dataStartTime!
        }
        if self.evaluatorProgress != nil {
            var tmp : [Any] = []
            for k in self.evaluatorProgress! {
                tmp.append(k.toMap())
            }
            map["evaluatorProgress"] = tmp
        }
        if self.evaluators != nil {
            map["evaluators"] = self.evaluators!
        }
        if self.failedCount != nil {
            map["failedCount"] = self.failedCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.runName != nil {
            map["runName"] = self.runName!
        }
        if self.runType != nil {
            map["runType"] = self.runType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.successCount != nil {
            map["successCount"] = self.successCount!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["dataEndTime"] as? Int64 {
            self.dataEndTime = value
        }
        if let value = dict["dataStartTime"] as? Int64 {
            self.dataStartTime = value
        }
        if let value = dict["evaluatorProgress"] as? [Any?] {
            var tmp : [GetEvaluationRunResponseBody.EvaluatorProgress] = []
            for v in value {
                if v != nil {
                    var model = GetEvaluationRunResponseBody.EvaluatorProgress()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluatorProgress = tmp
        }
        if let value = dict["evaluators"] as? String {
            self.evaluators = value
        }
        if let value = dict["failedCount"] as? Int32 {
            self.failedCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["runName"] as? String {
            self.runName = value
        }
        if let value = dict["runType"] as? String {
            self.runType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["successCount"] as? Int32 {
            self.successCount = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class GetEvaluationRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEvaluationRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEvaluationRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEvaluationTaskRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetEvaluationTaskResponseBody : Tea.TeaModel {
    public var agentSpace: String?

    public var channel: String?

    public var config: [String: String]?

    public var createdAt: Int64?

    public var dataFilter: String?

    public var dataType: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var regionId: String?

    public var requestId: String?

    public var runStrategyConfig: RunStrategies?

    public var status: String?

    public var tags: [String: String]?

    public var taskId: String?

    public var taskMode: String?

    public var taskName: String?

    public var updatedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runStrategyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.dataFilter != nil {
            map["dataFilter"] = self.dataFilter!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runStrategyConfig != nil {
            map["runStrategyConfig"] = self.runStrategyConfig?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskMode != nil {
            map["taskMode"] = self.taskMode!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["dataFilter"] as? String {
            self.dataFilter = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runStrategyConfig"] as? [String: Any?] {
            var model = RunStrategies()
            model.fromMap(value)
            self.runStrategyConfig = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["taskMode"] as? String {
            self.taskMode = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class GetEvaluationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEvaluationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEvaluationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEvaluatorRequest : Tea.TeaModel {
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
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class GetEvaluatorResponseBody : Tea.TeaModel {
    public class Evaluator : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var createdAt: Int64?

            public var version: String?

            public var versionDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.versionDescription != nil {
                    map["versionDescription"] = self.versionDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createdAt"] as? Int64 {
                    self.createdAt = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["versionDescription"] as? String {
                    self.versionDescription = value
                }
            }
        }
        public var agentSpace: String?

        public var annotations: [String]?

        public var config: [String: Any]?

        public var createdAt: Int64?

        public var currentVersion: String?

        public var description_: String?

        public var displayName: String?

        public var latestVersion: String?

        public var metricName: String?

        public var name: String?

        public var properties: [String: Any]?

        public var type: String?

        public var updatedAt: Int64?

        public var versions: [GetEvaluatorResponseBody.Evaluator.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentSpace != nil {
                map["agentSpace"] = self.agentSpace!
            }
            if self.annotations != nil {
                map["annotations"] = self.annotations!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpace"] as? String {
                self.agentSpace = value
            }
            if let value = dict["annotations"] as? [String] {
                self.annotations = value
            }
            if let value = dict["config"] as? [String: Any] {
                self.config = value
            }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [GetEvaluatorResponseBody.Evaluator.Versions] = []
                for v in value {
                    if v != nil {
                        var model = GetEvaluatorResponseBody.Evaluator.Versions()
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
    public var evaluator: GetEvaluatorResponseBody.Evaluator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluator != nil {
            map["evaluator"] = self.evaluator?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["evaluator"] as? [String: Any?] {
            var model = GetEvaluatorResponseBody.Evaluator()
            model.fromMap(value)
            self.evaluator = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetEvaluatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEvaluatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEvaluatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEvaluatorSkillRequest : Tea.TeaModel {
    public var agentSpace: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class GetEvaluatorSkillResponseBody : Tea.TeaModel {
    public class Skill : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var content: String?

            public var name: String?

            public var remark: String?

            public override init() {
                super.init()
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
                    map["content"] = self.content!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["remark"] as? String {
                    self.remark = value
                }
            }
        }
        public class Versions : Tea.TeaModel {
            public var createdAt: Int64?

            public var version: String?

            public var versionDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.versionDescription != nil {
                    map["versionDescription"] = self.versionDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createdAt"] as? Int64 {
                    self.createdAt = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["versionDescription"] as? String {
                    self.versionDescription = value
                }
            }
        }
        public var createdAt: Int64?

        public var currentVersion: String?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var files: [GetEvaluatorSkillResponseBody.Skill.Files]?

        public var latestVersion: String?

        public var skillName: String?

        public var updatedAt: Int64?

        public var versions: [GetEvaluatorSkillResponseBody.Skill.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["files"] = tmp
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.skillName != nil {
                map["skillName"] = self.skillName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["files"] as? [Any?] {
                var tmp : [GetEvaluatorSkillResponseBody.Skill.Files] = []
                for v in value {
                    if v != nil {
                        var model = GetEvaluatorSkillResponseBody.Skill.Files()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.files = tmp
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["skillName"] as? String {
                self.skillName = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [GetEvaluatorSkillResponseBody.Skill.Versions] = []
                for v in value {
                    if v != nil {
                        var model = GetEvaluatorSkillResponseBody.Skill.Versions()
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
    public var requestId: String?

    public var skill: GetEvaluatorSkillResponseBody.Skill?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.skill?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skill != nil {
            map["skill"] = self.skill?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skill"] as? [String: Any?] {
            var model = GetEvaluatorSkillResponseBody.Skill()
            model.fromMap(value)
            self.skill = model
        }
    }
}

public class GetEvaluatorSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEvaluatorSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEvaluatorSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentPlanRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetExperimentPlanResponseBody : Tea.TeaModel {
    public var createdAt: Int64?

    public var datasetId: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var experimentType: String?

    public var experiments: [ExperimentConfig]?

    public var input: [String: Any]?

    public var planId: String?

    public var planName: String?

    public var querySql: String?

    public var requestId: String?

    public var selectedItemIds: [String]?

    public var status: String?

    public var updatedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.experimentType != nil {
            map["experimentType"] = self.experimentType!
        }
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["experiments"] = tmp
        }
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.querySql != nil {
            map["querySql"] = self.querySql!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.selectedItemIds != nil {
            map["selectedItemIds"] = self.selectedItemIds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["experimentType"] as? String {
            self.experimentType = value
        }
        if let value = dict["experiments"] as? [Any?] {
            var tmp : [ExperimentConfig] = []
            for v in value {
                if v != nil {
                    var model = ExperimentConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experiments = tmp
        }
        if let value = dict["input"] as? [String: Any] {
            self.input = value
        }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["querySql"] as? String {
            self.querySql = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["selectedItemIds"] as? [String] {
            self.selectedItemIds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class GetExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetExperimentRunResponseBody : Tea.TeaModel {
    public var record: ExperimentRecord?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.record?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.record != nil {
            map["record"] = self.record?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["record"] as? [String: Any?] {
            var model = ExperimentRecord()
            model.fromMap(value)
            self.record = model
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExperimentRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExperimentRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPipelineRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetPipelineResponseBody : Tea.TeaModel {
    public class ExecutePolicy : Tea.TeaModel {
        public class RunOnce : Tea.TeaModel {
            public var fromTime: Int64?

            public var toTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.toTime != nil {
                    map["toTime"] = self.toTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["toTime"] as? Int64 {
                    self.toTime = value
                }
            }
        }
        public class Scheduled : Tea.TeaModel {
            public var fromTime: Int64?

            public var interval: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.interval != nil {
                    map["interval"] = self.interval!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["interval"] as? String {
                    self.interval = value
                }
            }
        }
        public var mode: String?

        public var runOnce: GetPipelineResponseBody.ExecutePolicy.RunOnce?

        public var scheduled: GetPipelineResponseBody.ExecutePolicy.Scheduled?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runOnce?.validate()
            try self.scheduled?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.runOnce != nil {
                map["runOnce"] = self.runOnce?.toMap()
            }
            if self.scheduled != nil {
                map["scheduled"] = self.scheduled?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["runOnce"] as? [String: Any?] {
                var model = GetPipelineResponseBody.ExecutePolicy.RunOnce()
                model.fromMap(value)
                self.runOnce = model
            }
            if let value = dict["scheduled"] as? [String: Any?] {
                var model = GetPipelineResponseBody.ExecutePolicy.Scheduled()
                model.fromMap(value)
                self.scheduled = model
            }
        }
    }
    public class Pipeline : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var id: String?

            public var parameters: [String: Any]?

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
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var nodes: [GetPipelineResponseBody.Pipeline.Nodes]?

        public override init() {
            super.init()
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
                map["nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [GetPipelineResponseBody.Pipeline.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = GetPipelineResponseBody.Pipeline.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public class Sink : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var agentSpace: String?

            public var dataset: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.dataset != nil {
                    map["dataset"] = self.dataset!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["dataset"] as? String {
                    self.dataset = value
                }
            }
        }
        public var dataset: GetPipelineResponseBody.Sink.Dataset?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataset != nil {
                map["dataset"] = self.dataset?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataset"] as? [String: Any?] {
                var model = GetPipelineResponseBody.Sink.Dataset()
                model.fromMap(value)
                self.dataset = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Source : Tea.TeaModel {
        public class Logstore : Tea.TeaModel {
            public var logstore: String?

            public var project: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.query != nil {
                    map["query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["query"] as? String {
                    self.query = value
                }
            }
        }
        public var logstore: GetPipelineResponseBody.Source.Logstore?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logstore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstore != nil {
                map["logstore"] = self.logstore?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? [String: Any?] {
                var model = GetPipelineResponseBody.Source.Logstore()
                model.fromMap(value)
                self.logstore = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var committedWatermark: Int64?

    public var createTime: String?

    public var description_: String?

    public var executePolicy: GetPipelineResponseBody.ExecutePolicy?

    public var nextTriggerTime: Int64?

    public var pipeline: GetPipelineResponseBody.Pipeline?

    public var pipelineName: String?

    public var regionId: String?

    public var requestId: String?

    public var scheduleStatus: String?

    public var sink: GetPipelineResponseBody.Sink?

    public var source: GetPipelineResponseBody.Source?

    public var updateTime: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executePolicy?.validate()
        try self.pipeline?.validate()
        try self.sink?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.committedWatermark != nil {
            map["committedWatermark"] = self.committedWatermark!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executePolicy != nil {
            map["executePolicy"] = self.executePolicy?.toMap()
        }
        if self.nextTriggerTime != nil {
            map["nextTriggerTime"] = self.nextTriggerTime!
        }
        if self.pipeline != nil {
            map["pipeline"] = self.pipeline?.toMap()
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scheduleStatus != nil {
            map["scheduleStatus"] = self.scheduleStatus!
        }
        if self.sink != nil {
            map["sink"] = self.sink?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["committedWatermark"] as? Int64 {
            self.committedWatermark = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executePolicy"] as? [String: Any?] {
            var model = GetPipelineResponseBody.ExecutePolicy()
            model.fromMap(value)
            self.executePolicy = model
        }
        if let value = dict["nextTriggerTime"] as? Int64 {
            self.nextTriggerTime = value
        }
        if let value = dict["pipeline"] as? [String: Any?] {
            var model = GetPipelineResponseBody.Pipeline()
            model.fromMap(value)
            self.pipeline = model
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scheduleStatus"] as? String {
            self.scheduleStatus = value
        }
        if let value = dict["sink"] as? [String: Any?] {
            var model = GetPipelineResponseBody.Sink()
            model.fromMap(value)
            self.sink = model
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = GetPipelineResponseBody.Source()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPipelineRunRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetPipelineRunResponseBody : Tea.TeaModel {
    public var agentSpaceName: String?

    public var attempt: Int32?

    public var errorCode: String?

    public var errorMessage: String?

    public var finishTime: String?

    public var fromTime: Int64?

    public var maxAttempts: Int32?

    public var nextRetryTime: String?

    public var pipelineName: String?

    public var requestId: String?

    public var results: [String: Any]?

    public var runId: String?

    public var startTime: String?

    public var stats: [String: Any]?

    public var status: String?

    public var toTime: Int64?

    public var triggerTime: String?

    public var triggerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpaceName != nil {
            map["agentSpaceName"] = self.agentSpaceName!
        }
        if self.attempt != nil {
            map["attempt"] = self.attempt!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.finishTime != nil {
            map["finishTime"] = self.finishTime!
        }
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.maxAttempts != nil {
            map["maxAttempts"] = self.maxAttempts!
        }
        if self.nextRetryTime != nil {
            map["nextRetryTime"] = self.nextRetryTime!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            map["results"] = self.results!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.stats != nil {
            map["stats"] = self.stats!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        if self.triggerTime != nil {
            map["triggerTime"] = self.triggerTime!
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaceName"] as? String {
            self.agentSpaceName = value
        }
        if let value = dict["attempt"] as? Int32 {
            self.attempt = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["finishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["maxAttempts"] as? Int32 {
            self.maxAttempts = value
        }
        if let value = dict["nextRetryTime"] as? String {
            self.nextRetryTime = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [String: Any] {
            self.results = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["stats"] as? [String: Any] {
            self.stats = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
        if let value = dict["triggerTime"] as? String {
            self.triggerTime = value
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
        }
    }
}

public class GetPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPipelineRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPipelineStatsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var granularity: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class GetPipelineStatsResponseBody : Tea.TeaModel {
    public class Summary : Tea.TeaModel {
        public var avgElapsedMs: Int64?

        public var cancelledRuns: Int64?

        public var committedWatermark: Int64?

        public var failedRuns: Int64?

        public var scheduleLagSeconds: Int64?

        public var succeededRuns: Int64?

        public var successRate: Double?

        public var totalOutputBytes: Int64?

        public var totalOutputRows: Int64?

        public var totalProcessedBytes: Int64?

        public var totalProcessedRows: Int64?

        public var totalRuns: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgElapsedMs != nil {
                map["avgElapsedMs"] = self.avgElapsedMs!
            }
            if self.cancelledRuns != nil {
                map["cancelledRuns"] = self.cancelledRuns!
            }
            if self.committedWatermark != nil {
                map["committedWatermark"] = self.committedWatermark!
            }
            if self.failedRuns != nil {
                map["failedRuns"] = self.failedRuns!
            }
            if self.scheduleLagSeconds != nil {
                map["scheduleLagSeconds"] = self.scheduleLagSeconds!
            }
            if self.succeededRuns != nil {
                map["succeededRuns"] = self.succeededRuns!
            }
            if self.successRate != nil {
                map["successRate"] = self.successRate!
            }
            if self.totalOutputBytes != nil {
                map["totalOutputBytes"] = self.totalOutputBytes!
            }
            if self.totalOutputRows != nil {
                map["totalOutputRows"] = self.totalOutputRows!
            }
            if self.totalProcessedBytes != nil {
                map["totalProcessedBytes"] = self.totalProcessedBytes!
            }
            if self.totalProcessedRows != nil {
                map["totalProcessedRows"] = self.totalProcessedRows!
            }
            if self.totalRuns != nil {
                map["totalRuns"] = self.totalRuns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avgElapsedMs"] as? Int64 {
                self.avgElapsedMs = value
            }
            if let value = dict["cancelledRuns"] as? Int64 {
                self.cancelledRuns = value
            }
            if let value = dict["committedWatermark"] as? Int64 {
                self.committedWatermark = value
            }
            if let value = dict["failedRuns"] as? Int64 {
                self.failedRuns = value
            }
            if let value = dict["scheduleLagSeconds"] as? Int64 {
                self.scheduleLagSeconds = value
            }
            if let value = dict["succeededRuns"] as? Int64 {
                self.succeededRuns = value
            }
            if let value = dict["successRate"] as? Double {
                self.successRate = value
            }
            if let value = dict["totalOutputBytes"] as? Int64 {
                self.totalOutputBytes = value
            }
            if let value = dict["totalOutputRows"] as? Int64 {
                self.totalOutputRows = value
            }
            if let value = dict["totalProcessedBytes"] as? Int64 {
                self.totalProcessedBytes = value
            }
            if let value = dict["totalProcessedRows"] as? Int64 {
                self.totalProcessedRows = value
            }
            if let value = dict["totalRuns"] as? Int64 {
                self.totalRuns = value
            }
        }
    }
    public class TimeSeries : Tea.TeaModel {
        public var avgElapsedMs: Int64?

        public var outputBytes: Int64?

        public var outputRows: Int64?

        public var processedBytes: Int64?

        public var processedRows: Int64?

        public var runs: Int64?

        public var succeededRuns: Int64?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgElapsedMs != nil {
                map["avgElapsedMs"] = self.avgElapsedMs!
            }
            if self.outputBytes != nil {
                map["outputBytes"] = self.outputBytes!
            }
            if self.outputRows != nil {
                map["outputRows"] = self.outputRows!
            }
            if self.processedBytes != nil {
                map["processedBytes"] = self.processedBytes!
            }
            if self.processedRows != nil {
                map["processedRows"] = self.processedRows!
            }
            if self.runs != nil {
                map["runs"] = self.runs!
            }
            if self.succeededRuns != nil {
                map["succeededRuns"] = self.succeededRuns!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avgElapsedMs"] as? Int64 {
                self.avgElapsedMs = value
            }
            if let value = dict["outputBytes"] as? Int64 {
                self.outputBytes = value
            }
            if let value = dict["outputRows"] as? Int64 {
                self.outputRows = value
            }
            if let value = dict["processedBytes"] as? Int64 {
                self.processedBytes = value
            }
            if let value = dict["processedRows"] as? Int64 {
                self.processedRows = value
            }
            if let value = dict["runs"] as? Int64 {
                self.runs = value
            }
            if let value = dict["succeededRuns"] as? Int64 {
                self.succeededRuns = value
            }
            if let value = dict["timestamp"] as? Int64 {
                self.timestamp = value
            }
        }
    }
    public var endTime: Int64?

    public var granularity: String?

    public var pipelineName: String?

    public var requestId: String?

    public var startTime: Int64?

    public var summary: GetPipelineStatsResponseBody.Summary?

    public var timeSeries: [GetPipelineStatsResponseBody.TimeSeries]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.summary != nil {
            map["summary"] = self.summary?.toMap()
        }
        if self.timeSeries != nil {
            var tmp : [Any] = []
            for k in self.timeSeries! {
                tmp.append(k.toMap())
            }
            map["timeSeries"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["summary"] as? [String: Any?] {
            var model = GetPipelineStatsResponseBody.Summary()
            model.fromMap(value)
            self.summary = model
        }
        if let value = dict["timeSeries"] as? [Any?] {
            var tmp : [GetPipelineStatsResponseBody.TimeSeries] = []
            for v in value {
                if v != nil {
                    var model = GetPipelineStatsResponseBody.TimeSeries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timeSeries = tmp
        }
    }
}

public class GetPipelineStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPipelineStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentSpacesRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListAgentSpacesResponseBody : Tea.TeaModel {
    public class AgentSpaces : Tea.TeaModel {
        public class MseNamespace : Tea.TeaModel {
            public var namespaceId: String?

            public var namespaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.namespaceId != nil {
                    map["namespaceId"] = self.namespaceId!
                }
                if self.namespaceName != nil {
                    map["namespaceName"] = self.namespaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["namespaceId"] as? String {
                    self.namespaceId = value
                }
                if let value = dict["namespaceName"] as? String {
                    self.namespaceName = value
                }
            }
        }
        public var agentSpace: String?

        public var cmsWorkspace: String?

        public var createTime: String?

        public var description_: String?

        public var mseNamespace: ListAgentSpacesResponseBody.AgentSpaces.MseNamespace?

        public var regionId: String?

        public var slsProject: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mseNamespace?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentSpace != nil {
                map["agentSpace"] = self.agentSpace!
            }
            if self.cmsWorkspace != nil {
                map["cmsWorkspace"] = self.cmsWorkspace!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.mseNamespace != nil {
                map["mseNamespace"] = self.mseNamespace?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.slsProject != nil {
                map["slsProject"] = self.slsProject!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpace"] as? String {
                self.agentSpace = value
            }
            if let value = dict["cmsWorkspace"] as? String {
                self.cmsWorkspace = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["mseNamespace"] as? [String: Any?] {
                var model = ListAgentSpacesResponseBody.AgentSpaces.MseNamespace()
                model.fromMap(value)
                self.mseNamespace = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["slsProject"] as? String {
                self.slsProject = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var agentSpaces: [ListAgentSpacesResponseBody.AgentSpaces]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.agentSpaces != nil {
            var tmp : [Any] = []
            for k in self.agentSpaces! {
                tmp.append(k.toMap())
            }
            map["agentSpaces"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaces"] as? [Any?] {
            var tmp : [ListAgentSpacesResponseBody.AgentSpaces] = []
            for v in value {
                if v != nil {
                    var model = ListAgentSpacesResponseBody.AgentSpaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.agentSpaces = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAgentSpacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentSpacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAgentSpacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListContextStoreAPIKeysRequest : Tea.TeaModel {
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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListContextStoreAPIKeysResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var agentSpace: String?

        public var apiKey: String?

        public var contextStoreName: String?

        public var createTime: String?

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
            if self.agentSpace != nil {
                map["agentSpace"] = self.agentSpace!
            }
            if self.apiKey != nil {
                map["apiKey"] = self.apiKey!
            }
            if self.contextStoreName != nil {
                map["contextStoreName"] = self.contextStoreName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpace"] as? String {
                self.agentSpace = value
            }
            if let value = dict["apiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["contextStoreName"] as? String {
                self.contextStoreName = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var results: [ListContextStoreAPIKeysResponseBody.Results]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [ListContextStoreAPIKeysResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = ListContextStoreAPIKeysResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListContextStoreAPIKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContextStoreAPIKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListContextStoreAPIKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListContextStoresRequest : Tea.TeaModel {
    public var contextStoreName: String?

    public var contextType: String?

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
        if self.contextStoreName != nil {
            map["contextStoreName"] = self.contextStoreName!
        }
        if self.contextType != nil {
            map["contextType"] = self.contextType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contextStoreName"] as? String {
            self.contextStoreName = value
        }
        if let value = dict["contextType"] as? String {
            self.contextType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListContextStoresResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var agentSpace: String?

        public var contextStoreName: String?

        public var contextType: String?

        public var createTime: String?

        public var description_: String?

        public var regionId: String?

        public var serviceNames: [String]?

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
            if self.agentSpace != nil {
                map["agentSpace"] = self.agentSpace!
            }
            if self.contextStoreName != nil {
                map["contextStoreName"] = self.contextStoreName!
            }
            if self.contextType != nil {
                map["contextType"] = self.contextType!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.serviceNames != nil {
                map["serviceNames"] = self.serviceNames!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpace"] as? String {
                self.agentSpace = value
            }
            if let value = dict["contextStoreName"] as? String {
                self.contextStoreName = value
            }
            if let value = dict["contextType"] as? String {
                self.contextType = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["serviceNames"] as? [String] {
                self.serviceNames = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var results: [ListContextStoresResponseBody.Results]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [ListContextStoresResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = ListContextStoresResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListContextStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContextStoresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListContextStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetsRequest : Tea.TeaModel {
    public var datasetName: String?

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
        if self.datasetName != nil {
            map["datasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListDatasetsResponseBody : Tea.TeaModel {
    public class Datasets : Tea.TeaModel {
        public var agentSpace: String?

        public var createTime: String?

        public var datasetName: String?

        public var description_: String?

        public var isFavorite: Bool?

        public var regionId: String?

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
            if self.agentSpace != nil {
                map["agentSpace"] = self.agentSpace!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.datasetName != nil {
                map["datasetName"] = self.datasetName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.isFavorite != nil {
                map["isFavorite"] = self.isFavorite!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpace"] as? String {
                self.agentSpace = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["datasetName"] as? String {
                self.datasetName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["isFavorite"] as? Bool {
                self.isFavorite = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var datasets: [ListDatasetsResponseBody.Datasets]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["datasets"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasets"] as? [Any?] {
            var tmp : [ListDatasetsResponseBody.Datasets] = []
            for v in value {
                if v != nil {
                    var model = ListDatasetsResponseBody.Datasets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListDatasetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatasetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationRunsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var runType: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.runType != nil {
            map["runType"] = self.runType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["runType"] as? String {
            self.runType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListEvaluationRunsResponseBody : Tea.TeaModel {
    public class EvaluationRuns : Tea.TeaModel {
        public var createdAt: Int64?

        public var dataEndTime: Int64?

        public var dataStartTime: Int64?

        public var failedCount: Int32?

        public var runId: String?

        public var runName: String?

        public var runType: String?

        public var status: String?

        public var successCount: Int32?

        public var taskId: String?

        public var totalCount: Int32?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.dataEndTime != nil {
                map["dataEndTime"] = self.dataEndTime!
            }
            if self.dataStartTime != nil {
                map["dataStartTime"] = self.dataStartTime!
            }
            if self.failedCount != nil {
                map["failedCount"] = self.failedCount!
            }
            if self.runId != nil {
                map["runId"] = self.runId!
            }
            if self.runName != nil {
                map["runName"] = self.runName!
            }
            if self.runType != nil {
                map["runType"] = self.runType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.successCount != nil {
                map["successCount"] = self.successCount!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["dataEndTime"] as? Int64 {
                self.dataEndTime = value
            }
            if let value = dict["dataStartTime"] as? Int64 {
                self.dataStartTime = value
            }
            if let value = dict["failedCount"] as? Int32 {
                self.failedCount = value
            }
            if let value = dict["runId"] as? String {
                self.runId = value
            }
            if let value = dict["runName"] as? String {
                self.runName = value
            }
            if let value = dict["runType"] as? String {
                self.runType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["successCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["totalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var evaluationRuns: [ListEvaluationRunsResponseBody.EvaluationRuns]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.evaluationRuns != nil {
            var tmp : [Any] = []
            for k in self.evaluationRuns! {
                tmp.append(k.toMap())
            }
            map["evaluationRuns"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["evaluationRuns"] as? [Any?] {
            var tmp : [ListEvaluationRunsResponseBody.EvaluationRuns] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluationRunsResponseBody.EvaluationRuns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluationRuns = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListEvaluationRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationRunsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationTasksRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var channel: String?

    public var dataType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var status: String?

    public var taskMode: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskMode != nil {
            map["taskMode"] = self.taskMode!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskMode"] as? String {
            self.taskMode = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class ListEvaluationTasksResponseBody : Tea.TeaModel {
    public class EvaluationTasks : Tea.TeaModel {
        public var config: [String: String]?

        public var createdAt: Int64?

        public var dataType: String?

        public var description_: String?

        public var evaluators: String?

        public var runStrategyConfig: RunStrategies?

        public var status: String?

        public var tags: [String: String]?

        public var taskId: String?

        public var taskMode: String?

        public var taskName: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runStrategyConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.dataType != nil {
                map["dataType"] = self.dataType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.evaluators != nil {
                map["evaluators"] = self.evaluators!
            }
            if self.runStrategyConfig != nil {
                map["runStrategyConfig"] = self.runStrategyConfig?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskMode != nil {
                map["taskMode"] = self.taskMode!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? [String: String] {
                self.config = value
            }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["dataType"] as? String {
                self.dataType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["evaluators"] as? String {
                self.evaluators = value
            }
            if let value = dict["runStrategyConfig"] as? [String: Any?] {
                var model = RunStrategies()
                model.fromMap(value)
                self.runStrategyConfig = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [String: String] {
                self.tags = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskMode"] as? String {
                self.taskMode = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var evaluationTasks: [ListEvaluationTasksResponseBody.EvaluationTasks]?

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
        if self.evaluationTasks != nil {
            var tmp : [Any] = []
            for k in self.evaluationTasks! {
                tmp.append(k.toMap())
            }
            map["evaluationTasks"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["evaluationTasks"] as? [Any?] {
            var tmp : [ListEvaluationTasksResponseBody.EvaluationTasks] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluationTasksResponseBody.EvaluationTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluationTasks = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListEvaluationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluatorSkillsRequest : Tea.TeaModel {
    public var agentSpace: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListEvaluatorSkillsResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public var createdAt: Int64?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var latestVersion: String?

        public var skillName: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.skillName != nil {
                map["skillName"] = self.skillName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["skillName"] as? String {
                self.skillName = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var skills: [ListEvaluatorSkillsResponseBody.Skills]?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["skills"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skills"] as? [Any?] {
            var tmp : [ListEvaluatorSkillsResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluatorSkillsResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListEvaluatorSkillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluatorSkillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluatorSkillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluatorsRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var source: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListEvaluatorsResponseBody : Tea.TeaModel {
    public class Evaluators : Tea.TeaModel {
        public var annotations: [String]?

        public var createdAt: Int64?

        public var description_: String?

        public var displayName: String?

        public var latestVersion: String?

        public var metricName: String?

        public var name: String?

        public var properties: [String: Any]?

        public var type: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.annotations != nil {
                map["annotations"] = self.annotations!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["annotations"] as? [String] {
                self.annotations = value
            }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var evaluators: [ListEvaluatorsResponseBody.Evaluators]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [ListEvaluatorsResponseBody.Evaluators] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluatorsResponseBody.Evaluators()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListEvaluatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluatorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluatorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentPlansRequest : Tea.TeaModel {
    public var limit: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var offset: Int32?

    public var planName: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListExperimentPlansResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var plans: [ExperimentPlanData]?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.plans != nil {
            var tmp : [Any] = []
            for k in self.plans! {
                tmp.append(k.toMap())
            }
            map["plans"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["plans"] as? [Any?] {
            var tmp : [ExperimentPlanData] = []
            for v in value {
                if v != nil {
                    var model = ExperimentPlanData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.plans = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListExperimentPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExperimentPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentRunsRequest : Tea.TeaModel {
    public var datasetId: String?

    public var experimentName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var planName: String?

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
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.experimentName != nil {
            map["experimentName"] = self.experimentName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["experimentName"] as? String {
            self.experimentName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListExperimentRunsResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var records: [ExperimentRecord]?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExperimentRecord] = []
            for v in value {
                if v != nil {
                    var model = ExperimentRecord()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListExperimentRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExperimentRunsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPipelineRunsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var startTime: Int64?

    public var status: String?

    public var triggerType: String?

    public override init() {
        super.init()
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
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
        }
    }
}

public class ListPipelineRunsResponseBody : Tea.TeaModel {
    public class Runs : Tea.TeaModel {
        public var agentSpaceName: String?

        public var attempt: Int32?

        public var errorCode: String?

        public var errorMessage: String?

        public var finishTime: String?

        public var fromTime: Int64?

        public var maxAttempts: Int32?

        public var nextRetryTime: String?

        public var pipelineName: String?

        public var runId: String?

        public var startTime: String?

        public var stats: [String: Any]?

        public var status: String?

        public var toTime: Int64?

        public var triggerTime: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentSpaceName != nil {
                map["agentSpaceName"] = self.agentSpaceName!
            }
            if self.attempt != nil {
                map["attempt"] = self.attempt!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.fromTime != nil {
                map["fromTime"] = self.fromTime!
            }
            if self.maxAttempts != nil {
                map["maxAttempts"] = self.maxAttempts!
            }
            if self.nextRetryTime != nil {
                map["nextRetryTime"] = self.nextRetryTime!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            if self.runId != nil {
                map["runId"] = self.runId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.stats != nil {
                map["stats"] = self.stats!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.toTime != nil {
                map["toTime"] = self.toTime!
            }
            if self.triggerTime != nil {
                map["triggerTime"] = self.triggerTime!
            }
            if self.triggerType != nil {
                map["triggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentSpaceName"] as? String {
                self.agentSpaceName = value
            }
            if let value = dict["attempt"] as? Int32 {
                self.attempt = value
            }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["fromTime"] as? Int64 {
                self.fromTime = value
            }
            if let value = dict["maxAttempts"] as? Int32 {
                self.maxAttempts = value
            }
            if let value = dict["nextRetryTime"] as? String {
                self.nextRetryTime = value
            }
            if let value = dict["pipelineName"] as? String {
                self.pipelineName = value
            }
            if let value = dict["runId"] as? String {
                self.runId = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["stats"] as? [String: Any] {
                self.stats = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["toTime"] as? Int64 {
                self.toTime = value
            }
            if let value = dict["triggerTime"] as? String {
                self.triggerTime = value
            }
            if let value = dict["triggerType"] as? String {
                self.triggerType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var runs: [ListPipelineRunsResponseBody.Runs]?

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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runs != nil {
            var tmp : [Any] = []
            for k in self.runs! {
                tmp.append(k.toMap())
            }
            map["runs"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runs"] as? [Any?] {
            var tmp : [ListPipelineRunsResponseBody.Runs] = []
            for v in value {
                if v != nil {
                    var model = ListPipelineRunsResponseBody.Runs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runs = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPipelineRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPipelineRunsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPipelinesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pipelineName: String?

    public var scheduleStatus: String?

    public var scheduleType: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.scheduleStatus != nil {
            map["scheduleStatus"] = self.scheduleStatus!
        }
        if self.scheduleType != nil {
            map["scheduleType"] = self.scheduleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["scheduleStatus"] as? String {
            self.scheduleStatus = value
        }
        if let value = dict["scheduleType"] as? String {
            self.scheduleType = value
        }
    }
}

public class ListPipelinesResponseBody : Tea.TeaModel {
    public class Pipelines : Tea.TeaModel {
        public class ExecutePolicy : Tea.TeaModel {
            public class RunOnce : Tea.TeaModel {
                public var fromTime: Int64?

                public var toTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fromTime != nil {
                        map["fromTime"] = self.fromTime!
                    }
                    if self.toTime != nil {
                        map["toTime"] = self.toTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fromTime"] as? Int64 {
                        self.fromTime = value
                    }
                    if let value = dict["toTime"] as? Int64 {
                        self.toTime = value
                    }
                }
            }
            public class Scheduled : Tea.TeaModel {
                public var fromTime: Int64?

                public var interval: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fromTime != nil {
                        map["fromTime"] = self.fromTime!
                    }
                    if self.interval != nil {
                        map["interval"] = self.interval!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fromTime"] as? Int64 {
                        self.fromTime = value
                    }
                    if let value = dict["interval"] as? String {
                        self.interval = value
                    }
                }
            }
            public var mode: String?

            public var runOnce: ListPipelinesResponseBody.Pipelines.ExecutePolicy.RunOnce?

            public var scheduled: ListPipelinesResponseBody.Pipelines.ExecutePolicy.Scheduled?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.runOnce?.validate()
                try self.scheduled?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.runOnce != nil {
                    map["runOnce"] = self.runOnce?.toMap()
                }
                if self.scheduled != nil {
                    map["scheduled"] = self.scheduled?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mode"] as? String {
                    self.mode = value
                }
                if let value = dict["runOnce"] as? [String: Any?] {
                    var model = ListPipelinesResponseBody.Pipelines.ExecutePolicy.RunOnce()
                    model.fromMap(value)
                    self.runOnce = model
                }
                if let value = dict["scheduled"] as? [String: Any?] {
                    var model = ListPipelinesResponseBody.Pipelines.ExecutePolicy.Scheduled()
                    model.fromMap(value)
                    self.scheduled = model
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var executePolicy: ListPipelinesResponseBody.Pipelines.ExecutePolicy?

        public var pipelineName: String?

        public var regionId: String?

        public var scheduleStatus: String?

        public var scheduleType: String?

        public var updateTime: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.executePolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.executePolicy != nil {
                map["executePolicy"] = self.executePolicy?.toMap()
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.scheduleStatus != nil {
                map["scheduleStatus"] = self.scheduleStatus!
            }
            if self.scheduleType != nil {
                map["scheduleType"] = self.scheduleType!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.workspace != nil {
                map["workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["executePolicy"] as? [String: Any?] {
                var model = ListPipelinesResponseBody.Pipelines.ExecutePolicy()
                model.fromMap(value)
                self.executePolicy = model
            }
            if let value = dict["pipelineName"] as? String {
                self.pipelineName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["scheduleStatus"] as? String {
                self.scheduleStatus = value
            }
            if let value = dict["scheduleType"] as? String {
                self.scheduleType = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["workspace"] as? String {
                self.workspace = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pipelines: [ListPipelinesResponseBody.Pipelines]?

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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelines != nil {
            var tmp : [Any] = []
            for k in self.pipelines! {
                tmp.append(k.toMap())
            }
            map["pipelines"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pipelines"] as? [Any?] {
            var tmp : [ListPipelinesResponseBody.Pipelines] = []
            for v in value {
                if v != nil {
                    var model = ListPipelinesResponseBody.Pipelines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pipelines = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPipelinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PausePipelineRequest : Tea.TeaModel {
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
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["reason"] as? String {
            self.reason = value
        }
    }
}

public class PausePipelineResponseBody : Tea.TeaModel {
    public var agentSpaceName: String?

    public var pauseTime: String?

    public var pausedReason: String?

    public var pipelineName: String?

    public var requestId: String?

    public var scheduleStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpaceName != nil {
            map["agentSpaceName"] = self.agentSpaceName!
        }
        if self.pauseTime != nil {
            map["pauseTime"] = self.pauseTime!
        }
        if self.pausedReason != nil {
            map["pausedReason"] = self.pausedReason!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scheduleStatus != nil {
            map["scheduleStatus"] = self.scheduleStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaceName"] as? String {
            self.agentSpaceName = value
        }
        if let value = dict["pauseTime"] as? String {
            self.pauseTime = value
        }
        if let value = dict["pausedReason"] as? String {
            self.pausedReason = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scheduleStatus"] as? String {
            self.scheduleStatus = value
        }
    }
}

public class PausePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PausePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PausePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreviewPipelineRequest : Tea.TeaModel {
    public class Pipeline : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var id: String?

            public var parameters: [String: Any]?

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
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var nodes: [PreviewPipelineRequest.Pipeline.Nodes]?

        public override init() {
            super.init()
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
                map["nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [PreviewPipelineRequest.Pipeline.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = PreviewPipelineRequest.Pipeline.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public class Source : Tea.TeaModel {
        public class Logstore : Tea.TeaModel {
            public var logstore: String?

            public var project: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.query != nil {
                    map["query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["query"] as? String {
                    self.query = value
                }
            }
        }
        public var logstore: PreviewPipelineRequest.Source.Logstore?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logstore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstore != nil {
                map["logstore"] = self.logstore?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? [String: Any?] {
                var model = PreviewPipelineRequest.Source.Logstore()
                model.fromMap(value)
                self.logstore = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var fromTime: Int64?

    public var pipeline: PreviewPipelineRequest.Pipeline?

    public var source: PreviewPipelineRequest.Source?

    public var toTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pipeline?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.pipeline != nil {
            map["pipeline"] = self.pipeline?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["pipeline"] as? [String: Any?] {
            var model = PreviewPipelineRequest.Pipeline()
            model.fromMap(value)
            self.pipeline = model
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = PreviewPipelineRequest.Source()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class PreviewPipelineResponseBody : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public var aggQuery: String?

        public var columnTypes: [String]?

        public var count: Int32?

        public var cpuCores: Int32?

        public var cpuSec: Double?

        public var elapsedMillisecond: Int64?

        public var hasSQL: Bool?

        public var isAccurate: Bool?

        public var keys: [String]?

        public var limited: Int32?

        public var mode: Int32?

        public var processedBytes: Int64?

        public var processedRows: Int64?

        public var progress: String?

        public var scanBytes: Int64?

        public var terms: [[String: Any]]?

        public var whereQuery: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggQuery != nil {
                map["aggQuery"] = self.aggQuery!
            }
            if self.columnTypes != nil {
                map["columnTypes"] = self.columnTypes!
            }
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.cpuCores != nil {
                map["cpuCores"] = self.cpuCores!
            }
            if self.cpuSec != nil {
                map["cpuSec"] = self.cpuSec!
            }
            if self.elapsedMillisecond != nil {
                map["elapsedMillisecond"] = self.elapsedMillisecond!
            }
            if self.hasSQL != nil {
                map["hasSQL"] = self.hasSQL!
            }
            if self.isAccurate != nil {
                map["isAccurate"] = self.isAccurate!
            }
            if self.keys != nil {
                map["keys"] = self.keys!
            }
            if self.limited != nil {
                map["limited"] = self.limited!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.processedBytes != nil {
                map["processedBytes"] = self.processedBytes!
            }
            if self.processedRows != nil {
                map["processedRows"] = self.processedRows!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            if self.scanBytes != nil {
                map["scanBytes"] = self.scanBytes!
            }
            if self.terms != nil {
                map["terms"] = self.terms!
            }
            if self.whereQuery != nil {
                map["whereQuery"] = self.whereQuery!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aggQuery"] as? String {
                self.aggQuery = value
            }
            if let value = dict["columnTypes"] as? [String] {
                self.columnTypes = value
            }
            if let value = dict["count"] as? Int32 {
                self.count = value
            }
            if let value = dict["cpuCores"] as? Int32 {
                self.cpuCores = value
            }
            if let value = dict["cpuSec"] as? Double {
                self.cpuSec = value
            }
            if let value = dict["elapsedMillisecond"] as? Int64 {
                self.elapsedMillisecond = value
            }
            if let value = dict["hasSQL"] as? Bool {
                self.hasSQL = value
            }
            if let value = dict["isAccurate"] as? Bool {
                self.isAccurate = value
            }
            if let value = dict["keys"] as? [String] {
                self.keys = value
            }
            if let value = dict["limited"] as? Int32 {
                self.limited = value
            }
            if let value = dict["mode"] as? Int32 {
                self.mode = value
            }
            if let value = dict["processedBytes"] as? Int64 {
                self.processedBytes = value
            }
            if let value = dict["processedRows"] as? Int64 {
                self.processedRows = value
            }
            if let value = dict["progress"] as? String {
                self.progress = value
            }
            if let value = dict["scanBytes"] as? Int64 {
                self.scanBytes = value
            }
            if let value = dict["terms"] as? [[String: Any]] {
                self.terms = value
            }
            if let value = dict["whereQuery"] as? String {
                self.whereQuery = value
            }
        }
    }
    public var data: [[String: String]]?

    public var meta: PreviewPipelineResponseBody.Meta?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.meta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.meta != nil {
            map["meta"] = self.meta?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [[String: String]] {
            self.data = value
        }
        if let value = dict["meta"] as? [String: Any?] {
            var model = PreviewPipelineResponseBody.Meta()
            model.fromMap(value)
            self.meta = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class PreviewPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewPipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PreviewPipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumePipelineRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ResumePipelineResponseBody : Tea.TeaModel {
    public var agentSpaceName: String?

    public var committedWatermark: Int64?

    public var nextTriggerTime: Int64?

    public var pipelineName: String?

    public var requestId: String?

    public var scheduleStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpaceName != nil {
            map["agentSpaceName"] = self.agentSpaceName!
        }
        if self.committedWatermark != nil {
            map["committedWatermark"] = self.committedWatermark!
        }
        if self.nextTriggerTime != nil {
            map["nextTriggerTime"] = self.nextTriggerTime!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scheduleStatus != nil {
            map["scheduleStatus"] = self.scheduleStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaceName"] as? String {
            self.agentSpaceName = value
        }
        if let value = dict["committedWatermark"] as? Int64 {
            self.committedWatermark = value
        }
        if let value = dict["nextTriggerTime"] as? Int64 {
            self.nextTriggerTime = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scheduleStatus"] as? String {
            self.scheduleStatus = value
        }
    }
}

public class ResumePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResumePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunPipelineRequest : Tea.TeaModel {
    public class Output : Tea.TeaModel {
        public var dataset: Bool?

        public var inline: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataset != nil {
                map["dataset"] = self.dataset!
            }
            if self.inline != nil {
                map["inline"] = self.inline!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataset"] as? Bool {
                self.dataset = value
            }
            if let value = dict["inline"] as? Bool {
                self.inline = value
            }
        }
    }
    public var fromTime: Int64?

    public var output: RunPipelineRequest.Output?

    public var toTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.output?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.output != nil {
            map["output"] = self.output?.toMap()
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["output"] as? [String: Any?] {
            var model = RunPipelineRequest.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class RunPipelineResponseBody : Tea.TeaModel {
    public var agentSpaceName: String?

    public var pipelineName: String?

    public var requestId: String?

    public var runId: String?

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
        if self.agentSpaceName != nil {
            map["agentSpaceName"] = self.agentSpaceName!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaceName"] as? String {
            self.agentSpaceName = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class RunPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunPipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunPipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchContextRequest : Tea.TeaModel {
    public var filter: [String: Any]?

    public var formatted: Bool?

    public var limit: Int32?

    public var query: String?

    public var retrievalOption: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.formatted != nil {
            map["formatted"] = self.formatted!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.retrievalOption != nil {
            map["retrievalOption"] = self.retrievalOption!
        }
        if self.threshold != nil {
            map["threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? [String: Any] {
            self.filter = value
        }
        if let value = dict["formatted"] as? Bool {
            self.formatted = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["retrievalOption"] as? String {
            self.retrievalOption = value
        }
        if let value = dict["threshold"] as? Double {
            self.threshold = value
        }
    }
}

public class SearchContextResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var results: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.results != nil {
            map["results"] = self.results!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [[String: Any]] {
            self.results = value
        }
    }
}

public class SearchContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchContextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchContextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TerminatePipelineRequest : Tea.TeaModel {
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
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["reason"] as? String {
            self.reason = value
        }
    }
}

public class TerminatePipelineResponseBody : Tea.TeaModel {
    public var agentSpaceName: String?

    public var pipelineName: String?

    public var requestId: String?

    public var scheduleStatus: String?

    public var terminateTime: String?

    public var terminatedReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpaceName != nil {
            map["agentSpaceName"] = self.agentSpaceName!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scheduleStatus != nil {
            map["scheduleStatus"] = self.scheduleStatus!
        }
        if self.terminateTime != nil {
            map["terminateTime"] = self.terminateTime!
        }
        if self.terminatedReason != nil {
            map["terminatedReason"] = self.terminatedReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpaceName"] as? String {
            self.agentSpaceName = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scheduleStatus"] as? String {
            self.scheduleStatus = value
        }
        if let value = dict["terminateTime"] as? String {
            self.terminateTime = value
        }
        if let value = dict["terminatedReason"] as? String {
            self.terminatedReason = value
        }
    }
}

public class TerminatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminatePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TerminatePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentSpaceRequest : Tea.TeaModel {
    public var cmsWorkspace: String?

    public var description_: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cmsWorkspace != nil {
            map["cmsWorkspace"] = self.cmsWorkspace!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cmsWorkspace"] as? String {
            self.cmsWorkspace = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateAgentSpaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAgentSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAgentSpaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateContextStoreRequest : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public class Source : Tea.TeaModel {
            public var agentSpace: String?

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
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public var metadataField: [String: String]?

        public var source: UpdateContextStoreRequest.Config.Source?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metadataField != nil {
                map["metadataField"] = self.metadataField!
            }
            if self.source != nil {
                map["source"] = self.source?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metadataField"] as? [String: String] {
                self.metadataField = value
            }
            if let value = dict["source"] as? [String: Any?] {
                var model = UpdateContextStoreRequest.Config.Source()
                model.fromMap(value)
                self.source = model
            }
        }
    }
    public var config: UpdateContextStoreRequest.Config?

    public var contextType: String?

    public var description_: String?

    public var status: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.contextType != nil {
            map["contextType"] = self.contextType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = UpdateContextStoreRequest.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["contextType"] as? String {
            self.contextType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateContextStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateContextStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContextStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateContextStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetRequest : Tea.TeaModel {
    public var description_: String?

    public var schema: [String: IndexKey]?

    public var clientToken: String?

    public override init() {
        super.init()
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
        if self.schema != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.schema! {
                tmp[k] = v.toMap()
            }
            map["schema"] = tmp
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var tmp : [String: IndexKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.schema = tmp
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateDatasetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEvaluationRunRequest : Tea.TeaModel {
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
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateEvaluationRunResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateEvaluationRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEvaluationRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEvaluationRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEvaluationTaskRequest : Tea.TeaModel {
    public var config: [String: String]?

    public var dataFilter: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var runStrategies: RunStrategies?

    public var status: String?

    public var tags: [String: String]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runStrategies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.dataFilter != nil {
            map["dataFilter"] = self.dataFilter!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.runStrategies != nil {
            map["runStrategies"] = self.runStrategies?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["dataFilter"] as? String {
            self.dataFilter = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["runStrategies"] as? [String: Any?] {
            var model = RunStrategies()
            model.fromMap(value)
            self.runStrategies = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateEvaluationTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateEvaluationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEvaluationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEvaluationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEvaluatorRequest : Tea.TeaModel {
    public var annotations: [String]?

    public var config: [String: Any]?

    public var description_: String?

    public var displayName: String?

    public var properties: [String: Any]?

    public var version: String?

    public var versionDescription: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            map["annotations"] = self.annotations!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.versionDescription != nil {
            map["versionDescription"] = self.versionDescription!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotations"] as? [String] {
            self.annotations = value
        }
        if let value = dict["config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["versionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateEvaluatorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateEvaluatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEvaluatorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEvaluatorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEvaluatorSkillRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var content: String?

        public var name: String?

        public var remark: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
        }
    }
    public var agentSpace: String?

    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var files: [UpdateEvaluatorSkillRequest.Files]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [UpdateEvaluatorSkillRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = UpdateEvaluatorSkillRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateEvaluatorSkillResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateEvaluatorSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEvaluatorSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEvaluatorSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentPlanRequest : Tea.TeaModel {
    public var datasetId: String?

    public var datasetProject: String?

    public var description_: String?

    public var evaluators: [Evaluator]?

    public var experimentType: String?

    public var experiments: [ExperimentConfig]?

    public var input: [String: Any]?

    public var planName: String?

    public var querySql: String?

    public var selectedItemIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.datasetProject != nil {
            map["datasetProject"] = self.datasetProject!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.evaluators != nil {
            var tmp : [Any] = []
            for k in self.evaluators! {
                tmp.append(k.toMap())
            }
            map["evaluators"] = tmp
        }
        if self.experimentType != nil {
            map["experimentType"] = self.experimentType!
        }
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["experiments"] = tmp
        }
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.querySql != nil {
            map["querySql"] = self.querySql!
        }
        if self.selectedItemIds != nil {
            map["selectedItemIds"] = self.selectedItemIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["datasetProject"] as? String {
            self.datasetProject = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["evaluators"] as? [Any?] {
            var tmp : [Evaluator] = []
            for v in value {
                if v != nil {
                    var model = Evaluator()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluators = tmp
        }
        if let value = dict["experimentType"] as? String {
            self.experimentType = value
        }
        if let value = dict["experiments"] as? [Any?] {
            var tmp : [ExperimentConfig] = []
            for v in value {
                if v != nil {
                    var model = ExperimentConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experiments = tmp
        }
        if let value = dict["input"] as? [String: Any] {
            self.input = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["querySql"] as? String {
            self.querySql = value
        }
        if let value = dict["selectedItemIds"] as? [String] {
            self.selectedItemIds = value
        }
    }
}

public class UpdateExperimentPlanResponseBody : Tea.TeaModel {
    public var message: String?

    public var planId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentRunRequest : Tea.TeaModel {
    public var completedAt: Int64?

    public var completedTasks: Int32?

    public var executedAt: Int64?

    public var failedTasks: Int32?

    public var recordName: String?

    public var status: String?

    public var totalTasks: Int32?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completedAt != nil {
            map["completedAt"] = self.completedAt!
        }
        if self.completedTasks != nil {
            map["completedTasks"] = self.completedTasks!
        }
        if self.executedAt != nil {
            map["executedAt"] = self.executedAt!
        }
        if self.failedTasks != nil {
            map["failedTasks"] = self.failedTasks!
        }
        if self.recordName != nil {
            map["recordName"] = self.recordName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalTasks != nil {
            map["totalTasks"] = self.totalTasks!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["completedAt"] as? Int64 {
            self.completedAt = value
        }
        if let value = dict["completedTasks"] as? Int32 {
            self.completedTasks = value
        }
        if let value = dict["executedAt"] as? Int64 {
            self.executedAt = value
        }
        if let value = dict["failedTasks"] as? Int32 {
            self.failedTasks = value
        }
        if let value = dict["recordName"] as? String {
            self.recordName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["totalTasks"] as? Int32 {
            self.totalTasks = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateExperimentRunResponseBody : Tea.TeaModel {
    public var message: String?

    public var recordId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["recordId"] as? String {
            self.recordId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateExperimentRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateExperimentRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePipelineRequest : Tea.TeaModel {
    public class ExecutePolicy : Tea.TeaModel {
        public class RunOnce : Tea.TeaModel {
            public var fromTime: Int64?

            public var toTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.toTime != nil {
                    map["toTime"] = self.toTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["toTime"] as? Int64 {
                    self.toTime = value
                }
            }
        }
        public class Scheduled : Tea.TeaModel {
            public var fromTime: Int64?

            public var interval: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.interval != nil {
                    map["interval"] = self.interval!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["interval"] as? String {
                    self.interval = value
                }
            }
        }
        public var mode: String?

        public var runOnce: UpdatePipelineRequest.ExecutePolicy.RunOnce?

        public var scheduled: UpdatePipelineRequest.ExecutePolicy.Scheduled?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runOnce?.validate()
            try self.scheduled?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.runOnce != nil {
                map["runOnce"] = self.runOnce?.toMap()
            }
            if self.scheduled != nil {
                map["scheduled"] = self.scheduled?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["runOnce"] as? [String: Any?] {
                var model = UpdatePipelineRequest.ExecutePolicy.RunOnce()
                model.fromMap(value)
                self.runOnce = model
            }
            if let value = dict["scheduled"] as? [String: Any?] {
                var model = UpdatePipelineRequest.ExecutePolicy.Scheduled()
                model.fromMap(value)
                self.scheduled = model
            }
        }
    }
    public class Pipeline : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var id: String?

            public var parameters: [String: Any]?

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
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var nodes: [UpdatePipelineRequest.Pipeline.Nodes]?

        public override init() {
            super.init()
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
                map["nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nodes"] as? [Any?] {
                var tmp : [UpdatePipelineRequest.Pipeline.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePipelineRequest.Pipeline.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public class Sink : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var agentSpace: String?

            public var dataset: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentSpace != nil {
                    map["agentSpace"] = self.agentSpace!
                }
                if self.dataset != nil {
                    map["dataset"] = self.dataset!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentSpace"] as? String {
                    self.agentSpace = value
                }
                if let value = dict["dataset"] as? String {
                    self.dataset = value
                }
            }
        }
        public var dataset: UpdatePipelineRequest.Sink.Dataset?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataset != nil {
                map["dataset"] = self.dataset?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataset"] as? [String: Any?] {
                var model = UpdatePipelineRequest.Sink.Dataset()
                model.fromMap(value)
                self.dataset = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Source : Tea.TeaModel {
        public class Logstore : Tea.TeaModel {
            public var logstore: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.query != nil {
                    map["query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["query"] as? String {
                    self.query = value
                }
            }
        }
        public var logstore: UpdatePipelineRequest.Source.Logstore?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logstore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstore != nil {
                map["logstore"] = self.logstore?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? [String: Any?] {
                var model = UpdatePipelineRequest.Source.Logstore()
                model.fromMap(value)
                self.logstore = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var description_: String?

    public var executePolicy: UpdatePipelineRequest.ExecutePolicy?

    public var pipeline: UpdatePipelineRequest.Pipeline?

    public var sink: UpdatePipelineRequest.Sink?

    public var source: UpdatePipelineRequest.Source?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executePolicy?.validate()
        try self.pipeline?.validate()
        try self.sink?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executePolicy != nil {
            map["executePolicy"] = self.executePolicy?.toMap()
        }
        if self.pipeline != nil {
            map["pipeline"] = self.pipeline?.toMap()
        }
        if self.sink != nil {
            map["sink"] = self.sink?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executePolicy"] as? [String: Any?] {
            var model = UpdatePipelineRequest.ExecutePolicy()
            model.fromMap(value)
            self.executePolicy = model
        }
        if let value = dict["pipeline"] as? [String: Any?] {
            var model = UpdatePipelineRequest.Pipeline()
            model.fromMap(value)
            self.pipeline = model
        }
        if let value = dict["sink"] as? [String: Any?] {
            var model = UpdatePipelineRequest.Sink()
            model.fromMap(value)
            self.sink = model
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = UpdatePipelineRequest.Source()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdatePipelineResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePipelineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
