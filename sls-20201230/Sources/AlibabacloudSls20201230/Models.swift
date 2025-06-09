import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewaySLS
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil

public class AgentInstanceConfigGrayConfigs : Tea.TeaModel {
    public var condition: String?

    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.condition != nil {
            map["condition"] = self.condition!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["condition"] as? String {
            self.condition = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
    }
}

public class Alert : Tea.TeaModel {
    public var configuration: AlertConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var schedule: Schedule?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = AlertConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class AlertConfiguration : Tea.TeaModel {
    public var annotations: [AlertTag]?

    public var autoAnnotation: Bool?

    public var conditionConfiguration: ConditionConfiguration?

    public var dashboard: String?

    public var groupConfiguration: GroupConfiguration?

    public var joinConfigurations: [JoinConfiguration]?

    public var labels: [AlertTag]?

    public var muteUntil: Int64?

    public var noDataFire: Bool?

    public var noDataSeverity: Int32?

    public var policyConfiguration: PolicyConfiguration?

    public var queryList: [AlertQuery]?

    public var sendResolved: Bool?

    public var severityConfigurations: [SeverityConfiguration]?

    public var sinkAlerthub: SinkAlerthubConfiguration?

    public var sinkCms: SinkCmsConfiguration?

    public var sinkEventStore: SinkEventStoreConfiguration?

    public var tags: [String]?

    public var templateConfiguration: TemplateConfiguration?

    public var threshold: Int32?

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
        try self.conditionConfiguration?.validate()
        try self.groupConfiguration?.validate()
        try self.policyConfiguration?.validate()
        try self.sinkAlerthub?.validate()
        try self.sinkCms?.validate()
        try self.sinkEventStore?.validate()
        try self.templateConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            var tmp : [Any] = []
            for k in self.annotations! {
                tmp.append(k.toMap())
            }
            map["annotations"] = tmp
        }
        if self.autoAnnotation != nil {
            map["autoAnnotation"] = self.autoAnnotation!
        }
        if self.conditionConfiguration != nil {
            map["conditionConfiguration"] = self.conditionConfiguration?.toMap()
        }
        if self.dashboard != nil {
            map["dashboard"] = self.dashboard!
        }
        if self.groupConfiguration != nil {
            map["groupConfiguration"] = self.groupConfiguration?.toMap()
        }
        if self.joinConfigurations != nil {
            var tmp : [Any] = []
            for k in self.joinConfigurations! {
                tmp.append(k.toMap())
            }
            map["joinConfigurations"] = tmp
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["labels"] = tmp
        }
        if self.muteUntil != nil {
            map["muteUntil"] = self.muteUntil!
        }
        if self.noDataFire != nil {
            map["noDataFire"] = self.noDataFire!
        }
        if self.noDataSeverity != nil {
            map["noDataSeverity"] = self.noDataSeverity!
        }
        if self.policyConfiguration != nil {
            map["policyConfiguration"] = self.policyConfiguration?.toMap()
        }
        if self.queryList != nil {
            var tmp : [Any] = []
            for k in self.queryList! {
                tmp.append(k.toMap())
            }
            map["queryList"] = tmp
        }
        if self.sendResolved != nil {
            map["sendResolved"] = self.sendResolved!
        }
        if self.severityConfigurations != nil {
            var tmp : [Any] = []
            for k in self.severityConfigurations! {
                tmp.append(k.toMap())
            }
            map["severityConfigurations"] = tmp
        }
        if self.sinkAlerthub != nil {
            map["sinkAlerthub"] = self.sinkAlerthub?.toMap()
        }
        if self.sinkCms != nil {
            map["sinkCms"] = self.sinkCms?.toMap()
        }
        if self.sinkEventStore != nil {
            map["sinkEventStore"] = self.sinkEventStore?.toMap()
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.templateConfiguration != nil {
            map["templateConfiguration"] = self.templateConfiguration?.toMap()
        }
        if self.threshold != nil {
            map["threshold"] = self.threshold!
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
        if let value = dict["annotations"] as? [Any?] {
            var tmp : [AlertTag] = []
            for v in value {
                if v != nil {
                    var model = AlertTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.annotations = tmp
        }
        if let value = dict["autoAnnotation"] as? Bool {
            self.autoAnnotation = value
        }
        if let value = dict["conditionConfiguration"] as? [String: Any?] {
            var model = ConditionConfiguration()
            model.fromMap(value)
            self.conditionConfiguration = model
        }
        if let value = dict["dashboard"] as? String {
            self.dashboard = value
        }
        if let value = dict["groupConfiguration"] as? [String: Any?] {
            var model = GroupConfiguration()
            model.fromMap(value)
            self.groupConfiguration = model
        }
        if let value = dict["joinConfigurations"] as? [Any?] {
            var tmp : [JoinConfiguration] = []
            for v in value {
                if v != nil {
                    var model = JoinConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.joinConfigurations = tmp
        }
        if let value = dict["labels"] as? [Any?] {
            var tmp : [AlertTag] = []
            for v in value {
                if v != nil {
                    var model = AlertTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["muteUntil"] as? Int64 {
            self.muteUntil = value
        }
        if let value = dict["noDataFire"] as? Bool {
            self.noDataFire = value
        }
        if let value = dict["noDataSeverity"] as? Int32 {
            self.noDataSeverity = value
        }
        if let value = dict["policyConfiguration"] as? [String: Any?] {
            var model = PolicyConfiguration()
            model.fromMap(value)
            self.policyConfiguration = model
        }
        if let value = dict["queryList"] as? [Any?] {
            var tmp : [AlertQuery] = []
            for v in value {
                if v != nil {
                    var model = AlertQuery()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryList = tmp
        }
        if let value = dict["sendResolved"] as? Bool {
            self.sendResolved = value
        }
        if let value = dict["severityConfigurations"] as? [Any?] {
            var tmp : [SeverityConfiguration] = []
            for v in value {
                if v != nil {
                    var model = SeverityConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.severityConfigurations = tmp
        }
        if let value = dict["sinkAlerthub"] as? [String: Any?] {
            var model = SinkAlerthubConfiguration()
            model.fromMap(value)
            self.sinkAlerthub = model
        }
        if let value = dict["sinkCms"] as? [String: Any?] {
            var model = SinkCmsConfiguration()
            model.fromMap(value)
            self.sinkCms = model
        }
        if let value = dict["sinkEventStore"] as? [String: Any?] {
            var model = SinkEventStoreConfiguration()
            model.fromMap(value)
            self.sinkEventStore = model
        }
        if let value = dict["tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["templateConfiguration"] as? [String: Any?] {
            var model = TemplateConfiguration()
            model.fromMap(value)
            self.templateConfiguration = model
        }
        if let value = dict["threshold"] as? Int32 {
            self.threshold = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class AlertQuery : Tea.TeaModel {
    public var chartTitle: String?

    public var dashboardId: String?

    public var end: String?

    public var powerSqlMode: String?

    public var project: String?

    public var query: String?

    public var region: String?

    public var roleArn: String?

    public var start: String?

    public var store: String?

    public var storeType: String?

    public var timeSpanType: String?

    public var ui: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chartTitle != nil {
            map["chartTitle"] = self.chartTitle!
        }
        if self.dashboardId != nil {
            map["dashboardId"] = self.dashboardId!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.powerSqlMode != nil {
            map["powerSqlMode"] = self.powerSqlMode!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        if self.store != nil {
            map["store"] = self.store!
        }
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        if self.timeSpanType != nil {
            map["timeSpanType"] = self.timeSpanType!
        }
        if self.ui != nil {
            map["ui"] = self.ui!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chartTitle"] as? String {
            self.chartTitle = value
        }
        if let value = dict["dashboardId"] as? String {
            self.dashboardId = value
        }
        if let value = dict["end"] as? String {
            self.end = value
        }
        if let value = dict["powerSqlMode"] as? String {
            self.powerSqlMode = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["start"] as? String {
            self.start = value
        }
        if let value = dict["store"] as? String {
            self.store = value
        }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
        if let value = dict["timeSpanType"] as? String {
            self.timeSpanType = value
        }
        if let value = dict["ui"] as? String {
            self.ui = value
        }
    }
}

public class AlertTag : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class ConditionConfiguration : Tea.TeaModel {
    public var condition: String?

    public var countCondition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.condition != nil {
            map["condition"] = self.condition!
        }
        if self.countCondition != nil {
            map["countCondition"] = self.countCondition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["condition"] as? String {
            self.condition = value
        }
        if let value = dict["countCondition"] as? String {
            self.countCondition = value
        }
    }
}

public class ConsumeProcessor : Tea.TeaModel {
    public var configuration: ConsumeProcessorConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var processorName: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.processorName != nil {
            map["processorName"] = self.processorName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ConsumeProcessorConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["processorName"] as? String {
            self.processorName = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class ConsumeProcessorConfiguration : Tea.TeaModel {
    public var spl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spl != nil {
            map["spl"] = self.spl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["spl"] as? String {
            self.spl = value
        }
    }
}

public class ConsumerGroup : Tea.TeaModel {
    public var name: String?

    public var order: Bool?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.order != nil {
            map["order"] = self.order!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["order"] as? Bool {
            self.order = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class CopilotAction : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var name: String?

        public var prompt: String?

        public var required_: String?

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
            if self.prompt != nil {
                map["prompt"] = self.prompt!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["required"] as? String {
                self.required_ = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class QueryTemplateParameters : Tea.TeaModel {
        public var name: String?

        public var prompt: String?

        public var required_: String?

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
            if self.prompt != nil {
                map["prompt"] = self.prompt!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["required"] as? String {
                self.required_ = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var action: String?

    public var description_: String?

    public var name: String?

    public var parameters: [CopilotAction.Parameters]?

    public var queryMaxLength: Int64?

    public var queryTemplate: String?

    public var queryTemplateParameters: [CopilotAction.QueryTemplateParameters]?

    public var scene: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["parameters"] = tmp
        }
        if self.queryMaxLength != nil {
            map["queryMaxLength"] = self.queryMaxLength!
        }
        if self.queryTemplate != nil {
            map["queryTemplate"] = self.queryTemplate!
        }
        if self.queryTemplateParameters != nil {
            var tmp : [Any] = []
            for k in self.queryTemplateParameters! {
                tmp.append(k.toMap())
            }
            map["queryTemplateParameters"] = tmp
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parameters"] as? [Any?] {
            var tmp : [CopilotAction.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CopilotAction.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["queryMaxLength"] as? Int64 {
            self.queryMaxLength = value
        }
        if let value = dict["queryTemplate"] as? String {
            self.queryTemplate = value
        }
        if let value = dict["queryTemplateParameters"] as? [Any?] {
            var tmp : [CopilotAction.QueryTemplateParameters] = []
            for v in value {
                if v != nil {
                    var model = CopilotAction.QueryTemplateParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryTemplateParameters = tmp
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
    }
}

public class ETL : Tea.TeaModel {
    public var configuration: ETLConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ETLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ETLConfiguration : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var fromTime: Int64?

    public var lang: String?

    public var logstore: String?

    public var parameters: [String: Any]?

    public var roleArn: String?

    public var script: String?

    public var sinks: [ETLConfigurationSink]?

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
        if self.accessKeyId != nil {
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.accessKeySecret != nil {
            map["accessKeySecret"] = self.accessKeySecret!
        }
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.script != nil {
            map["script"] = self.script!
        }
        if self.sinks != nil {
            var tmp : [Any] = []
            for k in self.sinks! {
                tmp.append(k.toMap())
            }
            map["sinks"] = tmp
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessKeyId"] as? String {
            self.accessKeyId = value
        }
        if let value = dict["accessKeySecret"] as? String {
            self.accessKeySecret = value
        }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["script"] as? String {
            self.script = value
        }
        if let value = dict["sinks"] as? [Any?] {
            var tmp : [ETLConfigurationSink] = []
            for v in value {
                if v != nil {
                    var model = ETLConfigurationSink()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sinks = tmp
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class ETLConfigurationSink : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var datasets: [String]?

    public var endpoint: String?

    public var logstore: String?

    public var name: String?

    public var project: String?

    public var roleArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyId != nil {
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.accessKeySecret != nil {
            map["accessKeySecret"] = self.accessKeySecret!
        }
        if self.datasets != nil {
            map["datasets"] = self.datasets!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessKeyId"] as? String {
            self.accessKeyId = value
        }
        if let value = dict["accessKeySecret"] as? String {
            self.accessKeySecret = value
        }
        if let value = dict["datasets"] as? [String] {
            self.datasets = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
    }
}

public class EncryptConf : Tea.TeaModel {
    public var enable: Bool?

    public var encryptType: String?

    public var userCmkInfo: EncryptUserCmkConf?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userCmkInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.encryptType != nil {
            map["encrypt_type"] = self.encryptType!
        }
        if self.userCmkInfo != nil {
            map["user_cmk_info"] = self.userCmkInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["encrypt_type"] as? String {
            self.encryptType = value
        }
        if let value = dict["user_cmk_info"] as? [String: Any?] {
            var model = EncryptUserCmkConf()
            model.fromMap(value)
            self.userCmkInfo = model
        }
    }
}

public class EncryptUserCmkConf : Tea.TeaModel {
    public var arn: String?

    public var cmkKeyId: String?

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
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.cmkKeyId != nil {
            map["cmk_key_id"] = self.cmkKeyId!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arn"] as? String {
            self.arn = value
        }
        if let value = dict["cmk_key_id"] as? String {
            self.cmkKeyId = value
        }
        if let value = dict["region_id"] as? String {
            self.regionId = value
        }
    }
}

public class GroupConfiguration : Tea.TeaModel {
    public var fields: [String]?

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
        if self.fields != nil {
            map["fields"] = self.fields!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fields"] as? [String] {
            self.fields = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class Histogram : Tea.TeaModel {
    public var count: Int64?

    public var from: Int32?

    public var progress: String?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["progress"] as? String {
            self.progress = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
    }
}

public class IndexJsonKey : Tea.TeaModel {
    public var alias: String?

    public var caseSensitive: Bool?

    public var chn: Bool?

    public var docValue: Bool?

    public var token: [String]?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.caseSensitive != nil {
            map["caseSensitive"] = self.caseSensitive!
        }
        if self.chn != nil {
            map["chn"] = self.chn!
        }
        if self.docValue != nil {
            map["doc_value"] = self.docValue!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["caseSensitive"] as? Bool {
            self.caseSensitive = value
        }
        if let value = dict["chn"] as? Bool {
            self.chn = value
        }
        if let value = dict["doc_value"] as? Bool {
            self.docValue = value
        }
        if let value = dict["token"] as? [String] {
            self.token = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IndexKey : Tea.TeaModel {
    public var alias: String?

    public var caseSensitive: Bool?

    public var chn: Bool?

    public var docValue: Bool?

    public var indexAll: Bool?

    public var jsonKeys: [String: IndexJsonKey]?

    public var maxDepth: Int64?

    public var token: [String]?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.caseSensitive != nil {
            map["caseSensitive"] = self.caseSensitive!
        }
        if self.chn != nil {
            map["chn"] = self.chn!
        }
        if self.docValue != nil {
            map["doc_value"] = self.docValue!
        }
        if self.indexAll != nil {
            map["index_all"] = self.indexAll!
        }
        if self.jsonKeys != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.jsonKeys! {
                tmp[k] = v.toMap()
            }
            map["json_keys"] = tmp
        }
        if self.maxDepth != nil {
            map["max_depth"] = self.maxDepth!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["caseSensitive"] as? Bool {
            self.caseSensitive = value
        }
        if let value = dict["chn"] as? Bool {
            self.chn = value
        }
        if let value = dict["doc_value"] as? Bool {
            self.docValue = value
        }
        if let value = dict["index_all"] as? Bool {
            self.indexAll = value
        }
        if let value = dict["json_keys"] as? [String: Any?] {
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
        if let value = dict["max_depth"] as? Int64 {
            self.maxDepth = value
        }
        if let value = dict["token"] as? [String] {
            self.token = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IngestProcessor : Tea.TeaModel {
    public var configuration: IngestProcessorConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var processorName: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.processorName != nil {
            map["processorName"] = self.processorName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = IngestProcessorConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["processorName"] as? String {
            self.processorName = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class IngestProcessorConfiguration : Tea.TeaModel {
    public var parseFail: String?

    public var spl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parseFail != nil {
            map["parseFail"] = self.parseFail!
        }
        if self.spl != nil {
            map["spl"] = self.spl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parseFail"] as? String {
            self.parseFail = value
        }
        if let value = dict["spl"] as? String {
            self.spl = value
        }
    }
}

public class JoinConfiguration : Tea.TeaModel {
    public var condition: String?

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
        if self.condition != nil {
            map["condition"] = self.condition!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["condition"] as? String {
            self.condition = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class LogContent : Tea.TeaModel {
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

public class LogGroup : Tea.TeaModel {
    public var logItems: [LogItem]?

    public var logTags: [LogTag]?

    public var source: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logItems != nil {
            var tmp : [Any] = []
            for k in self.logItems! {
                tmp.append(k.toMap())
            }
            map["LogItems"] = tmp
        }
        if self.logTags != nil {
            var tmp : [Any] = []
            for k in self.logTags! {
                tmp.append(k.toMap())
            }
            map["LogTags"] = tmp
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogItems"] as? [Any?] {
            var tmp : [LogItem] = []
            for v in value {
                if v != nil {
                    var model = LogItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logItems = tmp
        }
        if let value = dict["LogTags"] as? [Any?] {
            var tmp : [LogTag] = []
            for v in value {
                if v != nil {
                    var model = LogTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logTags = tmp
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class LogGroupList : Tea.TeaModel {
    public var logGroupList: [LogGroup]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logGroupList != nil {
            var tmp : [Any] = []
            for k in self.logGroupList! {
                tmp.append(k.toMap())
            }
            map["logGroupList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logGroupList"] as? [Any?] {
            var tmp : [LogGroup] = []
            for v in value {
                if v != nil {
                    var model = LogGroup()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logGroupList = tmp
        }
    }
}

public class LogItem : Tea.TeaModel {
    public var contents: [LogContent]?

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
        if self.contents != nil {
            var tmp : [Any] = []
            for k in self.contents! {
                tmp.append(k.toMap())
            }
            map["Contents"] = tmp
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Contents"] as? [Any?] {
            var tmp : [LogContent] = []
            for v in value {
                if v != nil {
                    var model = LogContent()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contents = tmp
        }
        if let value = dict["Time"] as? Int32 {
            self.time = value
        }
    }
}

public class LogTag : Tea.TeaModel {
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

public class LogtailConfig : Tea.TeaModel {
    public class OutputDetail : Tea.TeaModel {
        public var endpoint: String?

        public var logstoreName: String?

        public var region: String?

        public var telemetryType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.logstoreName != nil {
                map["logstoreName"] = self.logstoreName!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.telemetryType != nil {
                map["telemetryType"] = self.telemetryType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["logstoreName"] as? String {
                self.logstoreName = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["telemetryType"] as? String {
                self.telemetryType = value
            }
        }
    }
    public var configName: String?

    public var createTime: Int64?

    public var inputDetail: [String: Any]?

    public var inputType: String?

    public var lastModifyTime: Int64?

    public var logSample: String?

    public var outputDetail: LogtailConfig.OutputDetail?

    public var outputType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.outputDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.inputDetail != nil {
            map["inputDetail"] = self.inputDetail!
        }
        if self.inputType != nil {
            map["inputType"] = self.inputType!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.logSample != nil {
            map["logSample"] = self.logSample!
        }
        if self.outputDetail != nil {
            map["outputDetail"] = self.outputDetail?.toMap()
        }
        if self.outputType != nil {
            map["outputType"] = self.outputType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["inputDetail"] as? [String: Any] {
            self.inputDetail = value
        }
        if let value = dict["inputType"] as? String {
            self.inputType = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["logSample"] as? String {
            self.logSample = value
        }
        if let value = dict["outputDetail"] as? [String: Any?] {
            var model = LogtailConfig.OutputDetail()
            model.fromMap(value)
            self.outputDetail = model
        }
        if let value = dict["outputType"] as? String {
            self.outputType = value
        }
    }
}

public class LogtailPipelineConfig : Tea.TeaModel {
    public var aggregators: [[String: Any]]?

    public var configName: String?

    public var createTime: Int64?

    public var flushers: [[String: Any]]?

    public var global: [String: Any]?

    public var inputs: [[String: Any]]?

    public var lastModifyTime: Int64?

    public var logSample: String?

    public var processors: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregators != nil {
            map["aggregators"] = self.aggregators!
        }
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.flushers != nil {
            map["flushers"] = self.flushers!
        }
        if self.global != nil {
            map["global"] = self.global!
        }
        if self.inputs != nil {
            map["inputs"] = self.inputs!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.logSample != nil {
            map["logSample"] = self.logSample!
        }
        if self.processors != nil {
            map["processors"] = self.processors!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aggregators"] as? [[String: Any]] {
            self.aggregators = value
        }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["flushers"] as? [[String: Any]] {
            self.flushers = value
        }
        if let value = dict["global"] as? [String: Any] {
            self.global = value
        }
        if let value = dict["inputs"] as? [[String: Any]] {
            self.inputs = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["logSample"] as? String {
            self.logSample = value
        }
        if let value = dict["processors"] as? [[String: Any]] {
            self.processors = value
        }
    }
}

public class MLDataParam : Tea.TeaModel {
    public var annotationdataId: String?

    public var annotations: [String: MLDataParamAnnotationsValue]?

    public var config: [String: String]?

    public var createTime: Int64?

    public var dataHash: String?

    public var datasetId: String?

    public var lastModifyTime: Int64?

    public var predictions: [String: MLDataParamPredictionsValue]?

    public var value: String?

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
        if self.annotationdataId != nil {
            map["annotationdataId"] = self.annotationdataId!
        }
        if self.annotations != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.annotations! {
                tmp[k] = v.toMap()
            }
            map["annotations"] = tmp
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.dataHash != nil {
            map["dataHash"] = self.dataHash!
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.predictions != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.predictions! {
                tmp[k] = v.toMap()
            }
            map["predictions"] = tmp
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.valueType != nil {
            map["valueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotationdataId"] as? String {
            self.annotationdataId = value
        }
        if let value = dict["annotations"] as? [String: Any?] {
            var tmp : [String: MLDataParamAnnotationsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = MLDataParamAnnotationsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.annotations = tmp
        }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["dataHash"] as? String {
            self.dataHash = value
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["predictions"] as? [String: Any?] {
            var tmp : [String: MLDataParamPredictionsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = MLDataParamPredictionsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.predictions = tmp
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["valueType"] as? String {
            self.valueType = value
        }
    }
}

public class MLDataSetParam : Tea.TeaModel {
    public var createBy: String?

    public var createTime: Int64?

    public var dataType: String?

    public var datasetId: String?

    public var description_: String?

    public var labelId: String?

    public var lastModifyTime: Int64?

    public var name: String?

    public var settingType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createBy != nil {
            map["createBy"] = self.createBy!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.labelId != nil {
            map["labelId"] = self.labelId!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.settingType != nil {
            map["settingType"] = self.settingType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createBy"] as? String {
            self.createBy = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["labelId"] as? String {
            self.labelId = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["settingType"] as? String {
            self.settingType = value
        }
    }
}

public class MLLabelParam : Tea.TeaModel {
    public class Settings : Tea.TeaModel {
        public var config: String?

        public var mode: String?

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
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
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
            if let value = dict["config"] as? String {
                self.config = value
            }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var createTime: Int64?

    public var description_: String?

    public var labelId: String?

    public var lastModifyTime: Int64?

    public var name: String?

    public var settings: [MLLabelParam.Settings]?

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
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.labelId != nil {
            map["labelId"] = self.labelId!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.settings != nil {
            var tmp : [Any] = []
            for k in self.settings! {
                tmp.append(k.toMap())
            }
            map["settings"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["labelId"] as? String {
            self.labelId = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["settings"] as? [Any?] {
            var tmp : [MLLabelParam.Settings] = []
            for v in value {
                if v != nil {
                    var model = MLLabelParam.Settings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.settings = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class MLServiceAnalysisParam : Tea.TeaModel {
    public var input: [[String: String]]?

    public var parameter: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.parameter != nil {
            map["parameter"] = self.parameter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [[String: String]] {
            self.input = value
        }
        if let value = dict["parameter"] as? [String: String] {
            self.parameter = value
        }
    }
}

public class MLServiceParam : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var modelResourceId: String?

        public var modelResourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelResourceId != nil {
                map["modelResourceId"] = self.modelResourceId!
            }
            if self.modelResourceType != nil {
                map["modelResourceType"] = self.modelResourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelResourceId"] as? String {
                self.modelResourceId = value
            }
            if let value = dict["modelResourceType"] as? String {
                self.modelResourceType = value
            }
        }
    }
    public class Resource : Tea.TeaModel {
        public var cpuLimit: Int32?

        public var gpu: Int32?

        public var memoryLimit: Int32?

        public var replica: Int32?

        public override init() {
            super.init()
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
                map["cpuLimit"] = self.cpuLimit!
            }
            if self.gpu != nil {
                map["gpu"] = self.gpu!
            }
            if self.memoryLimit != nil {
                map["memoryLimit"] = self.memoryLimit!
            }
            if self.replica != nil {
                map["replica"] = self.replica!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cpuLimit"] as? Int32 {
                self.cpuLimit = value
            }
            if let value = dict["gpu"] as? Int32 {
                self.gpu = value
            }
            if let value = dict["memoryLimit"] as? Int32 {
                self.memoryLimit = value
            }
            if let value = dict["replica"] as? Int32 {
                self.replica = value
            }
        }
    }
    public var description_: String?

    public var model: MLServiceParam.Model?

    public var name: String?

    public var resource: MLServiceParam.Resource?

    public var serviceType: String?

    public var status: String?

    public var updateTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.model != nil {
            map["model"] = self.model?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTimestamp != nil {
            map["updateTimestamp"] = self.updateTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["model"] as? [String: Any?] {
            var model = MLServiceParam.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resource"] as? [String: Any?] {
            var model = MLServiceParam.Resource()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updateTimestamp"] as? Int64 {
            self.updateTimestamp = value
        }
    }
}

public class MaxComputeExport : Tea.TeaModel {
    public var configuration: MaxComputeExportConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = MaxComputeExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class MaxComputeExportConfiguration : Tea.TeaModel {
    public var fromTime: Int64?

    public var logstore: String?

    public var roleArn: String?

    public var sink: MaxComputeExportConfigurationSink?

    public var toTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sink?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.sink != nil {
            map["sink"] = self.sink?.toMap()
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
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["sink"] as? [String: Any?] {
            var model = MaxComputeExportConfigurationSink()
            model.fromMap(value)
            self.sink = model
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class MaxComputeExportConfigurationSink : Tea.TeaModel {
    public var bufferInterval: String?

    public var fields: [String]?

    public var filterInvalid: Bool?

    public var odpsAccessKeyId: String?

    public var odpsAccessSecret: String?

    public var odpsEndpoint: String?

    public var odpsProject: String?

    public var odpsRolearn: String?

    public var odpsTable: String?

    public var odpsTunnelEndpoint: String?

    public var partitionColumn: [String]?

    public var partitionTimeFormat: String?

    public var timeFormatType: String?

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
        if self.bufferInterval != nil {
            map["bufferInterval"] = self.bufferInterval!
        }
        if self.fields != nil {
            map["fields"] = self.fields!
        }
        if self.filterInvalid != nil {
            map["filterInvalid"] = self.filterInvalid!
        }
        if self.odpsAccessKeyId != nil {
            map["odpsAccessKeyId"] = self.odpsAccessKeyId!
        }
        if self.odpsAccessSecret != nil {
            map["odpsAccessSecret"] = self.odpsAccessSecret!
        }
        if self.odpsEndpoint != nil {
            map["odpsEndpoint"] = self.odpsEndpoint!
        }
        if self.odpsProject != nil {
            map["odpsProject"] = self.odpsProject!
        }
        if self.odpsRolearn != nil {
            map["odpsRolearn"] = self.odpsRolearn!
        }
        if self.odpsTable != nil {
            map["odpsTable"] = self.odpsTable!
        }
        if self.odpsTunnelEndpoint != nil {
            map["odpsTunnelEndpoint"] = self.odpsTunnelEndpoint!
        }
        if self.partitionColumn != nil {
            map["partitionColumn"] = self.partitionColumn!
        }
        if self.partitionTimeFormat != nil {
            map["partitionTimeFormat"] = self.partitionTimeFormat!
        }
        if self.timeFormatType != nil {
            map["timeFormatType"] = self.timeFormatType!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bufferInterval"] as? String {
            self.bufferInterval = value
        }
        if let value = dict["fields"] as? [String] {
            self.fields = value
        }
        if let value = dict["filterInvalid"] as? Bool {
            self.filterInvalid = value
        }
        if let value = dict["odpsAccessKeyId"] as? String {
            self.odpsAccessKeyId = value
        }
        if let value = dict["odpsAccessSecret"] as? String {
            self.odpsAccessSecret = value
        }
        if let value = dict["odpsEndpoint"] as? String {
            self.odpsEndpoint = value
        }
        if let value = dict["odpsProject"] as? String {
            self.odpsProject = value
        }
        if let value = dict["odpsRolearn"] as? String {
            self.odpsRolearn = value
        }
        if let value = dict["odpsTable"] as? String {
            self.odpsTable = value
        }
        if let value = dict["odpsTunnelEndpoint"] as? String {
            self.odpsTunnelEndpoint = value
        }
        if let value = dict["partitionColumn"] as? [String] {
            self.partitionColumn = value
        }
        if let value = dict["partitionTimeFormat"] as? String {
            self.partitionTimeFormat = value
        }
        if let value = dict["timeFormatType"] as? String {
            self.timeFormatType = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class OSSExport : Tea.TeaModel {
    public var configuration: OSSExportConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class OSSExportConfiguration : Tea.TeaModel {
    public class Sink : Tea.TeaModel {
        public var bucket: String?

        public var bufferInterval: Int64?

        public var bufferSize: Int64?

        public var compressionType: String?

        public var contentDetail: [String: Any]?

        public var contentType: String?

        public var delaySec: Int64?

        public var delaySeconds: Int64?

        public var endpoint: String?

        public var pathFormat: String?

        public var pathFormatType: String?

        public var prefix_: String?

        public var roleArn: String?

        public var suffix: String?

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
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.bufferInterval != nil {
                map["bufferInterval"] = self.bufferInterval!
            }
            if self.bufferSize != nil {
                map["bufferSize"] = self.bufferSize!
            }
            if self.compressionType != nil {
                map["compressionType"] = self.compressionType!
            }
            if self.contentDetail != nil {
                map["contentDetail"] = self.contentDetail!
            }
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.delaySec != nil {
                map["delaySec"] = self.delaySec!
            }
            if self.delaySeconds != nil {
                map["delaySeconds"] = self.delaySeconds!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.pathFormat != nil {
                map["pathFormat"] = self.pathFormat!
            }
            if self.pathFormatType != nil {
                map["pathFormatType"] = self.pathFormatType!
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.roleArn != nil {
                map["roleArn"] = self.roleArn!
            }
            if self.suffix != nil {
                map["suffix"] = self.suffix!
            }
            if self.timeZone != nil {
                map["timeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["bufferInterval"] as? Int64 {
                self.bufferInterval = value
            }
            if let value = dict["bufferSize"] as? Int64 {
                self.bufferSize = value
            }
            if let value = dict["compressionType"] as? String {
                self.compressionType = value
            }
            if let value = dict["contentDetail"] as? [String: Any] {
                self.contentDetail = value
            }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["delaySec"] as? Int64 {
                self.delaySec = value
            }
            if let value = dict["delaySeconds"] as? Int64 {
                self.delaySeconds = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["pathFormat"] as? String {
                self.pathFormat = value
            }
            if let value = dict["pathFormatType"] as? String {
                self.pathFormatType = value
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["roleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["suffix"] as? String {
                self.suffix = value
            }
            if let value = dict["timeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var fromTime: Int64?

    public var logstore: String?

    public var roleArn: String?

    public var sink: OSSExportConfiguration.Sink?

    public var toTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sink?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.sink != nil {
            map["sink"] = self.sink?.toMap()
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
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["sink"] as? [String: Any?] {
            var model = OSSExportConfiguration.Sink()
            model.fromMap(value)
            self.sink = model
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class OSSIngestion : Tea.TeaModel {
    public var configuration: OSSIngestionConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var schedule: Schedule?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSIngestionConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class OSSIngestionConfiguration : Tea.TeaModel {
    public var logstore: String?

    public var source: OSSIngestionConfigurationSource?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = OSSIngestionConfigurationSource()
            model.fromMap(value)
            self.source = model
        }
    }
}

public class OSSIngestionConfigurationSource : Tea.TeaModel {
    public var bucket: String?

    public var compressionCodec: String?

    public var encoding: String?

    public var endTime: Int64?

    public var endpoint: String?

    public var format: [String: Any]?

    public var interval: String?

    public var pattern: String?

    public var prefix_: String?

    public var restoreObjectEnabled: Bool?

    public var roleARN: String?

    public var startTime: Int64?

    public var tagPackId: Bool?

    public var timeField: String?

    public var timeFormat: String?

    public var timePattern: String?

    public var timeZone: String?

    public var useMetaIndex: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.compressionCodec != nil {
            map["compressionCodec"] = self.compressionCodec!
        }
        if self.encoding != nil {
            map["encoding"] = self.encoding!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.pattern != nil {
            map["pattern"] = self.pattern!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.restoreObjectEnabled != nil {
            map["restoreObjectEnabled"] = self.restoreObjectEnabled!
        }
        if self.roleARN != nil {
            map["roleARN"] = self.roleARN!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.tagPackId != nil {
            map["tagPackId"] = self.tagPackId!
        }
        if self.timeField != nil {
            map["timeField"] = self.timeField!
        }
        if self.timeFormat != nil {
            map["timeFormat"] = self.timeFormat!
        }
        if self.timePattern != nil {
            map["timePattern"] = self.timePattern!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.useMetaIndex != nil {
            map["useMetaIndex"] = self.useMetaIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["compressionCodec"] as? String {
            self.compressionCodec = value
        }
        if let value = dict["encoding"] as? String {
            self.encoding = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["format"] as? [String: Any] {
            self.format = value
        }
        if let value = dict["interval"] as? String {
            self.interval = value
        }
        if let value = dict["pattern"] as? String {
            self.pattern = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["restoreObjectEnabled"] as? Bool {
            self.restoreObjectEnabled = value
        }
        if let value = dict["roleARN"] as? String {
            self.roleARN = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["tagPackId"] as? Bool {
            self.tagPackId = value
        }
        if let value = dict["timeField"] as? String {
            self.timeField = value
        }
        if let value = dict["timeFormat"] as? String {
            self.timeFormat = value
        }
        if let value = dict["timePattern"] as? String {
            self.timePattern = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["useMetaIndex"] as? Bool {
            self.useMetaIndex = value
        }
    }
}

public class PolicyConfiguration : Tea.TeaModel {
    public var actionPolicyId: String?

    public var alertPolicyId: String?

    public var repeatInterval: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPolicyId != nil {
            map["actionPolicyId"] = self.actionPolicyId!
        }
        if self.alertPolicyId != nil {
            map["alertPolicyId"] = self.alertPolicyId!
        }
        if self.repeatInterval != nil {
            map["repeatInterval"] = self.repeatInterval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actionPolicyId"] as? String {
            self.actionPolicyId = value
        }
        if let value = dict["alertPolicyId"] as? String {
            self.alertPolicyId = value
        }
        if let value = dict["repeatInterval"] as? String {
            self.repeatInterval = value
        }
    }
}

public class ProcessorAssociate : Tea.TeaModel {
    public var processorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processorId != nil {
            map["processorId"] = self.processorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["processorId"] as? String {
            self.processorId = value
        }
    }
}

public class ProjectSummary : Tea.TeaModel {
    public var createTime: Int64?

    public var description_: String?

    public var projectName: String?

    public var region: String?

    public var resourceGroupId: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class S3Ingestion : Tea.TeaModel {
    public var configuration: S3IngestionConfigurationSource?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var schedule: Schedule?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = S3IngestionConfigurationSource()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class S3IngestionConfiguration : Tea.TeaModel {
    public var logstore: String?

    public var source: S3IngestionConfigurationSource?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = S3IngestionConfigurationSource()
            model.fromMap(value)
            self.source = model
        }
    }
}

public class S3IngestionConfigurationSource : Tea.TeaModel {
    public var awsAccessKey: String?

    public var awsAccessKeySecret: String?

    public var awsRegion: String?

    public var awsSQSQueueUrl: String?

    public var awsUseSQS: Bool?

    public var bucket: String?

    public var compressionCodec: String?

    public var encoding: String?

    public var endTime: Int64?

    public var format: [String: Any]?

    public var interval: String?

    public var pattern: String?

    public var prefix_: String?

    public var startTime: Int64?

    public var tagPackId: Bool?

    public var timeField: String?

    public var timeFormat: String?

    public var timePattern: String?

    public var timeZone: String?

    public var useAwsSQSOnly: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.awsAccessKey != nil {
            map["awsAccessKey"] = self.awsAccessKey!
        }
        if self.awsAccessKeySecret != nil {
            map["awsAccessKeySecret"] = self.awsAccessKeySecret!
        }
        if self.awsRegion != nil {
            map["awsRegion"] = self.awsRegion!
        }
        if self.awsSQSQueueUrl != nil {
            map["awsSQSQueueUrl"] = self.awsSQSQueueUrl!
        }
        if self.awsUseSQS != nil {
            map["awsUseSQS"] = self.awsUseSQS!
        }
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.compressionCodec != nil {
            map["compressionCodec"] = self.compressionCodec!
        }
        if self.encoding != nil {
            map["encoding"] = self.encoding!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.pattern != nil {
            map["pattern"] = self.pattern!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.tagPackId != nil {
            map["tagPackId"] = self.tagPackId!
        }
        if self.timeField != nil {
            map["timeField"] = self.timeField!
        }
        if self.timeFormat != nil {
            map["timeFormat"] = self.timeFormat!
        }
        if self.timePattern != nil {
            map["timePattern"] = self.timePattern!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.useAwsSQSOnly != nil {
            map["useAwsSQSOnly"] = self.useAwsSQSOnly!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["awsAccessKey"] as? String {
            self.awsAccessKey = value
        }
        if let value = dict["awsAccessKeySecret"] as? String {
            self.awsAccessKeySecret = value
        }
        if let value = dict["awsRegion"] as? String {
            self.awsRegion = value
        }
        if let value = dict["awsSQSQueueUrl"] as? String {
            self.awsSQSQueueUrl = value
        }
        if let value = dict["awsUseSQS"] as? Bool {
            self.awsUseSQS = value
        }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["compressionCodec"] as? String {
            self.compressionCodec = value
        }
        if let value = dict["encoding"] as? String {
            self.encoding = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["format"] as? [String: Any] {
            self.format = value
        }
        if let value = dict["interval"] as? String {
            self.interval = value
        }
        if let value = dict["pattern"] as? String {
            self.pattern = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["tagPackId"] as? Bool {
            self.tagPackId = value
        }
        if let value = dict["timeField"] as? String {
            self.timeField = value
        }
        if let value = dict["timeFormat"] as? String {
            self.timeFormat = value
        }
        if let value = dict["timePattern"] as? String {
            self.timePattern = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["useAwsSQSOnly"] as? Bool {
            self.useAwsSQSOnly = value
        }
    }
}

public class SavedSearch : Tea.TeaModel {
    public var displayName: String?

    public var logstore: String?

    public var savedsearchName: String?

    public var searchQuery: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.savedsearchName != nil {
            map["savedsearchName"] = self.savedsearchName!
        }
        if self.searchQuery != nil {
            map["searchQuery"] = self.searchQuery!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["savedsearchName"] as? String {
            self.savedsearchName = value
        }
        if let value = dict["searchQuery"] as? String {
            self.searchQuery = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class Schedule : Tea.TeaModel {
    public var cronExpression: String?

    public var delay: Int32?

    public var interval: String?

    public var runImmediately: Bool?

    public var timeZone: String?

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
        if self.cronExpression != nil {
            map["cronExpression"] = self.cronExpression!
        }
        if self.delay != nil {
            map["delay"] = self.delay!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.runImmediately != nil {
            map["runImmediately"] = self.runImmediately!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["delay"] as? Int32 {
            self.delay = value
        }
        if let value = dict["interval"] as? String {
            self.interval = value
        }
        if let value = dict["runImmediately"] as? Bool {
            self.runImmediately = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ScheduledSQL : Tea.TeaModel {
    public var configuration: ScheduledSQLConfiguration?

    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var lastModifiedTime: Int64?

    public var name: String?

    public var schedule: Schedule?

    public var scheduleId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.scheduleId != nil {
            map["scheduleId"] = self.scheduleId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ScheduledSQLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifiedTime"] as? Int64 {
            self.lastModifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["scheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ScheduledSQLConfiguration : Tea.TeaModel {
    public var dataFormat: String?

    public var destEndpoint: String?

    public var destLogstore: String?

    public var destProject: String?

    public var destRoleArn: String?

    public var fromTime: Int64?

    public var fromTimeExpr: String?

    public var maxRetries: Int64?

    public var maxRunTimeInSeconds: Int64?

    public var parameters: [String: Any]?

    public var resourcePool: String?

    public var roleArn: String?

    public var script: String?

    public var sourceLogstore: String?

    public var sqlType: String?

    public var toTime: Int64?

    public var toTimeExpr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["dataFormat"] = self.dataFormat!
        }
        if self.destEndpoint != nil {
            map["destEndpoint"] = self.destEndpoint!
        }
        if self.destLogstore != nil {
            map["destLogstore"] = self.destLogstore!
        }
        if self.destProject != nil {
            map["destProject"] = self.destProject!
        }
        if self.destRoleArn != nil {
            map["destRoleArn"] = self.destRoleArn!
        }
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.fromTimeExpr != nil {
            map["fromTimeExpr"] = self.fromTimeExpr!
        }
        if self.maxRetries != nil {
            map["maxRetries"] = self.maxRetries!
        }
        if self.maxRunTimeInSeconds != nil {
            map["maxRunTimeInSeconds"] = self.maxRunTimeInSeconds!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.resourcePool != nil {
            map["resourcePool"] = self.resourcePool!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.script != nil {
            map["script"] = self.script!
        }
        if self.sourceLogstore != nil {
            map["sourceLogstore"] = self.sourceLogstore!
        }
        if self.sqlType != nil {
            map["sqlType"] = self.sqlType!
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        if self.toTimeExpr != nil {
            map["toTimeExpr"] = self.toTimeExpr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["destEndpoint"] as? String {
            self.destEndpoint = value
        }
        if let value = dict["destLogstore"] as? String {
            self.destLogstore = value
        }
        if let value = dict["destProject"] as? String {
            self.destProject = value
        }
        if let value = dict["destRoleArn"] as? String {
            self.destRoleArn = value
        }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["fromTimeExpr"] as? String {
            self.fromTimeExpr = value
        }
        if let value = dict["maxRetries"] as? Int64 {
            self.maxRetries = value
        }
        if let value = dict["maxRunTimeInSeconds"] as? Int64 {
            self.maxRunTimeInSeconds = value
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["resourcePool"] as? String {
            self.resourcePool = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["script"] as? String {
            self.script = value
        }
        if let value = dict["sourceLogstore"] as? String {
            self.sourceLogstore = value
        }
        if let value = dict["sqlType"] as? String {
            self.sqlType = value
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
        if let value = dict["toTimeExpr"] as? String {
            self.toTimeExpr = value
        }
    }
}

public class SeverityConfiguration : Tea.TeaModel {
    public var evalCondition: ConditionConfiguration?

    public var severity: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evalCondition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evalCondition != nil {
            map["evalCondition"] = self.evalCondition?.toMap()
        }
        if self.severity != nil {
            map["severity"] = self.severity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["evalCondition"] as? [String: Any?] {
            var model = ConditionConfiguration()
            model.fromMap(value)
            self.evalCondition = model
        }
        if let value = dict["severity"] as? Int32 {
            self.severity = value
        }
    }
}

public class SinkAlerthubConfiguration : Tea.TeaModel {
    public var enabled: Bool?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class SinkCmsConfiguration : Tea.TeaModel {
    public var enabled: Bool?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class SinkEventStoreConfiguration : Tea.TeaModel {
    public var enabled: Bool?

    public var endpoint: String?

    public var eventStore: String?

    public var project: String?

    public var roleArn: String?

    public override init() {
        super.init()
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
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.eventStore != nil {
            map["eventStore"] = self.eventStore!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["eventStore"] as? String {
            self.eventStore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
    }
}

public class StoreViewStore : Tea.TeaModel {
    public var project: String?

    public var query: String?

    public var storeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.storeName != nil {
            map["storeName"] = self.storeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["storeName"] as? String {
            self.storeName = value
        }
    }
}

public class TemplateConfiguration : Tea.TeaModel {
    public var aonotations: [String: Any]?

    public var id: String?

    public var lang: String?

    public var tokens: [String: Any]?

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
        if self.aonotations != nil {
            map["aonotations"] = self.aonotations!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.tokens != nil {
            map["tokens"] = self.tokens!
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
        if let value = dict["aonotations"] as? [String: Any] {
            self.aonotations = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["tokens"] as? [String: Any] {
            self.tokens = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class Ticket : Tea.TeaModel {
    public var callerUid: Int64?

    public var createDate: String?

    public var expirationTime: Int64?

    public var expireDate: String?

    public var extra: String?

    public var name: String?

    public var number: Int32?

    public var sharingTo: String?

    public var ticket: String?

    public var ticketId: String?

    public var usedNumber: Int32?

    public var valid: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerUid != nil {
            map["callerUid"] = self.callerUid!
        }
        if self.createDate != nil {
            map["createDate"] = self.createDate!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        if self.expireDate != nil {
            map["expireDate"] = self.expireDate!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.number != nil {
            map["number"] = self.number!
        }
        if self.sharingTo != nil {
            map["sharingTo"] = self.sharingTo!
        }
        if self.ticket != nil {
            map["ticket"] = self.ticket!
        }
        if self.ticketId != nil {
            map["ticketId"] = self.ticketId!
        }
        if self.usedNumber != nil {
            map["usedNumber"] = self.usedNumber!
        }
        if self.valid != nil {
            map["valid"] = self.valid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["callerUid"] as? Int64 {
            self.callerUid = value
        }
        if let value = dict["createDate"] as? String {
            self.createDate = value
        }
        if let value = dict["expirationTime"] as? Int64 {
            self.expirationTime = value
        }
        if let value = dict["expireDate"] as? String {
            self.expireDate = value
        }
        if let value = dict["extra"] as? String {
            self.extra = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["number"] as? Int32 {
            self.number = value
        }
        if let value = dict["sharingTo"] as? String {
            self.sharingTo = value
        }
        if let value = dict["ticket"] as? String {
            self.ticket = value
        }
        if let value = dict["ticketId"] as? String {
            self.ticketId = value
        }
        if let value = dict["usedNumber"] as? Int32 {
            self.usedNumber = value
        }
        if let value = dict["valid"] as? Bool {
            self.valid = value
        }
    }
}

public class Chart : Tea.TeaModel {
    public var action: [String: Any]?

    public var display: [String: Any]?

    public var search: [String: Any]?

    public var title: String?

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
        if self.display != nil {
            map["display"] = self.display!
        }
        if self.search != nil {
            map["search"] = self.search!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? [String: Any] {
            self.action = value
        }
        if let value = dict["display"] as? [String: Any] {
            self.display = value
        }
        if let value = dict["search"] as? [String: Any] {
            self.search = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class Dashboard : Tea.TeaModel {
    public var attribute: [String: String]?

    public var charts: [Chart]?

    public var dashboardName: String?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attribute != nil {
            map["attribute"] = self.attribute!
        }
        if self.charts != nil {
            var tmp : [Any] = []
            for k in self.charts! {
                tmp.append(k.toMap())
            }
            map["charts"] = tmp
        }
        if self.dashboardName != nil {
            map["dashboardName"] = self.dashboardName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attribute"] as? [String: String] {
            self.attribute = value
        }
        if let value = dict["charts"] as? [Any?] {
            var tmp : [Chart] = []
            for v in value {
                if v != nil {
                    var model = Chart()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.charts = tmp
        }
        if let value = dict["dashboardName"] as? String {
            self.dashboardName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class ExternalStore : Tea.TeaModel {
    public var externalStoreName: String?

    public var parameter: [String: Any]?

    public var storeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalStoreName != nil {
            map["externalStoreName"] = self.externalStoreName!
        }
        if self.parameter != nil {
            map["parameter"] = self.parameter!
        }
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["externalStoreName"] as? String {
            self.externalStoreName = value
        }
        if let value = dict["parameter"] as? [String: Any] {
            self.parameter = value
        }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
    }
}

public class Index : Tea.TeaModel {
    public class Line : Tea.TeaModel {
        public var caseSensitive: Bool?

        public var chn: Bool?

        public var excludeKeys: [String]?

        public var includeKeys: [String]?

        public var token: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caseSensitive != nil {
                map["caseSensitive"] = self.caseSensitive!
            }
            if self.chn != nil {
                map["chn"] = self.chn!
            }
            if self.excludeKeys != nil {
                map["exclude_keys"] = self.excludeKeys!
            }
            if self.includeKeys != nil {
                map["include_keys"] = self.includeKeys!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["caseSensitive"] as? Bool {
                self.caseSensitive = value
            }
            if let value = dict["chn"] as? Bool {
                self.chn = value
            }
            if let value = dict["exclude_keys"] as? [String] {
                self.excludeKeys = value
            }
            if let value = dict["include_keys"] as? [String] {
                self.includeKeys = value
            }
            if let value = dict["token"] as? [String] {
                self.token = value
            }
        }
    }
    public var keys: [String: IndexKey]?

    public var line: Index.Line?

    public var logReduce: Bool?

    public var logReduceBlackList: [String]?

    public var logReduceWhiteList: [String]?

    public var maxTextLen: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.line?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.keys! {
                tmp[k] = v.toMap()
            }
            map["keys"] = tmp
        }
        if self.line != nil {
            map["line"] = self.line?.toMap()
        }
        if self.logReduce != nil {
            map["log_reduce"] = self.logReduce!
        }
        if self.logReduceBlackList != nil {
            map["log_reduce_black_list"] = self.logReduceBlackList!
        }
        if self.logReduceWhiteList != nil {
            map["log_reduce_white_list"] = self.logReduceWhiteList!
        }
        if self.maxTextLen != nil {
            map["max_text_len"] = self.maxTextLen!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keys"] as? [String: Any?] {
            var tmp : [String: IndexKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.keys = tmp
        }
        if let value = dict["line"] as? [String: Any?] {
            var model = Index.Line()
            model.fromMap(value)
            self.line = model
        }
        if let value = dict["log_reduce"] as? Bool {
            self.logReduce = value
        }
        if let value = dict["log_reduce_black_list"] as? [String] {
            self.logReduceBlackList = value
        }
        if let value = dict["log_reduce_white_list"] as? [String] {
            self.logReduceWhiteList = value
        }
        if let value = dict["max_text_len"] as? Int32 {
            self.maxTextLen = value
        }
    }
}

public class Logging : Tea.TeaModel {
    public class LoggingDetails : Tea.TeaModel {
        public var logstore: String?

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
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var loggingDetails: [Logging.LoggingDetails]?

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
        if self.loggingDetails != nil {
            var tmp : [Any] = []
            for k in self.loggingDetails! {
                tmp.append(k.toMap())
            }
            map["loggingDetails"] = tmp
        }
        if self.loggingProject != nil {
            map["loggingProject"] = self.loggingProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["loggingDetails"] as? [Any?] {
            var tmp : [Logging.LoggingDetails] = []
            for v in value {
                if v != nil {
                    var model = Logging.LoggingDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.loggingDetails = tmp
        }
        if let value = dict["loggingProject"] as? String {
            self.loggingProject = value
        }
    }
}

public class Logstore : Tea.TeaModel {
    public var appendMeta: Bool?

    public var autoSplit: Bool?

    public var createTime: Int32?

    public var enableTracking: Bool?

    public var encryptConf: EncryptConf?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var lastModifyTime: Int32?

    public var logstoreName: String?

    public var maxSplitShard: Int32?

    public var mode: String?

    public var processorId: String?

    public var productType: String?

    public var shardCount: Int32?

    public var telemetryType: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.encryptConf?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appendMeta != nil {
            map["appendMeta"] = self.appendMeta!
        }
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.enableTracking != nil {
            map["enable_tracking"] = self.enableTracking!
        }
        if self.encryptConf != nil {
            map["encrypt_conf"] = self.encryptConf?.toMap()
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.processorId != nil {
            map["processorId"] = self.processorId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        if self.telemetryType != nil {
            map["telemetryType"] = self.telemetryType!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appendMeta"] as? Bool {
            self.appendMeta = value
        }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["createTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["enable_tracking"] as? Bool {
            self.enableTracking = value
        }
        if let value = dict["encrypt_conf"] as? [String: Any?] {
            var model = EncryptConf()
            model.fromMap(value)
            self.encryptConf = model
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["lastModifyTime"] as? Int32 {
            self.lastModifyTime = value
        }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["processorId"] as? String {
            self.processorId = value
        }
        if let value = dict["productType"] as? String {
            self.productType = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["telemetryType"] as? String {
            self.telemetryType = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class Machine : Tea.TeaModel {
    public var hostId: String?

    public var ip: String?

    public var lastHeartbeatTime: Int64?

    public var machineUniqueid: String?

    public var userdefinedId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["host-id"] = self.hostId!
        }
        if self.ip != nil {
            map["ip"] = self.ip!
        }
        if self.lastHeartbeatTime != nil {
            map["lastHeartbeatTime"] = self.lastHeartbeatTime!
        }
        if self.machineUniqueid != nil {
            map["machine-uniqueid"] = self.machineUniqueid!
        }
        if self.userdefinedId != nil {
            map["userdefined-id"] = self.userdefinedId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["host-id"] as? String {
            self.hostId = value
        }
        if let value = dict["ip"] as? String {
            self.ip = value
        }
        if let value = dict["lastHeartbeatTime"] as? Int64 {
            self.lastHeartbeatTime = value
        }
        if let value = dict["machine-uniqueid"] as? String {
            self.machineUniqueid = value
        }
        if let value = dict["userdefined-id"] as? String {
            self.userdefinedId = value
        }
    }
}

public class MachineGroup : Tea.TeaModel {
    public class GroupAttribute : Tea.TeaModel {
        public var externalName: String?

        public var groupTopic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalName != nil {
                map["externalName"] = self.externalName!
            }
            if self.groupTopic != nil {
                map["groupTopic"] = self.groupTopic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["externalName"] as? String {
                self.externalName = value
            }
            if let value = dict["groupTopic"] as? String {
                self.groupTopic = value
            }
        }
    }
    public var groupAttribute: MachineGroup.GroupAttribute?

    public var groupName: String?

    public var groupType: String?

    public var machineIdentifyType: String?

    public var machineList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupAttribute != nil {
            map["groupAttribute"] = self.groupAttribute?.toMap()
        }
        if self.groupName != nil {
            map["groupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["groupType"] = self.groupType!
        }
        if self.machineIdentifyType != nil {
            map["machineIdentifyType"] = self.machineIdentifyType!
        }
        if self.machineList != nil {
            map["machineList"] = self.machineList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupAttribute"] as? [String: Any?] {
            var model = MachineGroup.GroupAttribute()
            model.fromMap(value)
            self.groupAttribute = model
        }
        if let value = dict["groupName"] as? String {
            self.groupName = value
        }
        if let value = dict["groupType"] as? String {
            self.groupType = value
        }
        if let value = dict["machineIdentifyType"] as? String {
            self.machineIdentifyType = value
        }
        if let value = dict["machineList"] as? [String] {
            self.machineList = value
        }
    }
}

public class Project : Tea.TeaModel {
    public var createTime: String?

    public var dataRedundancyType: String?

    public var description_: String?

    public var lastModifyTime: String?

    public var location: String?

    public var owner: String?

    public var projectName: String?

    public var quota: [String: Any]?

    public var recycleBinEnabled: Bool?

    public var region: String?

    public var resourceGroupId: String?

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
            map["createTime"] = self.createTime!
        }
        if self.dataRedundancyType != nil {
            map["dataRedundancyType"] = self.dataRedundancyType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.quota != nil {
            map["quota"] = self.quota!
        }
        if self.recycleBinEnabled != nil {
            map["recycleBinEnabled"] = self.recycleBinEnabled!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["dataRedundancyType"] as? String {
            self.dataRedundancyType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["lastModifyTime"] as? String {
            self.lastModifyTime = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["quota"] as? [String: Any] {
            self.quota = value
        }
        if let value = dict["recycleBinEnabled"] as? Bool {
            self.recycleBinEnabled = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ServiceStatus : Tea.TeaModel {
    public var enabled: Bool?

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
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class Shard : Tea.TeaModel {
    public var createTime: Int32?

    public var exclusiveEndKey: String?

    public var inclusiveBeginKey: String?

    public var shardID: Int32?

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
            map["createTime"] = self.createTime!
        }
        if self.exclusiveEndKey != nil {
            map["exclusiveEndKey"] = self.exclusiveEndKey!
        }
        if self.inclusiveBeginKey != nil {
            map["inclusiveBeginKey"] = self.inclusiveBeginKey!
        }
        if self.shardID != nil {
            map["shardID"] = self.shardID!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["exclusiveEndKey"] as? String {
            self.exclusiveEndKey = value
        }
        if let value = dict["inclusiveBeginKey"] as? String {
            self.inclusiveBeginKey = value
        }
        if let value = dict["shardID"] as? Int32 {
            self.shardID = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class MLDataParamAnnotationsValue : Tea.TeaModel {
    public var annotatedBy: String?

    public var updateTime: Int64?

    public var results: [[String: String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotatedBy != nil {
            map["annotatedBy"] = self.annotatedBy!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.results != nil {
            map["results"] = self.results!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotatedBy"] as? String {
            self.annotatedBy = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
        if let value = dict["results"] as? [[String: String]] {
            self.results = value
        }
    }
}

public class MLDataParamPredictionsValue : Tea.TeaModel {
    public var annotatedBy: String?

    public var updateTime: Int64?

    public var results: [[String: String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotatedBy != nil {
            map["annotatedBy"] = self.annotatedBy!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.results != nil {
            map["results"] = self.results!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotatedBy"] as? String {
            self.annotatedBy = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
        if let value = dict["results"] as? [[String: String]] {
            self.results = value
        }
    }
}

public class ApplyConfigToMachineGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CallAiToolsRequest : Tea.TeaModel {
    public var params: [String: String]?

    public var regionId: String?

    public var toolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.toolName != nil {
            map["toolName"] = self.toolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? [String: String] {
            self.params = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["toolName"] as? String {
            self.toolName = value
        }
    }
}

public class CallAiToolsResponse : Tea.TeaModel {
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
    }

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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class ConsumerGroupHeartBeatRequest : Tea.TeaModel {
    public var body: [Int32]?

    public var consumer: String?

    public override init() {
        super.init()
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
        if self.consumer != nil {
            map["consumer"] = self.consumer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [Int32] {
            self.body = value
        }
        if let value = dict["consumer"] as? String {
            self.consumer = value
        }
    }
}

public class ConsumerGroupHeartBeatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Int32]?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? [Int32] {
            self.body = value
        }
    }
}

public class ConsumerGroupUpdateCheckPointRequest : Tea.TeaModel {
    public var checkpoint: String?

    public var shard: Int32?

    public var consumer: String?

    public var forceSuccess: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkpoint != nil {
            map["checkpoint"] = self.checkpoint!
        }
        if self.shard != nil {
            map["shard"] = self.shard!
        }
        if self.consumer != nil {
            map["consumer"] = self.consumer!
        }
        if self.forceSuccess != nil {
            map["forceSuccess"] = self.forceSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkpoint"] as? String {
            self.checkpoint = value
        }
        if let value = dict["shard"] as? Int32 {
            self.shard = value
        }
        if let value = dict["consumer"] as? String {
            self.consumer = value
        }
        if let value = dict["forceSuccess"] as? Bool {
            self.forceSuccess = value
        }
    }
}

public class ConsumerGroupUpdateCheckPointResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateAgentInstanceConfigRequest : Tea.TeaModel {
    public var attributes: [String: String]?

    public var config: String?

    public var configType: String?

    public var grayConfigs: [AgentInstanceConfigGrayConfigs]?

    public override init() {
        super.init()
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
            map["attributes"] = self.attributes!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.grayConfigs != nil {
            var tmp : [Any] = []
            for k in self.grayConfigs! {
                tmp.append(k.toMap())
            }
            map["grayConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["grayConfigs"] as? [Any?] {
            var tmp : [AgentInstanceConfigGrayConfigs] = []
            for v in value {
                if v != nil {
                    var model = AgentInstanceConfigGrayConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grayConfigs = tmp
        }
    }
}

public class CreateAgentInstanceConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateAlertRequest : Tea.TeaModel {
    public var configuration: AlertConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = AlertConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class CreateAlertResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateAnnotationDataSetRequest : Tea.TeaModel {
    public var body: MLDataSetParam?

    public var datasetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.datasetId != nil {
            map["datasetId"] = self.datasetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLDataSetParam()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["datasetId"] as? String {
            self.datasetId = value
        }
    }
}

public class CreateAnnotationDataSetResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateAnnotationLabelRequest : Tea.TeaModel {
    public var body: MLLabelParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLLabelParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAnnotationLabelResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateConfigRequest : Tea.TeaModel {
    public var body: LogtailConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogtailConfig()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateConsumerGroupRequest : Tea.TeaModel {
    public var consumerGroup: String?

    public var order: Bool?

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
        if self.consumerGroup != nil {
            map["consumerGroup"] = self.consumerGroup!
        }
        if self.order != nil {
            map["order"] = self.order!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumerGroup"] as? String {
            self.consumerGroup = value
        }
        if let value = dict["order"] as? Bool {
            self.order = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class CreateConsumerGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateDashboardRequest : Tea.TeaModel {
    public var body: Dashboard?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Dashboard()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDashboardResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateDownloadJobRequest : Tea.TeaModel {
    public class Configuration : Tea.TeaModel {
        public class Sink : Tea.TeaModel {
            public var bucket: String?

            public var compressionType: String?

            public var contentType: String?

            public var prefix_: String?

            public var roleArn: String?

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
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.compressionType != nil {
                    map["compressionType"] = self.compressionType!
                }
                if self.contentType != nil {
                    map["contentType"] = self.contentType!
                }
                if self.prefix_ != nil {
                    map["prefix"] = self.prefix_!
                }
                if self.roleArn != nil {
                    map["roleArn"] = self.roleArn!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["compressionType"] as? String {
                    self.compressionType = value
                }
                if let value = dict["contentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["prefix"] as? String {
                    self.prefix_ = value
                }
                if let value = dict["roleArn"] as? String {
                    self.roleArn = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var allowInComplete: Bool?

        public var fromTime: Int64?

        public var logstore: String?

        public var powerSql: Bool?

        public var query: String?

        public var sink: CreateDownloadJobRequest.Configuration.Sink?

        public var toTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sink?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowInComplete != nil {
                map["allowInComplete"] = self.allowInComplete!
            }
            if self.fromTime != nil {
                map["fromTime"] = self.fromTime!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.powerSql != nil {
                map["powerSql"] = self.powerSql!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.sink != nil {
                map["sink"] = self.sink?.toMap()
            }
            if self.toTime != nil {
                map["toTime"] = self.toTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["allowInComplete"] as? Bool {
                self.allowInComplete = value
            }
            if let value = dict["fromTime"] as? Int64 {
                self.fromTime = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["powerSql"] as? Bool {
                self.powerSql = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["sink"] as? [String: Any?] {
                var model = CreateDownloadJobRequest.Configuration.Sink()
                model.fromMap(value)
                self.sink = model
            }
            if let value = dict["toTime"] as? Int64 {
                self.toTime = value
            }
        }
    }
    public var configuration: CreateDownloadJobRequest.Configuration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = CreateDownloadJobRequest.Configuration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateDownloadJobResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateETLRequest : Tea.TeaModel {
    public var configuration: ETLConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ETLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateETLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateIndexRequest : Tea.TeaModel {
    public var body: Index?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Index()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIndexResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateLogStoreRequest : Tea.TeaModel {
    public var appendMeta: Bool?

    public var autoSplit: Bool?

    public var enableTracking: Bool?

    public var encryptConf: EncryptConf?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var logstoreName: String?

    public var maxSplitShard: Int32?

    public var mode: String?

    public var processorId: String?

    public var shardCount: Int32?

    public var telemetryType: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.encryptConf?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appendMeta != nil {
            map["appendMeta"] = self.appendMeta!
        }
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.enableTracking != nil {
            map["enable_tracking"] = self.enableTracking!
        }
        if self.encryptConf != nil {
            map["encrypt_conf"] = self.encryptConf?.toMap()
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.processorId != nil {
            map["processorId"] = self.processorId!
        }
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        if self.telemetryType != nil {
            map["telemetryType"] = self.telemetryType!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appendMeta"] as? Bool {
            self.appendMeta = value
        }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["enable_tracking"] as? Bool {
            self.enableTracking = value
        }
        if let value = dict["encrypt_conf"] as? [String: Any?] {
            var model = EncryptConf()
            model.fromMap(value)
            self.encryptConf = model
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["processorId"] as? String {
            self.processorId = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["telemetryType"] as? String {
            self.telemetryType = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class CreateLogStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateLoggingRequest : Tea.TeaModel {
    public class LoggingDetails : Tea.TeaModel {
        public var logstore: String?

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
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var loggingDetails: [CreateLoggingRequest.LoggingDetails]?

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
        if self.loggingDetails != nil {
            var tmp : [Any] = []
            for k in self.loggingDetails! {
                tmp.append(k.toMap())
            }
            map["loggingDetails"] = tmp
        }
        if self.loggingProject != nil {
            map["loggingProject"] = self.loggingProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["loggingDetails"] as? [Any?] {
            var tmp : [CreateLoggingRequest.LoggingDetails] = []
            for v in value {
                if v != nil {
                    var model = CreateLoggingRequest.LoggingDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.loggingDetails = tmp
        }
        if let value = dict["loggingProject"] as? String {
            self.loggingProject = value
        }
    }
}

public class CreateLoggingResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateLogtailPipelineConfigRequest : Tea.TeaModel {
    public var aggregators: [[String: Any]]?

    public var configName: String?

    public var flushers: [[String: Any]]?

    public var global: [String: Any]?

    public var inputs: [[String: Any]]?

    public var logSample: String?

    public var processors: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregators != nil {
            map["aggregators"] = self.aggregators!
        }
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.flushers != nil {
            map["flushers"] = self.flushers!
        }
        if self.global != nil {
            map["global"] = self.global!
        }
        if self.inputs != nil {
            map["inputs"] = self.inputs!
        }
        if self.logSample != nil {
            map["logSample"] = self.logSample!
        }
        if self.processors != nil {
            map["processors"] = self.processors!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aggregators"] as? [[String: Any]] {
            self.aggregators = value
        }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["flushers"] as? [[String: Any]] {
            self.flushers = value
        }
        if let value = dict["global"] as? [String: Any] {
            self.global = value
        }
        if let value = dict["inputs"] as? [[String: Any]] {
            self.inputs = value
        }
        if let value = dict["logSample"] as? String {
            self.logSample = value
        }
        if let value = dict["processors"] as? [[String: Any]] {
            self.processors = value
        }
    }
}

public class CreateLogtailPipelineConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateMachineGroupRequest : Tea.TeaModel {
    public class GroupAttribute : Tea.TeaModel {
        public var externalName: String?

        public var groupTopic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalName != nil {
                map["externalName"] = self.externalName!
            }
            if self.groupTopic != nil {
                map["groupTopic"] = self.groupTopic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["externalName"] as? String {
                self.externalName = value
            }
            if let value = dict["groupTopic"] as? String {
                self.groupTopic = value
            }
        }
    }
    public var groupAttribute: CreateMachineGroupRequest.GroupAttribute?

    public var groupName: String?

    public var groupType: String?

    public var machineIdentifyType: String?

    public var machineList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupAttribute != nil {
            map["groupAttribute"] = self.groupAttribute?.toMap()
        }
        if self.groupName != nil {
            map["groupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["groupType"] = self.groupType!
        }
        if self.machineIdentifyType != nil {
            map["machineIdentifyType"] = self.machineIdentifyType!
        }
        if self.machineList != nil {
            map["machineList"] = self.machineList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupAttribute"] as? [String: Any?] {
            var model = CreateMachineGroupRequest.GroupAttribute()
            model.fromMap(value)
            self.groupAttribute = model
        }
        if let value = dict["groupName"] as? String {
            self.groupName = value
        }
        if let value = dict["groupType"] as? String {
            self.groupType = value
        }
        if let value = dict["machineIdentifyType"] as? String {
            self.machineIdentifyType = value
        }
        if let value = dict["machineList"] as? [String] {
            self.machineList = value
        }
    }
}

public class CreateMachineGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateMaxComputeExportRequest : Tea.TeaModel {
    public var configuration: MaxComputeExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = MaxComputeExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateMaxComputeExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateMetricStoreRequest : Tea.TeaModel {
    public var autoSplit: Bool?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var maxSplitShard: Int32?

    public var metricType: String?

    public var mode: String?

    public var name: String?

    public var shardCount: Int32?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.metricType != nil {
            map["metricType"] = self.metricType!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["metricType"] as? String {
            self.metricType = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class CreateMetricStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateOSSExportRequest : Tea.TeaModel {
    public var configuration: OSSExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateOSSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateOSSHDFSExportRequest : Tea.TeaModel {
    public var configuration: OSSExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateOSSHDFSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateOSSIngestionRequest : Tea.TeaModel {
    public var configuration: OSSIngestionConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSIngestionConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class CreateOSSIngestionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var description_: String?

    public var projectName: String?

    public var recycleBinEnabled: Bool?

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
        if self.dataRedundancyType != nil {
            map["dataRedundancyType"] = self.dataRedundancyType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.recycleBinEnabled != nil {
            map["recycleBinEnabled"] = self.recycleBinEnabled!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataRedundancyType"] as? String {
            self.dataRedundancyType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["recycleBinEnabled"] as? Bool {
            self.recycleBinEnabled = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateSavedSearchRequest : Tea.TeaModel {
    public var displayName: String?

    public var logstore: String?

    public var savedsearchName: String?

    public var searchQuery: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.savedsearchName != nil {
            map["savedsearchName"] = self.savedsearchName!
        }
        if self.searchQuery != nil {
            map["searchQuery"] = self.searchQuery!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["savedsearchName"] as? String {
            self.savedsearchName = value
        }
        if let value = dict["searchQuery"] as? String {
            self.searchQuery = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class CreateSavedSearchResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateScheduledSQLRequest : Tea.TeaModel {
    public var configuration: ScheduledSQLConfiguration?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ScheduledSQLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class CreateScheduledSQLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateSqlInstanceRequest : Tea.TeaModel {
    public var cu: Int32?

    public var useAsDefault: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cu != nil {
            map["cu"] = self.cu!
        }
        if self.useAsDefault != nil {
            map["useAsDefault"] = self.useAsDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cu"] as? Int32 {
            self.cu = value
        }
        if let value = dict["useAsDefault"] as? Bool {
            self.useAsDefault = value
        }
    }
}

public class CreateSqlInstanceResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateStoreViewRequest : Tea.TeaModel {
    public var name: String?

    public var storeType: String?

    public var stores: [StoreViewStore]?

    public override init() {
        super.init()
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
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        if self.stores != nil {
            var tmp : [Any] = []
            for k in self.stores! {
                tmp.append(k.toMap())
            }
            map["stores"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
        if let value = dict["stores"] as? [Any?] {
            var tmp : [StoreViewStore] = []
            for v in value {
                if v != nil {
                    var model = StoreViewStore()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stores = tmp
        }
    }
}

public class CreateStoreViewResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class CreateTicketRequest : Tea.TeaModel {
    public var accessTokenExpirationTime: Int64?

    public var expirationTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenExpirationTime != nil {
            map["accessTokenExpirationTime"] = self.accessTokenExpirationTime!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessTokenExpirationTime"] as? Int64 {
            self.accessTokenExpirationTime = value
        }
        if let value = dict["expirationTime"] as? Int64 {
            self.expirationTime = value
        }
    }
}

public class CreateTicketResponseBody : Tea.TeaModel {
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
        if self.ticket != nil {
            map["ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ticket"] as? String {
            self.ticket = value
        }
    }
}

public class CreateTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentInstanceConfigRequest : Tea.TeaModel {
    public var attributes: [String: String]?

    public override init() {
        super.init()
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
            map["attributes"] = self.attributes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
    }
}

public class DeleteAgentInstanceConfigShrinkRequest : Tea.TeaModel {
    public var attributesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributesShrink != nil {
            map["attributes"] = self.attributesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? String {
            self.attributesShrink = value
        }
    }
}

public class DeleteAgentInstanceConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteAlertResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteAnnotationDataResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteAnnotationDataSetResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteAnnotationLabelResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteCollectionPolicyRequest : Tea.TeaModel {
    public var dataCode: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataCode != nil {
            map["dataCode"] = self.dataCode!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataCode"] as? String {
            self.dataCode = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
    }
}

public class DeleteCollectionPolicyResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteConsumerGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteDashboardResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteDownloadJobResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteETLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteIndexResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteIngestProcessorResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteLogStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteLoggingResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteLogtailPipelineConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteMachineGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteMaxComputeExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteMetricStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteOSSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteOSSHDFSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteOSSIngestionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var forceDelete: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceDelete != nil {
            map["forceDelete"] = self.forceDelete!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["forceDelete"] as? Bool {
            self.forceDelete = value
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteProjectPolicyResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteSavedSearchResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteScheduledSQLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DeleteStoreViewResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var language: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["language"] as? String {
            self.language = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var internetEndpoint: String?

        public var intranetEndpoint: String?

        public var localName: String?

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
            if self.internetEndpoint != nil {
                map["internetEndpoint"] = self.internetEndpoint!
            }
            if self.intranetEndpoint != nil {
                map["intranetEndpoint"] = self.intranetEndpoint!
            }
            if self.localName != nil {
                map["localName"] = self.localName!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["internetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["intranetEndpoint"] as? String {
                self.intranetEndpoint = value
            }
            if let value = dict["localName"] as? String {
                self.localName = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public override init() {
        super.init()
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
            map["regions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

public class DisableAlertResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class DisableScheduledSQLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class EnableAlertResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class EnableScheduledSQLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class GetAgentInstanceConfigRequest : Tea.TeaModel {
    public var attributes: [String: String]?

    public override init() {
        super.init()
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
            map["attributes"] = self.attributes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
    }
}

public class GetAgentInstanceConfigShrinkRequest : Tea.TeaModel {
    public var attributesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributesShrink != nil {
            map["attributes"] = self.attributesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? String {
            self.attributesShrink = value
        }
    }
}

public class GetAgentInstanceConfigResponseBody : Tea.TeaModel {
    public var attributes: [String: String]?

    public var config: String?

    public var configType: String?

    public var createTime: Int64?

    public var grayConfigs: [AgentInstanceConfigGrayConfigs]?

    public var lastModifyTime: Int64?

    public override init() {
        super.init()
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
            map["attributes"] = self.attributes!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.grayConfigs != nil {
            var tmp : [Any] = []
            for k in self.grayConfigs! {
                tmp.append(k.toMap())
            }
            map["grayConfigs"] = tmp
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["grayConfigs"] as? [Any?] {
            var tmp : [AgentInstanceConfigGrayConfigs] = []
            for v in value {
                if v != nil {
                    var model = AgentInstanceConfigGrayConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grayConfigs = tmp
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
    }
}

public class GetAgentInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAgentInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Alert?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Alert()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAnnotationDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MLDataParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLDataParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAnnotationDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MLDataSetParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLDataSetParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAnnotationLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MLLabelParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLLabelParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppliedConfigsResponseBody : Tea.TeaModel {
    public var configs: [String]?

    public var count: Int32?

    public override init() {
        super.init()
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
            map["configs"] = self.configs!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [String] {
            self.configs = value
        }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
    }
}

public class GetAppliedConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppliedConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAppliedConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppliedMachineGroupsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var machinegroups: [String]?

    public override init() {
        super.init()
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
        if self.machinegroups != nil {
            map["machinegroups"] = self.machinegroups!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["machinegroups"] as? [String] {
            self.machinegroups = value
        }
    }
}

public class GetAppliedMachineGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppliedMachineGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAppliedMachineGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCheckPointRequest : Tea.TeaModel {
    public var shard: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shard != nil {
            map["shard"] = self.shard!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["shard"] as? Int32 {
            self.shard = value
        }
    }
}

public class GetCheckPointResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var shard: Int32?

        public var checkpoint: String?

        public var updateTime: Int64?

        public var consumer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shard != nil {
                map["shard"] = self.shard!
            }
            if self.checkpoint != nil {
                map["checkpoint"] = self.checkpoint!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.consumer != nil {
                map["consumer"] = self.consumer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["shard"] as? Int32 {
                self.shard = value
            }
            if let value = dict["checkpoint"] as? String {
                self.checkpoint = value
            }
            if let value = dict["updateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["consumer"] as? String {
                self.consumer = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [GetCheckPointResponse.Body]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [GetCheckPointResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = GetCheckPointResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class GetCollectionPolicyRequest : Tea.TeaModel {
    public var dataCode: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataCode != nil {
            map["dataCode"] = self.dataCode!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataCode"] as? String {
            self.dataCode = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
    }
}

public class GetCollectionPolicyResponseBody : Tea.TeaModel {
    public class CollectionPolicy : Tea.TeaModel {
        public class CentralizeConfig : Tea.TeaModel {
            public var destLogstore: String?

            public var destProject: String?

            public var destRegion: String?

            public var destTTL: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destLogstore != nil {
                    map["destLogstore"] = self.destLogstore!
                }
                if self.destProject != nil {
                    map["destProject"] = self.destProject!
                }
                if self.destRegion != nil {
                    map["destRegion"] = self.destRegion!
                }
                if self.destTTL != nil {
                    map["destTTL"] = self.destTTL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["destLogstore"] as? String {
                    self.destLogstore = value
                }
                if let value = dict["destProject"] as? String {
                    self.destProject = value
                }
                if let value = dict["destRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["destTTL"] as? Int32 {
                    self.destTTL = value
                }
            }
        }
        public class DataConfig : Tea.TeaModel {
            public var dataProject: String?

            public var dataRegion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataProject != nil {
                    map["dataProject"] = self.dataProject!
                }
                if self.dataRegion != nil {
                    map["dataRegion"] = self.dataRegion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dataProject"] as? String {
                    self.dataProject = value
                }
                if let value = dict["dataRegion"] as? String {
                    self.dataRegion = value
                }
            }
        }
        public class PolicyConfig : Tea.TeaModel {
            public var instanceIds: [String]?

            public var regions: [String]?

            public var resourceMode: String?

            public var resourceTags: [String: Any]?

            public override init() {
                super.init()
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
                if self.regions != nil {
                    map["regions"] = self.regions!
                }
                if self.resourceMode != nil {
                    map["resourceMode"] = self.resourceMode!
                }
                if self.resourceTags != nil {
                    map["resourceTags"] = self.resourceTags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instanceIds"] as? [String] {
                    self.instanceIds = value
                }
                if let value = dict["regions"] as? [String] {
                    self.regions = value
                }
                if let value = dict["resourceMode"] as? String {
                    self.resourceMode = value
                }
                if let value = dict["resourceTags"] as? [String: Any] {
                    self.resourceTags = value
                }
            }
        }
        public class ResourceDirectory : Tea.TeaModel {
            public var accountGroupType: String?

            public var members: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountGroupType != nil {
                    map["accountGroupType"] = self.accountGroupType!
                }
                if self.members != nil {
                    map["members"] = self.members!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountGroupType"] as? String {
                    self.accountGroupType = value
                }
                if let value = dict["members"] as? [String] {
                    self.members = value
                }
            }
        }
        public var centralizeConfig: GetCollectionPolicyResponseBody.CollectionPolicy.CentralizeConfig?

        public var centralizeEnabled: Bool?

        public var dataCode: String?

        public var dataConfig: GetCollectionPolicyResponseBody.CollectionPolicy.DataConfig?

        public var enabled: Bool?

        public var internalPolicy: Bool?

        public var policyConfig: GetCollectionPolicyResponseBody.CollectionPolicy.PolicyConfig?

        public var policyName: String?

        public var policyUid: String?

        public var productCode: String?

        public var resourceDirectory: GetCollectionPolicyResponseBody.CollectionPolicy.ResourceDirectory?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.centralizeConfig?.validate()
            try self.dataConfig?.validate()
            try self.policyConfig?.validate()
            try self.resourceDirectory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.centralizeConfig != nil {
                map["centralizeConfig"] = self.centralizeConfig?.toMap()
            }
            if self.centralizeEnabled != nil {
                map["centralizeEnabled"] = self.centralizeEnabled!
            }
            if self.dataCode != nil {
                map["dataCode"] = self.dataCode!
            }
            if self.dataConfig != nil {
                map["dataConfig"] = self.dataConfig?.toMap()
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.internalPolicy != nil {
                map["internalPolicy"] = self.internalPolicy!
            }
            if self.policyConfig != nil {
                map["policyConfig"] = self.policyConfig?.toMap()
            }
            if self.policyName != nil {
                map["policyName"] = self.policyName!
            }
            if self.policyUid != nil {
                map["policyUid"] = self.policyUid!
            }
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            if self.resourceDirectory != nil {
                map["resourceDirectory"] = self.resourceDirectory?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["centralizeConfig"] as? [String: Any?] {
                var model = GetCollectionPolicyResponseBody.CollectionPolicy.CentralizeConfig()
                model.fromMap(value)
                self.centralizeConfig = model
            }
            if let value = dict["centralizeEnabled"] as? Bool {
                self.centralizeEnabled = value
            }
            if let value = dict["dataCode"] as? String {
                self.dataCode = value
            }
            if let value = dict["dataConfig"] as? [String: Any?] {
                var model = GetCollectionPolicyResponseBody.CollectionPolicy.DataConfig()
                model.fromMap(value)
                self.dataConfig = model
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["internalPolicy"] as? Bool {
                self.internalPolicy = value
            }
            if let value = dict["policyConfig"] as? [String: Any?] {
                var model = GetCollectionPolicyResponseBody.CollectionPolicy.PolicyConfig()
                model.fromMap(value)
                self.policyConfig = model
            }
            if let value = dict["policyName"] as? String {
                self.policyName = value
            }
            if let value = dict["policyUid"] as? String {
                self.policyUid = value
            }
            if let value = dict["productCode"] as? String {
                self.productCode = value
            }
            if let value = dict["resourceDirectory"] as? [String: Any?] {
                var model = GetCollectionPolicyResponseBody.CollectionPolicy.ResourceDirectory()
                model.fromMap(value)
                self.resourceDirectory = model
            }
        }
    }
    public var collectionPolicy: GetCollectionPolicyResponseBody.CollectionPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.collectionPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collectionPolicy != nil {
            map["collectionPolicy"] = self.collectionPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collectionPolicy"] as? [String: Any?] {
            var model = GetCollectionPolicyResponseBody.CollectionPolicy()
            model.fromMap(value)
            self.collectionPolicy = model
        }
    }
}

public class GetCollectionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCollectionPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCollectionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogtailConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogtailConfig()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetContextLogsRequest : Tea.TeaModel {
    public var backLines: Int64?

    public var forwardLines: Int64?

    public var packId: String?

    public var packMeta: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backLines != nil {
            map["back_lines"] = self.backLines!
        }
        if self.forwardLines != nil {
            map["forward_lines"] = self.forwardLines!
        }
        if self.packId != nil {
            map["pack_id"] = self.packId!
        }
        if self.packMeta != nil {
            map["pack_meta"] = self.packMeta!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["back_lines"] as? Int64 {
            self.backLines = value
        }
        if let value = dict["forward_lines"] as? Int64 {
            self.forwardLines = value
        }
        if let value = dict["pack_id"] as? String {
            self.packId = value
        }
        if let value = dict["pack_meta"] as? String {
            self.packMeta = value
        }
    }
}

public class GetContextLogsResponseBody : Tea.TeaModel {
    public var backLines: Int64?

    public var forwardLines: Int64?

    public var logs: [[String: Any]]?

    public var progress: String?

    public var totalLines: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backLines != nil {
            map["back_lines"] = self.backLines!
        }
        if self.forwardLines != nil {
            map["forward_lines"] = self.forwardLines!
        }
        if self.logs != nil {
            map["logs"] = self.logs!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.totalLines != nil {
            map["total_lines"] = self.totalLines!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["back_lines"] as? Int64 {
            self.backLines = value
        }
        if let value = dict["forward_lines"] as? Int64 {
            self.forwardLines = value
        }
        if let value = dict["logs"] as? [[String: Any]] {
            self.logs = value
        }
        if let value = dict["progress"] as? String {
            self.progress = value
        }
        if let value = dict["total_lines"] as? Int64 {
            self.totalLines = value
        }
    }
}

public class GetContextLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetContextLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetContextLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCursorRequest : Tea.TeaModel {
    public var from: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? String {
            self.from = value
        }
    }
}

public class GetCursorResponseBody : Tea.TeaModel {
    public var cursor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cursor != nil {
            map["cursor"] = self.cursor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cursor"] as? String {
            self.cursor = value
        }
    }
}

public class GetCursorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCursorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCursorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCursorTimeRequest : Tea.TeaModel {
    public var cursor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cursor != nil {
            map["cursor"] = self.cursor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cursor"] as? String {
            self.cursor = value
        }
    }
}

public class GetCursorTimeResponseBody : Tea.TeaModel {
    public var cursorTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cursorTime != nil {
            map["cursor_time"] = self.cursorTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cursor_time"] as? String {
            self.cursorTime = value
        }
    }
}

public class GetCursorTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCursorTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCursorTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Dashboard?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Dashboard()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDownloadJobResponseBody : Tea.TeaModel {
    public class Configuration : Tea.TeaModel {
        public class Sink : Tea.TeaModel {
            public var bucket: String?

            public var compressionType: String?

            public var contentType: String?

            public var prefix_: String?

            public var roleArn: String?

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
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.compressionType != nil {
                    map["compressionType"] = self.compressionType!
                }
                if self.contentType != nil {
                    map["contentType"] = self.contentType!
                }
                if self.prefix_ != nil {
                    map["prefix"] = self.prefix_!
                }
                if self.roleArn != nil {
                    map["roleArn"] = self.roleArn!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["compressionType"] as? String {
                    self.compressionType = value
                }
                if let value = dict["contentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["prefix"] as? String {
                    self.prefix_ = value
                }
                if let value = dict["roleArn"] as? String {
                    self.roleArn = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var allowInComplete: Bool?

        public var fromTime: Int64?

        public var logstore: String?

        public var powerSql: Bool?

        public var query: String?

        public var sink: GetDownloadJobResponseBody.Configuration.Sink?

        public var toTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sink?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowInComplete != nil {
                map["allowInComplete"] = self.allowInComplete!
            }
            if self.fromTime != nil {
                map["fromTime"] = self.fromTime!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.powerSql != nil {
                map["powerSql"] = self.powerSql!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.sink != nil {
                map["sink"] = self.sink?.toMap()
            }
            if self.toTime != nil {
                map["toTime"] = self.toTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["allowInComplete"] as? Bool {
                self.allowInComplete = value
            }
            if let value = dict["fromTime"] as? Int64 {
                self.fromTime = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["powerSql"] as? Bool {
                self.powerSql = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["sink"] as? [String: Any?] {
                var model = GetDownloadJobResponseBody.Configuration.Sink()
                model.fromMap(value)
                self.sink = model
            }
            if let value = dict["toTime"] as? Int64 {
                self.toTime = value
            }
        }
    }
    public class ExecutionDetails : Tea.TeaModel {
        public var checkSum: String?

        public var errorMessage: String?

        public var executeTime: Int64?

        public var filePath: String?

        public var fileSize: Int64?

        public var logCount: Int64?

        public var notice: String?

        public var progress: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkSum != nil {
                map["checkSum"] = self.checkSum!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.executeTime != nil {
                map["executeTime"] = self.executeTime!
            }
            if self.filePath != nil {
                map["filePath"] = self.filePath!
            }
            if self.fileSize != nil {
                map["fileSize"] = self.fileSize!
            }
            if self.logCount != nil {
                map["logCount"] = self.logCount!
            }
            if self.notice != nil {
                map["notice"] = self.notice!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkSum"] as? String {
                self.checkSum = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["executeTime"] as? Int64 {
                self.executeTime = value
            }
            if let value = dict["filePath"] as? String {
                self.filePath = value
            }
            if let value = dict["fileSize"] as? Int64 {
                self.fileSize = value
            }
            if let value = dict["logCount"] as? Int64 {
                self.logCount = value
            }
            if let value = dict["notice"] as? String {
                self.notice = value
            }
            if let value = dict["progress"] as? Int64 {
                self.progress = value
            }
        }
    }
    public var configuration: GetDownloadJobResponseBody.Configuration?

    public var createTime: String?

    public var description_: String?

    public var displayName: String?

    public var executionDetails: GetDownloadJobResponseBody.ExecutionDetails?

    public var name: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.executionDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.executionDetails != nil {
            map["executionDetails"] = self.executionDetails?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = GetDownloadJobResponseBody.Configuration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["executionDetails"] as? [String: Any?] {
            var model = GetDownloadJobResponseBody.ExecutionDetails()
            model.fromMap(value)
            self.executionDetails = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GetDownloadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDownloadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDownloadJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetETLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ETL?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ETL()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHistogramsRequest : Tea.TeaModel {
    public var from: Int64?

    public var query: String?

    public var to: Int64?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int64 {
            self.from = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["to"] as? Int64 {
            self.to = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class GetHistogramsResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var from: Int64?

        public var to: Int64?

        public var count: Int64?

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
            if self.from != nil {
                map["from"] = self.from!
            }
            if self.to != nil {
                map["to"] = self.to!
            }
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["from"] as? Int64 {
                self.from = value
            }
            if let value = dict["to"] as? Int64 {
                self.to = value
            }
            if let value = dict["count"] as? Int64 {
                self.count = value
            }
            if let value = dict["progress"] as? String {
                self.progress = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [GetHistogramsResponse.Body]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [GetHistogramsResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = GetHistogramsResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class GetIndexResponseBody : Tea.TeaModel {
    public class Line : Tea.TeaModel {
        public var caseSensitive: Bool?

        public var chn: Bool?

        public var excludeKeys: [String]?

        public var includeKeys: [String]?

        public var token: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caseSensitive != nil {
                map["caseSensitive"] = self.caseSensitive!
            }
            if self.chn != nil {
                map["chn"] = self.chn!
            }
            if self.excludeKeys != nil {
                map["exclude_keys"] = self.excludeKeys!
            }
            if self.includeKeys != nil {
                map["include_keys"] = self.includeKeys!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["caseSensitive"] as? Bool {
                self.caseSensitive = value
            }
            if let value = dict["chn"] as? Bool {
                self.chn = value
            }
            if let value = dict["exclude_keys"] as? [String] {
                self.excludeKeys = value
            }
            if let value = dict["include_keys"] as? [String] {
                self.includeKeys = value
            }
            if let value = dict["token"] as? [String] {
                self.token = value
            }
        }
    }
    public var indexMode: String?

    public var keys: [String: IndexKey]?

    public var lastModifyTime: Int64?

    public var line: GetIndexResponseBody.Line?

    public var logReduce: Bool?

    public var logReduceBlackList: [String]?

    public var logReduceWhiteList: [String]?

    public var maxTextLen: Int32?

    public var storage: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.line?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexMode != nil {
            map["index_mode"] = self.indexMode!
        }
        if self.keys != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.keys! {
                tmp[k] = v.toMap()
            }
            map["keys"] = tmp
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.line != nil {
            map["line"] = self.line?.toMap()
        }
        if self.logReduce != nil {
            map["log_reduce"] = self.logReduce!
        }
        if self.logReduceBlackList != nil {
            map["log_reduce_black_list"] = self.logReduceBlackList!
        }
        if self.logReduceWhiteList != nil {
            map["log_reduce_white_list"] = self.logReduceWhiteList!
        }
        if self.maxTextLen != nil {
            map["max_text_len"] = self.maxTextLen!
        }
        if self.storage != nil {
            map["storage"] = self.storage!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["index_mode"] as? String {
            self.indexMode = value
        }
        if let value = dict["keys"] as? [String: Any?] {
            var tmp : [String: IndexKey] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = IndexKey()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.keys = tmp
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["line"] as? [String: Any?] {
            var model = GetIndexResponseBody.Line()
            model.fromMap(value)
            self.line = model
        }
        if let value = dict["log_reduce"] as? Bool {
            self.logReduce = value
        }
        if let value = dict["log_reduce_black_list"] as? [String] {
            self.logReduceBlackList = value
        }
        if let value = dict["log_reduce_white_list"] as? [String] {
            self.logReduceWhiteList = value
        }
        if let value = dict["max_text_len"] as? Int32 {
            self.maxTextLen = value
        }
        if let value = dict["storage"] as? String {
            self.storage = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class GetIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIngestProcessorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IngestProcessor?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IngestProcessor()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Logstore?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Logstore()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogStoreMeteringModeResponseBody : Tea.TeaModel {
    public var meteringMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringMode != nil {
            map["meteringMode"] = self.meteringMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringMode"] as? String {
            self.meteringMode = value
        }
    }
}

public class GetLogStoreMeteringModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogStoreMeteringModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLogStoreMeteringModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Logging?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Logging()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogsRequest : Tea.TeaModel {
    public var from: Int32?

    public var line: Int64?

    public var offset: Int64?

    public var powerSql: Bool?

    public var query: String?

    public var reverse: Bool?

    public var to: Int32?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.line != nil {
            map["line"] = self.line!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.powerSql != nil {
            map["powerSql"] = self.powerSql!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.reverse != nil {
            map["reverse"] = self.reverse!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["line"] as? Int64 {
            self.line = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["powerSql"] as? Bool {
            self.powerSql = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class GetLogsResponse : Tea.TeaModel {
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

public class GetLogsV2Headers : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var acceptEncoding: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.acceptEncoding != nil {
            map["Accept-Encoding"] = self.acceptEncoding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Accept-Encoding"] as? String {
            self.acceptEncoding = value
        }
    }
}

public class GetLogsV2Request : Tea.TeaModel {
    public var forward: Bool?

    public var from: Int32?

    public var highlight: Bool?

    public var line: Int64?

    public var offset: Int64?

    public var powerSql: Bool?

    public var query: String?

    public var reverse: Bool?

    public var session: String?

    public var to: Int32?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forward != nil {
            map["forward"] = self.forward!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.highlight != nil {
            map["highlight"] = self.highlight!
        }
        if self.line != nil {
            map["line"] = self.line!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.powerSql != nil {
            map["powerSql"] = self.powerSql!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.reverse != nil {
            map["reverse"] = self.reverse!
        }
        if self.session != nil {
            map["session"] = self.session!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["forward"] as? Bool {
            self.forward = value
        }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["highlight"] as? Bool {
            self.highlight = value
        }
        if let value = dict["line"] as? Int64 {
            self.line = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["powerSql"] as? Bool {
            self.powerSql = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["session"] as? String {
            self.session = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class GetLogsV2ResponseBody : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public class PhraseQueryInfo : Tea.TeaModel {
            public var beginOffset: Int64?

            public var endOffset: Int64?

            public var endTime: Int64?

            public var scanAll: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginOffset != nil {
                    map["beginOffset"] = self.beginOffset!
                }
                if self.endOffset != nil {
                    map["endOffset"] = self.endOffset!
                }
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.scanAll != nil {
                    map["scanAll"] = self.scanAll!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["beginOffset"] as? Int64 {
                    self.beginOffset = value
                }
                if let value = dict["endOffset"] as? Int64 {
                    self.endOffset = value
                }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["scanAll"] as? Bool {
                    self.scanAll = value
                }
            }
        }
        public var aggQuery: String?

        public var columnTypes: [String]?

        public var count: Int32?

        public var cpuCores: Int32?

        public var cpuSec: Double?

        public var elapsedMillisecond: Int64?

        public var hasSQL: Bool?

        public var highlights: [[LogContent]]?

        public var isAccurate: Bool?

        public var keys: [String]?

        public var limited: Int32?

        public var mode: Int32?

        public var phraseQueryInfo: GetLogsV2ResponseBody.Meta.PhraseQueryInfo?

        public var processedBytes: Int64?

        public var processedRows: Int64?

        public var progress: String?

        public var scanBytes: Int64?

        public var telementryType: String?

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
            try self.phraseQueryInfo?.validate()
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
            if self.highlights != nil {
                var tmp : [Any] = []
                for k in self.highlights! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["highlights"] = tmp
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
            if self.phraseQueryInfo != nil {
                map["phraseQueryInfo"] = self.phraseQueryInfo?.toMap()
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
            if self.telementryType != nil {
                map["telementryType"] = self.telementryType!
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
            if let value = dict["highlights"] as? [Any?] {
                var tmp : [[LogContent]] = []
                for v in value {
                    if v != nil {
                        var l1 : [LogContent] = []
                        for v1 in v as! [Any?] {
                            if v1 != nil {
                                var model = LogContent()
                                if v1 != nil {
                                    model.fromMap(v1 as? [String: Any?])
                                }
                                l1.append(model)
                            }
                        }
                        tmp.append(l1)
                    }
                }
                self.highlights = tmp
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
            if let value = dict["phraseQueryInfo"] as? [String: Any?] {
                var model = GetLogsV2ResponseBody.Meta.PhraseQueryInfo()
                model.fromMap(value)
                self.phraseQueryInfo = model
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
            if let value = dict["telementryType"] as? String {
                self.telementryType = value
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

    public var meta: GetLogsV2ResponseBody.Meta?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [[String: String]] {
            self.data = value
        }
        if let value = dict["meta"] as? [String: Any?] {
            var model = GetLogsV2ResponseBody.Meta()
            model.fromMap(value)
            self.meta = model
        }
    }
}

public class GetLogsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogsV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLogsV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogtailPipelineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogtailPipelineConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogtailPipelineConfig()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMLServiceResultsRequest : Tea.TeaModel {
    public var allowBuiltin: Bool?

    public var body: MLServiceAnalysisParam?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowBuiltin != nil {
            map["allowBuiltin"] = self.allowBuiltin!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowBuiltin"] as? Bool {
            self.allowBuiltin = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLServiceAnalysisParam()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class GetMLServiceResultsResponseBody : Tea.TeaModel {
    public var data: [[String: String]]?

    public var status: [String: String]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [[String: String]] {
            self.data = value
        }
        if let value = dict["status"] as? [String: String] {
            self.status = value
        }
    }
}

public class GetMLServiceResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMLServiceResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMLServiceResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MachineGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MachineGroup()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMaxComputeExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MaxComputeExport?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MaxComputeExport()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMetricStoreResponseBody : Tea.TeaModel {
    public var autoSplit: Bool?

    public var createTime: Int64?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var lastModifyTime: Int64?

    public var maxSplitShard: Int32?

    public var metricType: String?

    public var mode: String?

    public var name: String?

    public var shardCount: Int32?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.metricType != nil {
            map["metricType"] = self.metricType!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["lastModifyTime"] as? Int64 {
            self.lastModifyTime = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["metricType"] as? String {
            self.metricType = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class GetMetricStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetricStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMetricStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMetricStoreMeteringModeResponseBody : Tea.TeaModel {
    public var meteringMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringMode != nil {
            map["meteringMode"] = self.meteringMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringMode"] as? String {
            self.meteringMode = value
        }
    }
}

public class GetMetricStoreMeteringModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetricStoreMeteringModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMetricStoreMeteringModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOSSExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OSSExport?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OSSExport()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOSSHDFSExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OSSExport?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OSSExport()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOSSIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OSSIngestion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OSSIngestion()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectLogsRequest : Tea.TeaModel {
    public var powerSql: Bool?

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
        if self.powerSql != nil {
            map["powerSql"] = self.powerSql!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["powerSql"] as? Bool {
            self.powerSql = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
    }
}

public class GetProjectLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [[String: String]]?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? [[String: String]] {
            self.body = value
        }
    }
}

public class GetProjectPolicyResponse : Tea.TeaModel {
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
    }

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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class GetSavedSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SavedSearch?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SavedSearch()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledSQLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScheduledSQL?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScheduledSQL()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSlsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ServiceStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ServiceStatus()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSqlInstanceResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var name: String?

        public var cu: Int32?

        public var createTime: Int32?

        public var updateTime: Int32?

        public var useAsDefault: Bool?

        public override init() {
            super.init()
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
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.useAsDefault != nil {
                map["useAsDefault"] = self.useAsDefault!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
            if let value = dict["createTime"] as? Int32 {
                self.createTime = value
            }
            if let value = dict["updateTime"] as? Int32 {
                self.updateTime = value
            }
            if let value = dict["useAsDefault"] as? Bool {
                self.useAsDefault = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [GetSqlInstanceResponse.Body]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [GetSqlInstanceResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = GetSqlInstanceResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class GetStoreViewResponseBody : Tea.TeaModel {
    public var storeType: String?

    public var stores: [StoreViewStore]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        if self.stores != nil {
            var tmp : [Any] = []
            for k in self.stores! {
                tmp.append(k.toMap())
            }
            map["stores"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
        if let value = dict["stores"] as? [Any?] {
            var tmp : [StoreViewStore] = []
            for v in value {
                if v != nil {
                    var model = StoreViewStore()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stores = tmp
        }
    }
}

public class GetStoreViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStoreViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStoreViewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStoreViewIndexResponseBody : Tea.TeaModel {
    public class Indexes : Tea.TeaModel {
        public var index: Index?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.index?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["index"] = self.index?.toMap()
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["index"] as? [String: Any?] {
                var model = Index()
                model.fromMap(value)
                self.index = model
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public var indexes: [GetStoreViewIndexResponseBody.Indexes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexes != nil {
            var tmp : [Any] = []
            for k in self.indexes! {
                tmp.append(k.toMap())
            }
            map["indexes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["indexes"] as? [Any?] {
            var tmp : [GetStoreViewIndexResponseBody.Indexes] = []
            for v in value {
                if v != nil {
                    var model = GetStoreViewIndexResponseBody.Indexes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.indexes = tmp
        }
    }
}

public class GetStoreViewIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStoreViewIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStoreViewIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentInstanceConfigsRequest : Tea.TeaModel {
    public var configType: String?

    public var offset: Int64?

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
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ListAgentInstanceConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var attributes: String?

        public var configType: String?

        public override init() {
            super.init()
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
                map["attributes"] = self.attributes!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["configType"] as? String {
                self.configType = value
            }
        }
    }
    public var configs: [ListAgentInstanceConfigsResponseBody.Configs]?

    public var size: Int64?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["configs"] = tmp
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [Any?] {
            var tmp : [ListAgentInstanceConfigsResponseBody.Configs] = []
            for v in value {
                if v != nil {
                    var model = ListAgentInstanceConfigsResponseBody.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAgentInstanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentInstanceConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAgentInstanceConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAiToolsResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Fields : Tea.TeaModel {
            public var name: String?

            public var option: [String]?

            public var required_: Bool?

            public var type: String?

            public var example: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.option != nil {
                    map["option"] = self.option!
                }
                if self.required_ != nil {
                    map["required"] = self.required_!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.example != nil {
                    map["example"] = self.example!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["option"] as? [String] {
                    self.option = value
                }
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["example"] as? String {
                    self.example = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
            }
        }
        public var fields: [ListAiToolsResponse.Body.Fields]?

        public var name: String?

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
            if self.fields != nil {
                var tmp : [Any] = []
                for k in self.fields! {
                    tmp.append(k.toMap())
                }
                map["fields"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fields"] as? [Any?] {
                var tmp : [ListAiToolsResponse.Body.Fields] = []
                for v in value {
                    if v != nil {
                        var model = ListAiToolsResponse.Body.Fields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fields = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [ListAiToolsResponse.Body]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [ListAiToolsResponse.Body] = []
            for v in value {
                if v != nil {
                    var model = ListAiToolsResponse.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class ListAlertsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListAlertsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [Alert]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [Alert] = []
            for v in value {
                if v != nil {
                    var model = Alert()
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

public class ListAlertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAlertsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnnotationDataRequest : Tea.TeaModel {
    public var offset: Int32?

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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListAnnotationDataResponseBody : Tea.TeaModel {
    public var data: [MLDataParam]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [MLDataParam] = []
            for v in value {
                if v != nil {
                    var model = MLDataParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAnnotationDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnnotationDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAnnotationDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnnotationDataSetsRequest : Tea.TeaModel {
    public var offset: Int32?

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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListAnnotationDataSetsResponseBody : Tea.TeaModel {
    public var data: [MLDataSetParam]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [MLDataSetParam] = []
            for v in value {
                if v != nil {
                    var model = MLDataSetParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAnnotationDataSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnnotationDataSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAnnotationDataSetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnnotationLabelsRequest : Tea.TeaModel {
    public var offset: Int32?

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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListAnnotationLabelsResponseBody : Tea.TeaModel {
    public var data: [MLLabelParam]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [MLLabelParam] = []
            for v in value {
                if v != nil {
                    var model = MLLabelParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAnnotationLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnnotationLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAnnotationLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCollectionPoliciesRequest : Tea.TeaModel {
    public var centralProject: String?

    public var dataCode: String?

    public var instanceId: String?

    public var offset: Int32?

    public var policyName: String?

    public var productCode: String?

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
        if self.centralProject != nil {
            map["centralProject"] = self.centralProject!
        }
        if self.dataCode != nil {
            map["dataCode"] = self.dataCode!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.policyName != nil {
            map["policyName"] = self.policyName!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["centralProject"] as? String {
            self.centralProject = value
        }
        if let value = dict["dataCode"] as? String {
            self.dataCode = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["policyName"] as? String {
            self.policyName = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListCollectionPoliciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CentralizeConfig : Tea.TeaModel {
            public var destLogstore: String?

            public var destProject: String?

            public var destRegion: String?

            public var destTTL: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destLogstore != nil {
                    map["destLogstore"] = self.destLogstore!
                }
                if self.destProject != nil {
                    map["destProject"] = self.destProject!
                }
                if self.destRegion != nil {
                    map["destRegion"] = self.destRegion!
                }
                if self.destTTL != nil {
                    map["destTTL"] = self.destTTL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["destLogstore"] as? String {
                    self.destLogstore = value
                }
                if let value = dict["destProject"] as? String {
                    self.destProject = value
                }
                if let value = dict["destRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["destTTL"] as? Int32 {
                    self.destTTL = value
                }
            }
        }
        public class DataConfig : Tea.TeaModel {
            public var dataProject: String?

            public var dataRegion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataProject != nil {
                    map["dataProject"] = self.dataProject!
                }
                if self.dataRegion != nil {
                    map["dataRegion"] = self.dataRegion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dataProject"] as? String {
                    self.dataProject = value
                }
                if let value = dict["dataRegion"] as? String {
                    self.dataRegion = value
                }
            }
        }
        public class PolicyConfig : Tea.TeaModel {
            public var instanceIds: [String]?

            public var regions: [String]?

            public var resourceMode: String?

            public var resourceTags: [String: Any]?

            public override init() {
                super.init()
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
                if self.regions != nil {
                    map["regions"] = self.regions!
                }
                if self.resourceMode != nil {
                    map["resourceMode"] = self.resourceMode!
                }
                if self.resourceTags != nil {
                    map["resourceTags"] = self.resourceTags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instanceIds"] as? [String] {
                    self.instanceIds = value
                }
                if let value = dict["regions"] as? [String] {
                    self.regions = value
                }
                if let value = dict["resourceMode"] as? String {
                    self.resourceMode = value
                }
                if let value = dict["resourceTags"] as? [String: Any] {
                    self.resourceTags = value
                }
            }
        }
        public class ResourceDirectory : Tea.TeaModel {
            public var accountGroupType: String?

            public var members: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountGroupType != nil {
                    map["accountGroupType"] = self.accountGroupType!
                }
                if self.members != nil {
                    map["members"] = self.members!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountGroupType"] as? String {
                    self.accountGroupType = value
                }
                if let value = dict["members"] as? [String] {
                    self.members = value
                }
            }
        }
        public var centralizeConfig: ListCollectionPoliciesResponseBody.Data.CentralizeConfig?

        public var centralizeEnabled: Bool?

        public var dataCode: String?

        public var dataConfig: ListCollectionPoliciesResponseBody.Data.DataConfig?

        public var enabled: Bool?

        public var internalPolicy: Bool?

        public var policyConfig: ListCollectionPoliciesResponseBody.Data.PolicyConfig?

        public var policyName: String?

        public var policyUid: String?

        public var productCode: String?

        public var resourceDirectory: ListCollectionPoliciesResponseBody.Data.ResourceDirectory?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.centralizeConfig?.validate()
            try self.dataConfig?.validate()
            try self.policyConfig?.validate()
            try self.resourceDirectory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.centralizeConfig != nil {
                map["centralizeConfig"] = self.centralizeConfig?.toMap()
            }
            if self.centralizeEnabled != nil {
                map["centralizeEnabled"] = self.centralizeEnabled!
            }
            if self.dataCode != nil {
                map["dataCode"] = self.dataCode!
            }
            if self.dataConfig != nil {
                map["dataConfig"] = self.dataConfig?.toMap()
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.internalPolicy != nil {
                map["internalPolicy"] = self.internalPolicy!
            }
            if self.policyConfig != nil {
                map["policyConfig"] = self.policyConfig?.toMap()
            }
            if self.policyName != nil {
                map["policyName"] = self.policyName!
            }
            if self.policyUid != nil {
                map["policyUid"] = self.policyUid!
            }
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            if self.resourceDirectory != nil {
                map["resourceDirectory"] = self.resourceDirectory?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["centralizeConfig"] as? [String: Any?] {
                var model = ListCollectionPoliciesResponseBody.Data.CentralizeConfig()
                model.fromMap(value)
                self.centralizeConfig = model
            }
            if let value = dict["centralizeEnabled"] as? Bool {
                self.centralizeEnabled = value
            }
            if let value = dict["dataCode"] as? String {
                self.dataCode = value
            }
            if let value = dict["dataConfig"] as? [String: Any?] {
                var model = ListCollectionPoliciesResponseBody.Data.DataConfig()
                model.fromMap(value)
                self.dataConfig = model
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["internalPolicy"] as? Bool {
                self.internalPolicy = value
            }
            if let value = dict["policyConfig"] as? [String: Any?] {
                var model = ListCollectionPoliciesResponseBody.Data.PolicyConfig()
                model.fromMap(value)
                self.policyConfig = model
            }
            if let value = dict["policyName"] as? String {
                self.policyName = value
            }
            if let value = dict["policyUid"] as? String {
                self.policyUid = value
            }
            if let value = dict["productCode"] as? String {
                self.productCode = value
            }
            if let value = dict["resourceDirectory"] as? [String: Any?] {
                var model = ListCollectionPoliciesResponseBody.Data.ResourceDirectory()
                model.fromMap(value)
                self.resourceDirectory = model
            }
        }
    }
    public class Statistics : Tea.TeaModel {
        public class PolicySourceList : Tea.TeaModel {
            public var policyName: String?

            public var policyUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyName != nil {
                    map["policyName"] = self.policyName!
                }
                if self.policyUid != nil {
                    map["policyUid"] = self.policyUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["policyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["policyUid"] as? String {
                    self.policyUid = value
                }
            }
        }
        public var policySourceList: [ListCollectionPoliciesResponseBody.Statistics.PolicySourceList]?

        public var productCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policySourceList != nil {
                var tmp : [Any] = []
                for k in self.policySourceList! {
                    tmp.append(k.toMap())
                }
                map["policySourceList"] = tmp
            }
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["policySourceList"] as? [Any?] {
                var tmp : [ListCollectionPoliciesResponseBody.Statistics.PolicySourceList] = []
                for v in value {
                    if v != nil {
                        var model = ListCollectionPoliciesResponseBody.Statistics.PolicySourceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policySourceList = tmp
            }
            if let value = dict["productCode"] as? String {
                self.productCode = value
            }
        }
    }
    public var currentCount: Int32?

    public var data: [ListCollectionPoliciesResponseBody.Data]?

    public var statistics: [ListCollectionPoliciesResponseBody.Statistics]?

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
        if self.currentCount != nil {
            map["currentCount"] = self.currentCount!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.statistics != nil {
            var tmp : [Any] = []
            for k in self.statistics! {
                tmp.append(k.toMap())
            }
            map["statistics"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentCount"] as? Int32 {
            self.currentCount = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListCollectionPoliciesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCollectionPoliciesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["statistics"] as? [Any?] {
            var tmp : [ListCollectionPoliciesResponseBody.Statistics] = []
            for v in value {
                if v != nil {
                    var model = ListCollectionPoliciesResponseBody.Statistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statistics = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListCollectionPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCollectionPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCollectionPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConfigRequest : Tea.TeaModel {
    public var configName: String?

    public var logstoreName: String?

    public var offset: Int64?

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
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ListConfigResponseBody : Tea.TeaModel {
    public var configs: [String]?

    public var count: Int32?

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
        if self.configs != nil {
            map["configs"] = self.configs!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [String] {
            self.configs = value
        }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [ConsumerGroup]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [ConsumerGroup] = []
            for v in value {
                if v != nil {
                    var model = ConsumerGroup()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class ListDashboardRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var dashboardName: String?

    public var displayName: String?

    public var offset: Int32?

    public var size: Int32?

    public var tags: [ListDashboardRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dashboardName != nil {
            map["dashboardName"] = self.dashboardName!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dashboardName"] as? String {
            self.dashboardName = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [ListDashboardRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListDashboardRequest.Tags()
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

public class ListDashboardShrinkRequest : Tea.TeaModel {
    public var dashboardName: String?

    public var displayName: String?

    public var offset: Int32?

    public var size: Int32?

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
        if self.dashboardName != nil {
            map["dashboardName"] = self.dashboardName!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dashboardName"] as? String {
            self.dashboardName = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListDashboardResponseBody : Tea.TeaModel {
    public class DashboardItems : Tea.TeaModel {
        public var dashboardName: String?

        public var description_: String?

        public var displayName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dashboardName != nil {
                map["dashboardName"] = self.dashboardName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dashboardName"] as? String {
                self.dashboardName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
        }
    }
    public var dashboardItems: [ListDashboardResponseBody.DashboardItems]?

    public var dashboards: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dashboardItems != nil {
            var tmp : [Any] = []
            for k in self.dashboardItems! {
                tmp.append(k.toMap())
            }
            map["dashboardItems"] = tmp
        }
        if self.dashboards != nil {
            map["dashboards"] = self.dashboards!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dashboardItems"] as? [Any?] {
            var tmp : [ListDashboardResponseBody.DashboardItems] = []
            for v in value {
                if v != nil {
                    var model = ListDashboardResponseBody.DashboardItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboardItems = tmp
        }
        if let value = dict["dashboards"] as? [String] {
            self.dashboards = value
        }
    }
}

public class ListDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDashboardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDashboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var domainName: String?

    public var offset: Int32?

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
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public var count: Int64?

    public var domains: [String]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.domains != nil {
            map["domains"] = self.domains!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDownloadJobsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int64?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ListDownloadJobsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Configuration : Tea.TeaModel {
            public class Sink : Tea.TeaModel {
                public var bucket: String?

                public var compressionType: String?

                public var contentType: String?

                public var prefix_: String?

                public var roleArn: String?

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
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.compressionType != nil {
                        map["compressionType"] = self.compressionType!
                    }
                    if self.contentType != nil {
                        map["contentType"] = self.contentType!
                    }
                    if self.prefix_ != nil {
                        map["prefix"] = self.prefix_!
                    }
                    if self.roleArn != nil {
                        map["roleArn"] = self.roleArn!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["bucket"] as? String {
                        self.bucket = value
                    }
                    if let value = dict["compressionType"] as? String {
                        self.compressionType = value
                    }
                    if let value = dict["contentType"] as? String {
                        self.contentType = value
                    }
                    if let value = dict["prefix"] as? String {
                        self.prefix_ = value
                    }
                    if let value = dict["roleArn"] as? String {
                        self.roleArn = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var allowInComplete: String?

            public var fromTime: Int64?

            public var logstore: String?

            public var powerSql: Bool?

            public var query: String?

            public var sink: ListDownloadJobsResponseBody.Results.Configuration.Sink?

            public var toTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sink?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowInComplete != nil {
                    map["allowInComplete"] = self.allowInComplete!
                }
                if self.fromTime != nil {
                    map["fromTime"] = self.fromTime!
                }
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.powerSql != nil {
                    map["powerSql"] = self.powerSql!
                }
                if self.query != nil {
                    map["query"] = self.query!
                }
                if self.sink != nil {
                    map["sink"] = self.sink?.toMap()
                }
                if self.toTime != nil {
                    map["toTime"] = self.toTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["allowInComplete"] as? String {
                    self.allowInComplete = value
                }
                if let value = dict["fromTime"] as? Int64 {
                    self.fromTime = value
                }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["powerSql"] as? Bool {
                    self.powerSql = value
                }
                if let value = dict["query"] as? String {
                    self.query = value
                }
                if let value = dict["sink"] as? [String: Any?] {
                    var model = ListDownloadJobsResponseBody.Results.Configuration.Sink()
                    model.fromMap(value)
                    self.sink = model
                }
                if let value = dict["toTime"] as? Int64 {
                    self.toTime = value
                }
            }
        }
        public class ExecutionDetails : Tea.TeaModel {
            public var checkSum: String?

            public var errorMessage: String?

            public var executeTime: Int64?

            public var filePath: String?

            public var fileSize: Int64?

            public var logCount: Int64?

            public var notice: String?

            public var progress: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkSum != nil {
                    map["checkSum"] = self.checkSum!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.executeTime != nil {
                    map["executeTime"] = self.executeTime!
                }
                if self.filePath != nil {
                    map["filePath"] = self.filePath!
                }
                if self.fileSize != nil {
                    map["fileSize"] = self.fileSize!
                }
                if self.logCount != nil {
                    map["logCount"] = self.logCount!
                }
                if self.notice != nil {
                    map["notice"] = self.notice!
                }
                if self.progress != nil {
                    map["progress"] = self.progress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkSum"] as? String {
                    self.checkSum = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["executeTime"] as? Int64 {
                    self.executeTime = value
                }
                if let value = dict["filePath"] as? String {
                    self.filePath = value
                }
                if let value = dict["fileSize"] as? Int64 {
                    self.fileSize = value
                }
                if let value = dict["logCount"] as? Int64 {
                    self.logCount = value
                }
                if let value = dict["notice"] as? String {
                    self.notice = value
                }
                if let value = dict["progress"] as? Int64 {
                    self.progress = value
                }
            }
        }
        public var configuration: ListDownloadJobsResponseBody.Results.Configuration?

        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var executionDetails: ListDownloadJobsResponseBody.Results.ExecutionDetails?

        public var name: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configuration?.validate()
            try self.executionDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configuration != nil {
                map["configuration"] = self.configuration?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.executionDetails != nil {
                map["executionDetails"] = self.executionDetails?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configuration"] as? [String: Any?] {
                var model = ListDownloadJobsResponseBody.Results.Configuration()
                model.fromMap(value)
                self.configuration = model
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["executionDetails"] as? [String: Any?] {
                var model = ListDownloadJobsResponseBody.Results.ExecutionDetails()
                model.fromMap(value)
                self.executionDetails = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var count: Int32?

    public var results: [ListDownloadJobsResponseBody.Results]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [ListDownloadJobsResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = ListDownloadJobsResponseBody.Results()
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

public class ListDownloadJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDownloadJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDownloadJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListETLsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListETLsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [ETL]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [ETL] = []
            for v in value {
                if v != nil {
                    var model = ETL()
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

public class ListETLsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListETLsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListETLsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIngestProcessorsRequest : Tea.TeaModel {
    public var displayName: String?

    public var offset: Int32?

    public var processorName: String?

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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.processorName != nil {
            map["processorName"] = self.processorName!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["processorName"] as? String {
            self.processorName = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListIngestProcessorsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var processors: [IngestProcessor]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.processors != nil {
            var tmp : [Any] = []
            for k in self.processors! {
                tmp.append(k.toMap())
            }
            map["processors"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["processors"] as? [Any?] {
            var tmp : [IngestProcessor] = []
            for v in value {
                if v != nil {
                    var model = IngestProcessor()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.processors = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListIngestProcessorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIngestProcessorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListIngestProcessorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogStoresRequest : Tea.TeaModel {
    public var logstoreName: String?

    public var mode: String?

    public var offset: Int32?

    public var size: Int32?

    public var telemetryType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.telemetryType != nil {
            map["telemetryType"] = self.telemetryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["telemetryType"] as? String {
            self.telemetryType = value
        }
    }
}

public class ListLogStoresResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var logstores: [String]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.logstores != nil {
            map["logstores"] = self.logstores!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["logstores"] as? [String] {
            self.logstores = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListLogStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogStoresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLogStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogtailPipelineConfigRequest : Tea.TeaModel {
    public var configName: String?

    public var logstoreName: String?

    public var offset: Int64?

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
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ListLogtailPipelineConfigResponseBody : Tea.TeaModel {
    public var configs: [String]?

    public var count: Int32?

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
        if self.configs != nil {
            map["configs"] = self.configs!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [String] {
            self.configs = value
        }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListLogtailPipelineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogtailPipelineConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLogtailPipelineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMachineGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var offset: Int32?

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
        if self.groupName != nil {
            map["groupName"] = self.groupName!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupName"] as? String {
            self.groupName = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListMachineGroupResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var machinegroups: [String]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.machinegroups != nil {
            map["machinegroups"] = self.machinegroups!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["machinegroups"] as? [String] {
            self.machinegroups = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMachineGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMachineGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMachinesRequest : Tea.TeaModel {
    public var offset: Int32?

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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListMachinesResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var machines: [Machine]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.machines != nil {
            var tmp : [Any] = []
            for k in self.machines! {
                tmp.append(k.toMap())
            }
            map["machines"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["machines"] as? [Any?] {
            var tmp : [Machine] = []
            for v in value {
                if v != nil {
                    var model = Machine()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.machines = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListMachinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMachinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMachinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMaxComputeExportsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListMaxComputeExportsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [MaxComputeExport]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [MaxComputeExport] = []
            for v in value {
                if v != nil {
                    var model = MaxComputeExport()
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

public class ListMaxComputeExportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMaxComputeExportsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMaxComputeExportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMetricStoresRequest : Tea.TeaModel {
    public var mode: String?

    public var name: String?

    public var offset: Int32?

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
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListMetricStoresResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var metricstores: [String]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.metricstores != nil {
            map["metricstores"] = self.metricstores!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["metricstores"] as? [String] {
            self.metricstores = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListMetricStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMetricStoresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMetricStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOSSExportsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListOSSExportsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [OSSExport]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [OSSExport] = []
            for v in value {
                if v != nil {
                    var model = OSSExport()
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

public class ListOSSExportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOSSExportsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOSSExportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOSSHDFSExportsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListOSSHDFSExportsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [OSSExport]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [OSSExport] = []
            for v in value {
                if v != nil {
                    var model = OSSExport()
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

public class ListOSSHDFSExportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOSSHDFSExportsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOSSHDFSExportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOSSIngestionsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int32?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListOSSIngestionsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [OSSIngestion]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [OSSIngestion] = []
            for v in value {
                if v != nil {
                    var model = OSSIngestion()
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

public class ListOSSIngestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOSSIngestionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOSSIngestionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
    public var fetchQuota: Bool?

    public var offset: Int32?

    public var projectName: String?

    public var resourceGroupId: String?

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
        if self.fetchQuota != nil {
            map["fetchQuota"] = self.fetchQuota!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fetchQuota"] as? Bool {
            self.fetchQuota = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public var count: Int64?

    public var projects: [Project]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["projects"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["projects"] as? [Any?] {
            var tmp : [Project] = []
            for v in value {
                if v != nil {
                    var model = Project()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.projects = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSavedSearchRequest : Tea.TeaModel {
    public var offset: Int32?

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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListSavedSearchResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var savedsearchItems: [SavedSearch]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.savedsearchItems != nil {
            var tmp : [Any] = []
            for k in self.savedsearchItems! {
                tmp.append(k.toMap())
            }
            map["savedsearchItems"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["savedsearchItems"] as? [Any?] {
            var tmp : [SavedSearch] = []
            for v in value {
                if v != nil {
                    var model = SavedSearch()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.savedsearchItems = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListSavedSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSavedSearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSavedSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledSQLsRequest : Tea.TeaModel {
    public var logstore: String?

    public var offset: Int64?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ListScheduledSQLsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var results: [ScheduledSQL]?

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
        if self.count != nil {
            map["count"] = self.count!
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
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [ScheduledSQL] = []
            for v in value {
                if v != nil {
                    var model = ScheduledSQL()
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

public class ListScheduledSQLsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledSQLsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListScheduledSQLsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListShardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Shard]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [Shard] = []
            for v in value {
                if v != nil {
                    var model = Shard()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class ListStoreViewsRequest : Tea.TeaModel {
    public var name: String?

    public var offset: Int32?

    public var size: Int32?

    public var storeType: String?

    public override init() {
        super.init()
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
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
    }
}

public class ListStoreViewsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var storeviews: [String]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.storeviews != nil {
            map["storeviews"] = self.storeviews!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["storeviews"] as? [String] {
            self.storeviews = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListStoreViewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStoreViewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStoreViewsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var tags: [ListTagResourcesRequest.Tags]?

    public override init() {
        super.init()
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
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tags()
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

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var resourceIdShrink: String?

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
        if self.resourceIdShrink != nil {
            map["resourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
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
                map["resourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
            map["nextToken"] = self.nextToken!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["tagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["tagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MergeShardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Shard]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [Shard] = []
            for v in value {
                if v != nil {
                    var model = Shard()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class OpenSlsServiceResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PullLogsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var acceptEncoding: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.acceptEncoding != nil {
            map["Accept-Encoding"] = self.acceptEncoding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Accept-Encoding"] as? String {
            self.acceptEncoding = value
        }
    }
}

public class PullLogsRequest : Tea.TeaModel {
    public var count: Int32?

    public var cursor: String?

    public var endCursor: String?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.cursor != nil {
            map["cursor"] = self.cursor!
        }
        if self.endCursor != nil {
            map["end_cursor"] = self.endCursor!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["cursor"] as? String {
            self.cursor = value
        }
        if let value = dict["end_cursor"] as? String {
            self.endCursor = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
    }
}

public class PullLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogGroupList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogGroupList()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutAnnotationDataRequest : Tea.TeaModel {
    public var annotationdataId: String?

    public var mlDataParam: MLDataParam?

    public var rawLog: [[String: String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mlDataParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotationdataId != nil {
            map["annotationdataId"] = self.annotationdataId!
        }
        if self.mlDataParam != nil {
            map["mlDataParam"] = self.mlDataParam?.toMap()
        }
        if self.rawLog != nil {
            map["rawLog"] = self.rawLog!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotationdataId"] as? String {
            self.annotationdataId = value
        }
        if let value = dict["mlDataParam"] as? [String: Any?] {
            var model = MLDataParam()
            model.fromMap(value)
            self.mlDataParam = model
        }
        if let value = dict["rawLog"] as? [[String: String]] {
            self.rawLog = value
        }
    }
}

public class PutAnnotationDataResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PutIngestProcessorRequest : Tea.TeaModel {
    public var configuration: IngestProcessorConfiguration?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = IngestProcessorConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class PutIngestProcessorResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PutLogsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLogCompresstype: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLogCompresstype != nil {
            map["x-log-compresstype"] = self.xLogCompresstype!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["x-log-compresstype"] as? String {
            self.xLogCompresstype = value
        }
    }
}

public class PutLogsRequest : Tea.TeaModel {
    public var body: LogGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogGroup()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutLogsResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PutProjectPolicyRequest : Tea.TeaModel {
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

public class PutProjectPolicyResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PutProjectTransferAccelerationRequest : Tea.TeaModel {
    public var enabled: Bool?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class PutProjectTransferAccelerationResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class PutWebtrackingRequest : Tea.TeaModel {
    public var logs: [[String: String]]?

    public var source: String?

    public var tags: [String: String]?

    public var topic: String?

    public override init() {
        super.init()
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
            map["__logs__"] = self.logs!
        }
        if self.source != nil {
            map["__source__"] = self.source!
        }
        if self.tags != nil {
            map["__tags__"] = self.tags!
        }
        if self.topic != nil {
            map["__topic__"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["__logs__"] as? [[String: String]] {
            self.logs = value
        }
        if let value = dict["__source__"] as? String {
            self.source = value
        }
        if let value = dict["__tags__"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["__topic__"] as? String {
            self.topic = value
        }
    }
}

public class PutWebtrackingResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class RefreshTokenRequest : Tea.TeaModel {
    public var accessTokenExpirationTime: Int64?

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
        if self.accessTokenExpirationTime != nil {
            map["accessTokenExpirationTime"] = self.accessTokenExpirationTime!
        }
        if self.ticket != nil {
            map["ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessTokenExpirationTime"] as? Int64 {
            self.accessTokenExpirationTime = value
        }
        if let value = dict["ticket"] as? String {
            self.ticket = value
        }
    }
}

public class RefreshTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public override init() {
        super.init()
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
            map["accessToken"] = self.accessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessToken"] as? String {
            self.accessToken = value
        }
    }
}

public class RefreshTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefreshTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveConfigFromMachineGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class SplitShardRequest : Tea.TeaModel {
    public var key: String?

    public var shardCount: Int32?

    public override init() {
        super.init()
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
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
    }
}

public class SplitShardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Shard]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [Any?] {
            var tmp : [Shard] = []
            for v in value {
                if v != nil {
                    var model = Shard()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class StartETLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StartMaxComputeExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StartOSSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StartOSSHDFSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StartOSSIngestionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StopETLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StopMaxComputeExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StopOSSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StopOSSHDFSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class StopOSSIngestionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var tags: [TagResourcesRequest.Tags]?

    public override init() {
        super.init()
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
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tags()
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

public class TagResourcesResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tags: [String]?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["all"] as? Bool {
            self.all = value
        }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tags"] as? [String] {
            self.tags = value
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateAgentInstanceConfigRequest : Tea.TeaModel {
    public var attributes: [String: String]?

    public var config: String?

    public var grayConfigs: [AgentInstanceConfigGrayConfigs]?

    public override init() {
        super.init()
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
            map["attributes"] = self.attributes!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.grayConfigs != nil {
            var tmp : [Any] = []
            for k in self.grayConfigs! {
                tmp.append(k.toMap())
            }
            map["grayConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["grayConfigs"] as? [Any?] {
            var tmp : [AgentInstanceConfigGrayConfigs] = []
            for v in value {
                if v != nil {
                    var model = AgentInstanceConfigGrayConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grayConfigs = tmp
        }
    }
}

public class UpdateAgentInstanceConfigShrinkRequest : Tea.TeaModel {
    public var attributesShrink: String?

    public var config: String?

    public var grayConfigs: [AgentInstanceConfigGrayConfigs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributesShrink != nil {
            map["attributes"] = self.attributesShrink!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.grayConfigs != nil {
            var tmp : [Any] = []
            for k in self.grayConfigs! {
                tmp.append(k.toMap())
            }
            map["grayConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? String {
            self.attributesShrink = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["grayConfigs"] as? [Any?] {
            var tmp : [AgentInstanceConfigGrayConfigs] = []
            for v in value {
                if v != nil {
                    var model = AgentInstanceConfigGrayConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grayConfigs = tmp
        }
    }
}

public class UpdateAgentInstanceConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateAlertRequest : Tea.TeaModel {
    public var configuration: AlertConfiguration?

    public var description_: String?

    public var displayName: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = AlertConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class UpdateAlertResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateAnnotationDataSetRequest : Tea.TeaModel {
    public var body: MLDataSetParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLDataSetParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAnnotationDataSetResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateAnnotationLabelRequest : Tea.TeaModel {
    public var body: MLLabelParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = MLLabelParam()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAnnotationLabelResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateConfigRequest : Tea.TeaModel {
    public var body: LogtailConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = LogtailConfig()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateConsumerGroupRequest : Tea.TeaModel {
    public var order: Bool?

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
        if self.order != nil {
            map["order"] = self.order!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["order"] as? Bool {
            self.order = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class UpdateConsumerGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateDashboardRequest : Tea.TeaModel {
    public var attribute: [String: String]?

    public var charts: [Chart]?

    public var dashboardName: String?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attribute != nil {
            map["attribute"] = self.attribute!
        }
        if self.charts != nil {
            var tmp : [Any] = []
            for k in self.charts! {
                tmp.append(k.toMap())
            }
            map["charts"] = tmp
        }
        if self.dashboardName != nil {
            map["dashboardName"] = self.dashboardName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attribute"] as? [String: String] {
            self.attribute = value
        }
        if let value = dict["charts"] as? [Any?] {
            var tmp : [Chart] = []
            for v in value {
                if v != nil {
                    var model = Chart()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.charts = tmp
        }
        if let value = dict["dashboardName"] as? String {
            self.dashboardName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateDashboardResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateETLRequest : Tea.TeaModel {
    public var configuration: ETLConfiguration?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ETLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateETLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateIndexRequest : Tea.TeaModel {
    public var body: Index?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Index()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIndexResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLogStoreRequest : Tea.TeaModel {
    public var appendMeta: Bool?

    public var autoSplit: Bool?

    public var enableTracking: Bool?

    public var encryptConf: EncryptConf?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var logstoreName: String?

    public var maxSplitShard: Int32?

    public var mode: String?

    public var shardCount: Int32?

    public var telemetryType: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.encryptConf?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appendMeta != nil {
            map["appendMeta"] = self.appendMeta!
        }
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.enableTracking != nil {
            map["enable_tracking"] = self.enableTracking!
        }
        if self.encryptConf != nil {
            map["encrypt_conf"] = self.encryptConf?.toMap()
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.logstoreName != nil {
            map["logstoreName"] = self.logstoreName!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.shardCount != nil {
            map["shardCount"] = self.shardCount!
        }
        if self.telemetryType != nil {
            map["telemetryType"] = self.telemetryType!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appendMeta"] as? Bool {
            self.appendMeta = value
        }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["enable_tracking"] as? Bool {
            self.enableTracking = value
        }
        if let value = dict["encrypt_conf"] as? [String: Any?] {
            var model = EncryptConf()
            model.fromMap(value)
            self.encryptConf = model
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["logstoreName"] as? String {
            self.logstoreName = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["shardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["telemetryType"] as? String {
            self.telemetryType = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class UpdateLogStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLogStoreEncryptionRequest : Tea.TeaModel {
    public class UserCmkInfo : Tea.TeaModel {
        public var keyId: String?

        public var regionId: String?

        public var roleArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyId != nil {
                map["keyId"] = self.keyId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.roleArn != nil {
                map["roleArn"] = self.roleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["keyId"] as? String {
                self.keyId = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["roleArn"] as? String {
                self.roleArn = value
            }
        }
    }
    public var enable: Bool?

    public var encryptType: String?

    public var userCmkInfo: UpdateLogStoreEncryptionRequest.UserCmkInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userCmkInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.encryptType != nil {
            map["encryptType"] = self.encryptType!
        }
        if self.userCmkInfo != nil {
            map["userCmkInfo"] = self.userCmkInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["encryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["userCmkInfo"] as? [String: Any?] {
            var model = UpdateLogStoreEncryptionRequest.UserCmkInfo()
            model.fromMap(value)
            self.userCmkInfo = model
        }
    }
}

public class UpdateLogStoreEncryptionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLogStoreMeteringModeRequest : Tea.TeaModel {
    public var meteringMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringMode != nil {
            map["meteringMode"] = self.meteringMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringMode"] as? String {
            self.meteringMode = value
        }
    }
}

public class UpdateLogStoreMeteringModeResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLogStoreProcessorRequest : Tea.TeaModel {
    public var processorName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processorName != nil {
            map["processorName"] = self.processorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["processorName"] as? String {
            self.processorName = value
        }
    }
}

public class UpdateLogStoreProcessorResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLoggingRequest : Tea.TeaModel {
    public class LoggingDetails : Tea.TeaModel {
        public var logstore: String?

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
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var loggingDetails: [UpdateLoggingRequest.LoggingDetails]?

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
        if self.loggingDetails != nil {
            var tmp : [Any] = []
            for k in self.loggingDetails! {
                tmp.append(k.toMap())
            }
            map["loggingDetails"] = tmp
        }
        if self.loggingProject != nil {
            map["loggingProject"] = self.loggingProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["loggingDetails"] as? [Any?] {
            var tmp : [UpdateLoggingRequest.LoggingDetails] = []
            for v in value {
                if v != nil {
                    var model = UpdateLoggingRequest.LoggingDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.loggingDetails = tmp
        }
        if let value = dict["loggingProject"] as? String {
            self.loggingProject = value
        }
    }
}

public class UpdateLoggingResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateLogtailPipelineConfigRequest : Tea.TeaModel {
    public var aggregators: [[String: Any]]?

    public var configName: String?

    public var flushers: [[String: Any]]?

    public var global: [String: Any]?

    public var inputs: [[String: Any]]?

    public var logSample: String?

    public var processors: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregators != nil {
            map["aggregators"] = self.aggregators!
        }
        if self.configName != nil {
            map["configName"] = self.configName!
        }
        if self.flushers != nil {
            map["flushers"] = self.flushers!
        }
        if self.global != nil {
            map["global"] = self.global!
        }
        if self.inputs != nil {
            map["inputs"] = self.inputs!
        }
        if self.logSample != nil {
            map["logSample"] = self.logSample!
        }
        if self.processors != nil {
            map["processors"] = self.processors!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aggregators"] as? [[String: Any]] {
            self.aggregators = value
        }
        if let value = dict["configName"] as? String {
            self.configName = value
        }
        if let value = dict["flushers"] as? [[String: Any]] {
            self.flushers = value
        }
        if let value = dict["global"] as? [String: Any] {
            self.global = value
        }
        if let value = dict["inputs"] as? [[String: Any]] {
            self.inputs = value
        }
        if let value = dict["logSample"] as? String {
            self.logSample = value
        }
        if let value = dict["processors"] as? [[String: Any]] {
            self.processors = value
        }
    }
}

public class UpdateLogtailPipelineConfigResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMachineGroupRequest : Tea.TeaModel {
    public class GroupAttribute : Tea.TeaModel {
        public var externalName: String?

        public var groupTopic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalName != nil {
                map["externalName"] = self.externalName!
            }
            if self.groupTopic != nil {
                map["groupTopic"] = self.groupTopic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["externalName"] as? String {
                self.externalName = value
            }
            if let value = dict["groupTopic"] as? String {
                self.groupTopic = value
            }
        }
    }
    public var groupAttribute: UpdateMachineGroupRequest.GroupAttribute?

    public var groupName: String?

    public var groupType: String?

    public var machineIdentifyType: String?

    public var machineList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupAttribute != nil {
            map["groupAttribute"] = self.groupAttribute?.toMap()
        }
        if self.groupName != nil {
            map["groupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["groupType"] = self.groupType!
        }
        if self.machineIdentifyType != nil {
            map["machineIdentifyType"] = self.machineIdentifyType!
        }
        if self.machineList != nil {
            map["machineList"] = self.machineList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupAttribute"] as? [String: Any?] {
            var model = UpdateMachineGroupRequest.GroupAttribute()
            model.fromMap(value)
            self.groupAttribute = model
        }
        if let value = dict["groupName"] as? String {
            self.groupName = value
        }
        if let value = dict["groupType"] as? String {
            self.groupType = value
        }
        if let value = dict["machineIdentifyType"] as? String {
            self.machineIdentifyType = value
        }
        if let value = dict["machineList"] as? [String] {
            self.machineList = value
        }
    }
}

public class UpdateMachineGroupResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMachineGroupMachineRequest : Tea.TeaModel {
    public var action: String?

    public var body: [String]?

    public override init() {
        super.init()
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
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["body"] as? [String] {
            self.body = value
        }
    }
}

public class UpdateMachineGroupMachineResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMaxComputeExportRequest : Tea.TeaModel {
    public var configuration: MaxComputeExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = MaxComputeExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateMaxComputeExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMetricStoreRequest : Tea.TeaModel {
    public var autoSplit: Bool?

    public var hotTtl: Int32?

    public var infrequentAccessTTL: Int32?

    public var maxSplitShard: Int32?

    public var mode: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSplit != nil {
            map["autoSplit"] = self.autoSplit!
        }
        if self.hotTtl != nil {
            map["hot_ttl"] = self.hotTtl!
        }
        if self.infrequentAccessTTL != nil {
            map["infrequentAccessTTL"] = self.infrequentAccessTTL!
        }
        if self.maxSplitShard != nil {
            map["maxSplitShard"] = self.maxSplitShard!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.ttl != nil {
            map["ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSplit"] as? Bool {
            self.autoSplit = value
        }
        if let value = dict["hot_ttl"] as? Int32 {
            self.hotTtl = value
        }
        if let value = dict["infrequentAccessTTL"] as? Int32 {
            self.infrequentAccessTTL = value
        }
        if let value = dict["maxSplitShard"] as? Int32 {
            self.maxSplitShard = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class UpdateMetricStoreResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMetricStoreMeteringModeRequest : Tea.TeaModel {
    public var meteringMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringMode != nil {
            map["meteringMode"] = self.meteringMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["meteringMode"] as? String {
            self.meteringMode = value
        }
    }
}

public class UpdateMetricStoreMeteringModeResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateMetricStoreProcessorRequest : Tea.TeaModel {
    public var processorName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processorName != nil {
            map["processorName"] = self.processorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["processorName"] as? String {
            self.processorName = value
        }
    }
}

public class UpdateMetricStoreProcessorResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateOSSExportRequest : Tea.TeaModel {
    public var configuration: OSSExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateOSSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateOSSHDFSExportRequest : Tea.TeaModel {
    public var configuration: OSSExportConfiguration?

    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSExportConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateOSSHDFSExportResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateOSSIngestionRequest : Tea.TeaModel {
    public var configuration: OSSIngestionConfiguration?

    public var description_: String?

    public var displayName: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = OSSIngestionConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class UpdateOSSIngestionResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var recycleBinEnabled: Bool?

    public override init() {
        super.init()
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
        if self.recycleBinEnabled != nil {
            map["recycleBinEnabled"] = self.recycleBinEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["recycleBinEnabled"] as? Bool {
            self.recycleBinEnabled = value
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateSavedSearchRequest : Tea.TeaModel {
    public var displayName: String?

    public var logstore: String?

    public var savedsearchName: String?

    public var searchQuery: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.savedsearchName != nil {
            map["savedsearchName"] = self.savedsearchName!
        }
        if self.searchQuery != nil {
            map["searchQuery"] = self.searchQuery!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["savedsearchName"] as? String {
            self.savedsearchName = value
        }
        if let value = dict["searchQuery"] as? String {
            self.searchQuery = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
    }
}

public class UpdateSavedSearchResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateScheduledSQLRequest : Tea.TeaModel {
    public var configuration: ScheduledSQLConfiguration?

    public var description_: String?

    public var displayName: String?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configuration?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configuration != nil {
            map["configuration"] = self.configuration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configuration"] as? [String: Any?] {
            var model = ScheduledSQLConfiguration()
            model.fromMap(value)
            self.configuration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
        }
    }
}

public class UpdateScheduledSQLResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateSqlInstanceRequest : Tea.TeaModel {
    public var cu: Int32?

    public var useAsDefault: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cu != nil {
            map["cu"] = self.cu!
        }
        if self.useAsDefault != nil {
            map["useAsDefault"] = self.useAsDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cu"] as? Int32 {
            self.cu = value
        }
        if let value = dict["useAsDefault"] as? Bool {
            self.useAsDefault = value
        }
    }
}

public class UpdateSqlInstanceResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpdateStoreViewRequest : Tea.TeaModel {
    public var storeType: String?

    public var stores: [StoreViewStore]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        if self.stores != nil {
            var tmp : [Any] = []
            for k in self.stores! {
                tmp.append(k.toMap())
            }
            map["stores"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
        if let value = dict["stores"] as? [Any?] {
            var tmp : [StoreViewStore] = []
            for v in value {
                if v != nil {
                    var model = StoreViewStore()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stores = tmp
        }
    }
}

public class UpdateStoreViewResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}

public class UpsertCollectionPolicyRequest : Tea.TeaModel {
    public class CentralizeConfig : Tea.TeaModel {
        public var destLogstore: String?

        public var destProject: String?

        public var destRegion: String?

        public var destTTL: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destLogstore != nil {
                map["destLogstore"] = self.destLogstore!
            }
            if self.destProject != nil {
                map["destProject"] = self.destProject!
            }
            if self.destRegion != nil {
                map["destRegion"] = self.destRegion!
            }
            if self.destTTL != nil {
                map["destTTL"] = self.destTTL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["destLogstore"] as? String {
                self.destLogstore = value
            }
            if let value = dict["destProject"] as? String {
                self.destProject = value
            }
            if let value = dict["destRegion"] as? String {
                self.destRegion = value
            }
            if let value = dict["destTTL"] as? Int32 {
                self.destTTL = value
            }
        }
    }
    public class DataConfig : Tea.TeaModel {
        public var dataRegion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataRegion != nil {
                map["dataRegion"] = self.dataRegion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataRegion"] as? String {
                self.dataRegion = value
            }
        }
    }
    public class PolicyConfig : Tea.TeaModel {
        public var instanceIds: [String]?

        public var regions: [String]?

        public var resourceMode: String?

        public var resourceTags: [String: Any]?

        public override init() {
            super.init()
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
            if self.regions != nil {
                map["regions"] = self.regions!
            }
            if self.resourceMode != nil {
                map["resourceMode"] = self.resourceMode!
            }
            if self.resourceTags != nil {
                map["resourceTags"] = self.resourceTags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["regions"] as? [String] {
                self.regions = value
            }
            if let value = dict["resourceMode"] as? String {
                self.resourceMode = value
            }
            if let value = dict["resourceTags"] as? [String: Any] {
                self.resourceTags = value
            }
        }
    }
    public class ResourceDirectory : Tea.TeaModel {
        public var accountGroupType: String?

        public var members: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountGroupType != nil {
                map["accountGroupType"] = self.accountGroupType!
            }
            if self.members != nil {
                map["members"] = self.members!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountGroupType"] as? String {
                self.accountGroupType = value
            }
            if let value = dict["members"] as? [String] {
                self.members = value
            }
        }
    }
    public var centralizeConfig: UpsertCollectionPolicyRequest.CentralizeConfig?

    public var centralizeEnabled: Bool?

    public var dataCode: String?

    public var dataConfig: UpsertCollectionPolicyRequest.DataConfig?

    public var enabled: Bool?

    public var policyConfig: UpsertCollectionPolicyRequest.PolicyConfig?

    public var policyName: String?

    public var productCode: String?

    public var resourceDirectory: UpsertCollectionPolicyRequest.ResourceDirectory?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.centralizeConfig?.validate()
        try self.dataConfig?.validate()
        try self.policyConfig?.validate()
        try self.resourceDirectory?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.centralizeConfig != nil {
            map["centralizeConfig"] = self.centralizeConfig?.toMap()
        }
        if self.centralizeEnabled != nil {
            map["centralizeEnabled"] = self.centralizeEnabled!
        }
        if self.dataCode != nil {
            map["dataCode"] = self.dataCode!
        }
        if self.dataConfig != nil {
            map["dataConfig"] = self.dataConfig?.toMap()
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.policyConfig != nil {
            map["policyConfig"] = self.policyConfig?.toMap()
        }
        if self.policyName != nil {
            map["policyName"] = self.policyName!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.resourceDirectory != nil {
            map["resourceDirectory"] = self.resourceDirectory?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["centralizeConfig"] as? [String: Any?] {
            var model = UpsertCollectionPolicyRequest.CentralizeConfig()
            model.fromMap(value)
            self.centralizeConfig = model
        }
        if let value = dict["centralizeEnabled"] as? Bool {
            self.centralizeEnabled = value
        }
        if let value = dict["dataCode"] as? String {
            self.dataCode = value
        }
        if let value = dict["dataConfig"] as? [String: Any?] {
            var model = UpsertCollectionPolicyRequest.DataConfig()
            model.fromMap(value)
            self.dataConfig = model
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["policyConfig"] as? [String: Any?] {
            var model = UpsertCollectionPolicyRequest.PolicyConfig()
            model.fromMap(value)
            self.policyConfig = model
        }
        if let value = dict["policyName"] as? String {
            self.policyName = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
        if let value = dict["resourceDirectory"] as? [String: Any?] {
            var model = UpsertCollectionPolicyRequest.ResourceDirectory()
            model.fromMap(value)
            self.resourceDirectory = model
        }
    }
}

public class UpsertCollectionPolicyResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
    }
}
