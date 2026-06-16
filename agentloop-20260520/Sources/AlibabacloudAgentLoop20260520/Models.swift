import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BackfillStrategy : Tea.TeaModel {
    public var enabled: Bool?

    public var endTime: Int64?

    public var immediate: Bool?

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
        if self.immediate != nil {
            map["immediate"] = self.immediate!
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
        if let value = dict["immediate"] as? Bool {
            self.immediate = value
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
    public var endTime: Int64?

    public var maxRecords: Int32?

    public var provided: [String: Any]?

    public var query: String?

    public var samplingRate: Int32?

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
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
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

    public var planId: String?

    public var planName: String?

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
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
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
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
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
    public var batchId: String?

    public var completedAt: Int64?

    public var completedTasks: Int32?

    public var dataSourceType: String?

    public var datasetId: String?

    public var datasetProject: String?

    public var errorMessage: String?

    public var evaluators: [Evaluator]?

    public var executedAt: Int64?

    public var experimentConfig: ExperimentConfig?

    public var experimentName: String?

    public var failedTasks: Int32?

    public var input: [String: Any]?

    public var modelName: String?

    public var planId: String?

    public var planName: String?

    public var progress: Double?

    public var recordId: String?

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
        try self.experimentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
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
            map["experimentConfig"] = self.experimentConfig?.toMap()
        }
        if self.experimentName != nil {
            map["experimentName"] = self.experimentName!
        }
        if self.failedTasks != nil {
            map["failedTasks"] = self.failedTasks!
        }
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.planId != nil {
            map["planId"] = self.planId!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.recordId != nil {
            map["recordId"] = self.recordId!
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
        if let value = dict["batchId"] as? String {
            self.batchId = value
        }
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
        if let value = dict["experimentConfig"] as? [String: Any?] {
            var model = ExperimentConfig()
            model.fromMap(value)
            self.experimentConfig = model
        }
        if let value = dict["experimentName"] as? String {
            self.experimentName = value
        }
        if let value = dict["failedTasks"] as? Int32 {
            self.failedTasks = value
        }
        if let value = dict["input"] as? [String: Any] {
            self.input = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["planId"] as? String {
            self.planId = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["progress"] as? Double {
            self.progress = value
        }
        if let value = dict["recordId"] as? String {
            self.recordId = value
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

public class AddMem0MemoriesRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var body: [String: Any]?

    public override init() {
        super.init()
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
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class AddMem0MemoriesResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class CreateAgentSpaceRequest : Tea.TeaModel {
    public var agentSpace: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
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
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
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

public class DeleteMem0MemoriesRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var agentId: String?

    public var appId: String?

    public var contextStoreId: String?

    public var metadata: [String: Any]?

    public var orgId: String?

    public var projectId: String?

    public var runId: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        if self.appId != nil {
            map["app_id"] = self.appId!
        }
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.runId != nil {
            map["run_id"] = self.runId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["app_id"] as? String {
            self.appId = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
        if let value = dict["run_id"] as? String {
            self.runId = value
        }
        if let value = dict["user_id"] as? String {
            self.userId = value
        }
    }
}

public class DeleteMem0MemoriesShrinkRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var agentId: String?

    public var appId: String?

    public var contextStoreId: String?

    public var metadataShrink: String?

    public var orgId: String?

    public var projectId: String?

    public var runId: String?

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
        if self.agentSpace != nil {
            map["agentSpace"] = self.agentSpace!
        }
        if self.agentId != nil {
            map["agent_id"] = self.agentId!
        }
        if self.appId != nil {
            map["app_id"] = self.appId!
        }
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.metadataShrink != nil {
            map["metadata"] = self.metadataShrink!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.runId != nil {
            map["run_id"] = self.runId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["app_id"] as? String {
            self.appId = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["metadata"] as? String {
            self.metadataShrink = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
        if let value = dict["run_id"] as? String {
            self.runId = value
        }
        if let value = dict["user_id"] as? String {
            self.userId = value
        }
    }
}

public class DeleteMem0MemoriesResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class DeleteMem0MemoryRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var contextStoreId: String?

    public var orgId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
    }
}

public class DeleteMem0MemoryResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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
    public var query: String?

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
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ExecuteQueryResponseBody : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public var affectedRows: Int32?

        public var count: Int32?

        public var elapsedMillisecond: Int64?

        public var progress: String?

        public override init() {
            super.init()
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
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.elapsedMillisecond != nil {
                map["elapsedMillisecond"] = self.elapsedMillisecond!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
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

public class GetMem0MemoriesRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var body: [String: Any]?

    public var contextStoreId: String?

    public var enableGraph: Bool?

    public var orgId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.enableGraph != nil {
            map["enable_graph"] = self.enableGraph!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["enable_graph"] as? Bool {
            self.enableGraph = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
    }
}

public class GetMem0MemoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [[String: Any]] {
            self.body = value
        }
    }
}

public class GetMem0MemoryRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var contextStoreId: String?

    public var orgId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
    }
}

public class GetMem0MemoryResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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
    public var createTime: String?

    public var description_: String?

    public var executePolicy: GetPipelineResponseBody.ExecutePolicy?

    public var pipeline: GetPipelineResponseBody.Pipeline?

    public var pipelineName: String?

    public var regionId: String?

    public var requestId: String?

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
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
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

public class ListAgentSpacesRequest : Tea.TeaModel {
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

public class ListPipelinesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pipelineName: String?

    public override init() {
        super.init()
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
    }
}

public class ListPipelinesResponseBody : Tea.TeaModel {
    public class Pipelines : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var pipelineName: String?

        public var regionId: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
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
            if let value = dict["pipelineName"] as? String {
                self.pipelineName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
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

    public override init() {
        super.init()
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

public class SearchMem0MemoriesRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var body: [String: Any]?

    public var contextStoreId: String?

    public var enableGraph: Bool?

    public var orgId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.enableGraph != nil {
            map["enable_graph"] = self.enableGraph!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["enable_graph"] as? Bool {
            self.enableGraph = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
    }
}

public class SearchMem0MemoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [[String: Any]] {
            self.body = value
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

public class UpdateMem0MemoryRequest : Tea.TeaModel {
    public var agentSpace: String?

    public var body: [String: Any]?

    public var contextStoreId: String?

    public var orgId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.contextStoreId != nil {
            map["context_store_id"] = self.contextStoreId!
        }
        if self.orgId != nil {
            map["org_id"] = self.orgId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentSpace"] as? String {
            self.agentSpace = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["context_store_id"] as? String {
            self.contextStoreId = value
        }
        if let value = dict["org_id"] as? String {
            self.orgId = value
        }
        if let value = dict["project_id"] as? String {
            self.projectId = value
        }
    }
}

public class UpdateMem0MemoryResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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

public class ValidateMem0APIKeyRequest : Tea.TeaModel {
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

public class ValidateMem0APIKeyResponse : Tea.TeaModel {
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
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}
