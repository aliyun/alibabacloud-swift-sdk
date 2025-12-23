import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ABTestExperiment : Tea.TeaModel {
    public var name: String?

    public var online: Bool?

    public var params: [String: String]?

    public var serialNumber: Int32?

    public var traffic: Int32?

    public override init() {
        super.init()
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
        if self.online != nil {
            map["online"] = self.online!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.serialNumber != nil {
            map["serialNumber"] = self.serialNumber!
        }
        if self.traffic != nil {
            map["traffic"] = self.traffic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["online"] as? Bool {
            self.online = value
        }
        if let value = dict["params"] as? [String: String] {
            self.params = value
        }
        if let value = dict["serialNumber"] as? Int32 {
            self.serialNumber = value
        }
        if let value = dict["traffic"] as? Int32 {
            self.traffic = value
        }
    }
}

public class ABTestGroup : Tea.TeaModel {
    public var name: String?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ABTestScene : Tea.TeaModel {
    public var name: String?

    public var status: Int32?

    public var values: [String]?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["values"] as? [String] {
            self.values = value
        }
    }
}

public class App : Tea.TeaModel {
    public class Cluster : Tea.TeaModel {
        public var maxQueryClauseLength: Int32?

        public var maxTimeoutMS: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxQueryClauseLength != nil {
                map["maxQueryClauseLength"] = self.maxQueryClauseLength!
            }
            if self.maxTimeoutMS != nil {
                map["maxTimeoutMS"] = self.maxTimeoutMS!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["maxQueryClauseLength"] as? Int32 {
                self.maxQueryClauseLength = value
            }
            if let value = dict["maxTimeoutMS"] as? Int32 {
                self.maxTimeoutMS = value
            }
        }
    }
    public var autoSwitch: Bool?

    public var cluster: App.Cluster?

    public var dataSources: [DataSource]?

    public var description_: String?

    public var domain: Domain?

    public var fetchFields: [String]?

    public var firstRanks: [FirstRank]?

    public var networkType: String?

    public var queryProcessors: [QueryProcessor]?

    public var quota: Quota?

    public var realtimeShared: Bool?

    public var schema: Schema?

    public var schemas: [Schema]?

    public var secondRanks: [SecondRank]?

    public var summaries: [Summary]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cluster?.validate()
        try self.domain?.validate()
        try self.quota?.validate()
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSwitch != nil {
            map["autoSwitch"] = self.autoSwitch!
        }
        if self.cluster != nil {
            map["cluster"] = self.cluster?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["dataSources"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domain != nil {
            map["domain"] = self.domain?.toMap()
        }
        if self.fetchFields != nil {
            map["fetchFields"] = self.fetchFields!
        }
        if self.firstRanks != nil {
            var tmp : [Any] = []
            for k in self.firstRanks! {
                tmp.append(k.toMap())
            }
            map["firstRanks"] = tmp
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        if self.queryProcessors != nil {
            var tmp : [Any] = []
            for k in self.queryProcessors! {
                tmp.append(k.toMap())
            }
            map["queryProcessors"] = tmp
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.realtimeShared != nil {
            map["realtimeShared"] = self.realtimeShared!
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["schemas"] = tmp
        }
        if self.secondRanks != nil {
            var tmp : [Any] = []
            for k in self.secondRanks! {
                tmp.append(k.toMap())
            }
            map["secondRanks"] = tmp
        }
        if self.summaries != nil {
            var tmp : [Any] = []
            for k in self.summaries! {
                tmp.append(k.toMap())
            }
            map["summaries"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSwitch"] as? Bool {
            self.autoSwitch = value
        }
        if let value = dict["cluster"] as? [String: Any?] {
            var model = App.Cluster()
            model.fromMap(value)
            self.cluster = model
        }
        if let value = dict["dataSources"] as? [Any?] {
            var tmp : [DataSource] = []
            for v in value {
                if v != nil {
                    var model = DataSource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domain"] as? [String: Any?] {
            var model = Domain()
            model.fromMap(value)
            self.domain = model
        }
        if let value = dict["fetchFields"] as? [String] {
            self.fetchFields = value
        }
        if let value = dict["firstRanks"] as? [Any?] {
            var tmp : [FirstRank] = []
            for v in value {
                if v != nil {
                    var model = FirstRank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firstRanks = tmp
        }
        if let value = dict["networkType"] as? String {
            self.networkType = value
        }
        if let value = dict["queryProcessors"] as? [Any?] {
            var tmp : [QueryProcessor] = []
            for v in value {
                if v != nil {
                    var model = QueryProcessor()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryProcessors = tmp
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["realtimeShared"] as? Bool {
            self.realtimeShared = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.schema = model
        }
        if let value = dict["schemas"] as? [Any?] {
            var tmp : [Schema] = []
            for v in value {
                if v != nil {
                    var model = Schema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schemas = tmp
        }
        if let value = dict["secondRanks"] as? [Any?] {
            var tmp : [SecondRank] = []
            for v in value {
                if v != nil {
                    var model = SecondRank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.secondRanks = tmp
        }
        if let value = dict["summaries"] as? [Any?] {
            var tmp : [Summary] = []
            for v in value {
                if v != nil {
                    var model = Summary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.summaries = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AppGroup : Tea.TeaModel {
    public class Order : Tea.TeaModel {
        public var autoRenew: Bool?

        public var duration: Int64?

        public var pricingCycle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["autoRenew"] = self.autoRenew!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.pricingCycle != nil {
                map["pricingCycle"] = self.pricingCycle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["pricingCycle"] as? String {
                self.pricingCycle = value
            }
        }
    }
    public var chargeType: String?

    public var description_: String?

    public var domain: String?

    public var name: String?

    public var order: AppGroup.Order?

    public var quota: Quota?

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
        try self.order?.validate()
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.order != nil {
            map["order"] = self.order?.toMap()
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["order"] as? [String: Any?] {
            var model = AppGroup.Order()
            model.fromMap(value)
            self.order = model
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class DataSource : Tea.TeaModel {
    public var fields: [[String: String]]?

    public var keyField: String?

    public var parameters: [String: Any]?

    public var plugins: [String: DataSourcePluginsValue]?

    public var schemaName: String?

    public var tableName: String?

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
        if self.keyField != nil {
            map["keyField"] = self.keyField!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.plugins != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.plugins! {
                tmp[k] = v.toMap()
            }
            map["plugins"] = tmp
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fields"] as? [[String: String]] {
            self.fields = value
        }
        if let value = dict["keyField"] as? String {
            self.keyField = value
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["plugins"] as? [String: Any?] {
            var tmp : [String: DataSourcePluginsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = DataSourcePluginsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.plugins = tmp
        }
        if let value = dict["schemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class Domain : Tea.TeaModel {
    public var category: String?

    public var functions: [String: [String]]?

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
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.functions != nil {
            map["functions"] = self.functions!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["functions"] as? [String: [String]] {
            self.functions = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class FirstRank : Tea.TeaModel {
    public var active: Bool?

    public var description_: String?

    public var meta: Any?

    public var name: String?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.meta != nil {
            map["meta"] = self.meta!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["active"] as? Bool {
            self.active = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["meta"] as? Any {
            self.meta = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class PrepayOrderInfo : Tea.TeaModel {
    public var autoRenew: Bool?

    public var duration: Int32?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["autoRenew"] = self.autoRenew!
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.pricingCycle != nil {
            map["pricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["pricingCycle"] as? String {
            self.pricingCycle = value
        }
    }
}

public class QueryProcessor : Tea.TeaModel {
    public var active: Bool?

    public var category: String?

    public var domain: String?

    public var indexes: [String]?

    public var name: String?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.indexes != nil {
            map["indexes"] = self.indexes!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.processors != nil {
            map["processors"] = self.processors!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["active"] as? Bool {
            self.active = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["indexes"] as? [String] {
            self.indexes = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["processors"] as? [[String: Any]] {
            self.processors = value
        }
    }
}

public class Quota : Tea.TeaModel {
    public var computeResource: Int32?

    public var docSize: Int32?

    public var orderType: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeResource != nil {
            map["computeResource"] = self.computeResource!
        }
        if self.docSize != nil {
            map["docSize"] = self.docSize!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        if self.spec != nil {
            map["spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["computeResource"] as? Int32 {
            self.computeResource = value
        }
        if let value = dict["docSize"] as? Int32 {
            self.docSize = value
        }
        if let value = dict["orderType"] as? String {
            self.orderType = value
        }
        if let value = dict["spec"] as? String {
            self.spec = value
        }
    }
}

public class ScheduledTask : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var days: Int32?

        public var expression: String?

        public var field: String?

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
            if self.days != nil {
                map["days"] = self.days!
            }
            if self.expression != nil {
                map["expression"] = self.expression!
            }
            if self.field != nil {
                map["field"] = self.field!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["days"] as? Int32 {
                self.days = value
            }
            if let value = dict["expression"] as? String {
                self.expression = value
            }
            if let value = dict["field"] as? String {
                self.field = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
            }
        }
    }
    public var autoSwitch: Bool?

    public var cron: String?

    public var enabled: Bool?

    public var filter: ScheduledTask.Filter?

    public var forkedAppId: String?

    public var permanent: Bool?

    public var runNow: Bool?

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
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSwitch != nil {
            map["autoSwitch"] = self.autoSwitch!
        }
        if self.cron != nil {
            map["cron"] = self.cron!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.filter != nil {
            map["filter"] = self.filter?.toMap()
        }
        if self.forkedAppId != nil {
            map["forkedAppId"] = self.forkedAppId!
        }
        if self.permanent != nil {
            map["permanent"] = self.permanent!
        }
        if self.runNow != nil {
            map["runNow"] = self.runNow!
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
        if let value = dict["autoSwitch"] as? Bool {
            self.autoSwitch = value
        }
        if let value = dict["cron"] as? String {
            self.cron = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["filter"] as? [String: Any?] {
            var model = ScheduledTask.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["forkedAppId"] as? String {
            self.forkedAppId = value
        }
        if let value = dict["permanent"] as? Bool {
            self.permanent = value
        }
        if let value = dict["runNow"] as? Bool {
            self.runNow = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class Schema : Tea.TeaModel {
    public class IndexSortConfig : Tea.TeaModel {
        public var direction: String?

        public var field: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["direction"] = self.direction!
            }
            if self.field != nil {
                map["field"] = self.field!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["direction"] as? String {
                self.direction = value
            }
            if let value = dict["field"] as? String {
                self.field = value
            }
        }
    }
    public class Indexes : Tea.TeaModel {
        public var filterFields: [String]?

        public var searchFields: [String: SchemaIndexesSearchFieldsValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterFields != nil {
                map["filterFields"] = self.filterFields!
            }
            if self.searchFields != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.searchFields! {
                    tmp[k] = v.toMap()
                }
                map["searchFields"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["filterFields"] as? [String] {
                self.filterFields = value
            }
            if let value = dict["searchFields"] as? [String: Any?] {
                var tmp : [String: SchemaIndexesSearchFieldsValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = SchemaIndexesSearchFieldsValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.searchFields = tmp
            }
        }
    }
    public class TtlField : Tea.TeaModel {
        public var name: String?

        public var ttl: Int64?

        public override init() {
            super.init()
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
            if self.ttl != nil {
                map["ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["ttl"] as? Int64 {
                self.ttl = value
            }
        }
    }
    public var indexSortConfig: [Schema.IndexSortConfig]?

    public var indexes: Schema.Indexes?

    public var name: String?

    public var routeField: String?

    public var routeFieldValues: [String]?

    public var secondRouteField: String?

    public var tables: [String: SchemaTablesValue]?

    public var ttlField: Schema.TtlField?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.indexes?.validate()
        try self.ttlField?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexSortConfig != nil {
            var tmp : [Any] = []
            for k in self.indexSortConfig! {
                tmp.append(k.toMap())
            }
            map["indexSortConfig"] = tmp
        }
        if self.indexes != nil {
            map["indexes"] = self.indexes?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.routeField != nil {
            map["routeField"] = self.routeField!
        }
        if self.routeFieldValues != nil {
            map["routeFieldValues"] = self.routeFieldValues!
        }
        if self.secondRouteField != nil {
            map["secondRouteField"] = self.secondRouteField!
        }
        if self.tables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.tables! {
                tmp[k] = v.toMap()
            }
            map["tables"] = tmp
        }
        if self.ttlField != nil {
            map["ttlField"] = self.ttlField?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["indexSortConfig"] as? [Any?] {
            var tmp : [Schema.IndexSortConfig] = []
            for v in value {
                if v != nil {
                    var model = Schema.IndexSortConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.indexSortConfig = tmp
        }
        if let value = dict["indexes"] as? [String: Any?] {
            var model = Schema.Indexes()
            model.fromMap(value)
            self.indexes = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["routeField"] as? String {
            self.routeField = value
        }
        if let value = dict["routeFieldValues"] as? [String] {
            self.routeFieldValues = value
        }
        if let value = dict["secondRouteField"] as? String {
            self.secondRouteField = value
        }
        if let value = dict["tables"] as? [String: Any?] {
            var tmp : [String: SchemaTablesValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = SchemaTablesValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.tables = tmp
        }
        if let value = dict["ttlField"] as? [String: Any?] {
            var model = Schema.TtlField()
            model.fromMap(value)
            self.ttlField = model
        }
    }
}

public class SearchStrategy : Tea.TeaModel {
    public class MergeConfig : Tea.TeaModel {
        public var docCount: Int32?

        public var rankName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docCount != nil {
                map["docCount"] = self.docCount!
            }
            if self.rankName != nil {
                map["rankName"] = self.rankName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["docCount"] as? Int32 {
                self.docCount = value
            }
            if let value = dict["rankName"] as? String {
                self.rankName = value
            }
        }
    }
    public class SearchConfigs : Tea.TeaModel {
        public var firstRankName: String?

        public var mergeProportion: Int32?

        public var queryType: String?

        public var secondRankName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firstRankName != nil {
                map["firstRankName"] = self.firstRankName!
            }
            if self.mergeProportion != nil {
                map["mergeProportion"] = self.mergeProportion!
            }
            if self.queryType != nil {
                map["queryType"] = self.queryType!
            }
            if self.secondRankName != nil {
                map["secondRankName"] = self.secondRankName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["firstRankName"] as? String {
                self.firstRankName = value
            }
            if let value = dict["mergeProportion"] as? Int32 {
                self.mergeProportion = value
            }
            if let value = dict["queryType"] as? String {
                self.queryType = value
            }
            if let value = dict["secondRankName"] as? String {
                self.secondRankName = value
            }
        }
    }
    public var description_: String?

    public var isDefault: Bool?

    public var mergeConfig: SearchStrategy.MergeConfig?

    public var name: String?

    public var searchConfigs: [SearchStrategy.SearchConfigs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mergeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.isDefault != nil {
            map["isDefault"] = self.isDefault!
        }
        if self.mergeConfig != nil {
            map["mergeConfig"] = self.mergeConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.searchConfigs != nil {
            var tmp : [Any] = []
            for k in self.searchConfigs! {
                tmp.append(k.toMap())
            }
            map["searchConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["isDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["mergeConfig"] as? [String: Any?] {
            var model = SearchStrategy.MergeConfig()
            model.fromMap(value)
            self.mergeConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["searchConfigs"] as? [Any?] {
            var tmp : [SearchStrategy.SearchConfigs] = []
            for v in value {
                if v != nil {
                    var model = SearchStrategy.SearchConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.searchConfigs = tmp
        }
    }
}

public class SecondRank : Tea.TeaModel {
    public var active: Bool?

    public var description_: String?

    public var meta: Any?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.meta != nil {
            map["meta"] = self.meta!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["active"] as? Bool {
            self.active = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["meta"] as? Any {
            self.meta = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class Summary : Tea.TeaModel {
    public class Meta : Tea.TeaModel {
        public var element: String?

        public var ellipsis: String?

        public var field: String?

        public var len: Int32?

        public var snippet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.element != nil {
                map["element"] = self.element!
            }
            if self.ellipsis != nil {
                map["ellipsis"] = self.ellipsis!
            }
            if self.field != nil {
                map["field"] = self.field!
            }
            if self.len != nil {
                map["len"] = self.len!
            }
            if self.snippet != nil {
                map["snippet"] = self.snippet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["element"] as? String {
                self.element = value
            }
            if let value = dict["ellipsis"] as? String {
                self.ellipsis = value
            }
            if let value = dict["field"] as? String {
                self.field = value
            }
            if let value = dict["len"] as? Int32 {
                self.len = value
            }
            if let value = dict["snippet"] as? String {
                self.snippet = value
            }
        }
    }
    public var active: Bool?

    public var meta: Summary.Meta?

    public var name: String?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.meta != nil {
            map["meta"] = self.meta?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["active"] as? Bool {
            self.active = value
        }
        if let value = dict["meta"] as? [String: Any?] {
            var model = Summary.Meta()
            model.fromMap(value)
            self.meta = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class DataSourcePluginsValue : Tea.TeaModel {
    public var name: String?

    public var fromFields: String?

    public var parameters: [String: String]?

    public override init() {
        super.init()
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
        if self.fromFields != nil {
            map["fromFields"] = self.fromFields!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["fromFields"] as? String {
            self.fromFields = value
        }
        if let value = dict["parameters"] as? [String: String] {
            self.parameters = value
        }
    }
}

public class SchemaIndexesSearchFieldsValue : Tea.TeaModel {
    public var analyzer: String?

    public var analyzerType: String?

    public var analyzerGeneration: String?

    public var fields: [String]?

    public var label: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analyzer != nil {
            map["analyzer"] = self.analyzer!
        }
        if self.analyzerType != nil {
            map["analyzerType"] = self.analyzerType!
        }
        if self.analyzerGeneration != nil {
            map["analyzerGeneration"] = self.analyzerGeneration!
        }
        if self.fields != nil {
            map["fields"] = self.fields!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analyzer"] as? String {
            self.analyzer = value
        }
        if let value = dict["analyzerType"] as? String {
            self.analyzerType = value
        }
        if let value = dict["analyzerGeneration"] as? String {
            self.analyzerGeneration = value
        }
        if let value = dict["fields"] as? [String] {
            self.fields = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
    }
}

public class SchemaTablesValue : Tea.TeaModel {
    public var name: String?

    public var primaryTable: Bool?

    public var fields: [String: SchemaTablesValueFieldsValue]?

    public override init() {
        super.init()
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
        if self.primaryTable != nil {
            map["primaryTable"] = self.primaryTable!
        }
        if self.fields != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.fields! {
                tmp[k] = v.toMap()
            }
            map["fields"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["primaryTable"] as? Bool {
            self.primaryTable = value
        }
        if let value = dict["fields"] as? [String: Any?] {
            var tmp : [String: SchemaTablesValueFieldsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = SchemaTablesValueFieldsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.fields = tmp
        }
    }
}

public class SchemaTablesValueFieldsValue : Tea.TeaModel {
    public var name: String?

    public var primaryKey: Bool?

    public var type: String?

    public var joinWith: [String]?

    public var label: String?

    public override init() {
        super.init()
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
        if self.primaryKey != nil {
            map["primaryKey"] = self.primaryKey!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.joinWith != nil {
            map["joinWith"] = self.joinWith!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["primaryKey"] as? Bool {
            self.primaryKey = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["joinWith"] as? [String] {
            self.joinWith = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
    }
}

public class BindESUserAnalyzerRequest : Tea.TeaModel {
    public var body: Any?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class BindESUserAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class BindESUserAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindESUserAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindESUserAnalyzerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindEsInstanceRequest : Tea.TeaModel {
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
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class BindEsInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class BindEsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindEsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompileSortScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CompileSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompileSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CompileSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateABTestExperimentRequest : Tea.TeaModel {
    public var body: ABTestExperiment?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestExperiment()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateABTestExperimentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var online: Bool?

        public var params: [String: Any]?

        public var traffic: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.online != nil {
                map["online"] = self.online!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.traffic != nil {
                map["traffic"] = self.traffic!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["online"] as? Bool {
                self.online = value
            }
            if let value = dict["params"] as? [String: Any] {
                self.params = value
            }
            if let value = dict["traffic"] as? Int32 {
                self.traffic = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateABTestExperimentResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateABTestExperimentResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateABTestExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateABTestExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateABTestExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateABTestGroupRequest : Tea.TeaModel {
    public var body: ABTestGroup?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestGroup()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateABTestGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateABTestGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateABTestGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateABTestGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateABTestGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateABTestGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateABTestSceneRequest : Tea.TeaModel {
    public var body: ABTestScene?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestScene()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateABTestSceneResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateABTestSceneResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateABTestSceneResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateABTestSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateABTestSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateABTestSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public class Cluster : Tea.TeaModel {
        public var chunkModels: [[String: Any]]?

        public var graphRag: [String: Any]?

        public var imageContentRecognizerModels: [[String: Any]]?

        public var maxQueryClauseLength: Int32?

        public var maxTimeoutMS: Int32?

        public var textEmbeddingModel: String?

        public var textSparseEmbeddingModel: String?

        public var vectorIndexConfigs: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkModels != nil {
                map["chunkModels"] = self.chunkModels!
            }
            if self.graphRag != nil {
                map["graphRag"] = self.graphRag!
            }
            if self.imageContentRecognizerModels != nil {
                map["imageContentRecognizerModels"] = self.imageContentRecognizerModels!
            }
            if self.maxQueryClauseLength != nil {
                map["maxQueryClauseLength"] = self.maxQueryClauseLength!
            }
            if self.maxTimeoutMS != nil {
                map["maxTimeoutMS"] = self.maxTimeoutMS!
            }
            if self.textEmbeddingModel != nil {
                map["textEmbeddingModel"] = self.textEmbeddingModel!
            }
            if self.textSparseEmbeddingModel != nil {
                map["textSparseEmbeddingModel"] = self.textSparseEmbeddingModel!
            }
            if self.vectorIndexConfigs != nil {
                map["vectorIndexConfigs"] = self.vectorIndexConfigs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkModels"] as? [[String: Any]] {
                self.chunkModels = value
            }
            if let value = dict["graphRag"] as? [String: Any] {
                self.graphRag = value
            }
            if let value = dict["imageContentRecognizerModels"] as? [[String: Any]] {
                self.imageContentRecognizerModels = value
            }
            if let value = dict["maxQueryClauseLength"] as? Int32 {
                self.maxQueryClauseLength = value
            }
            if let value = dict["maxTimeoutMS"] as? Int32 {
                self.maxTimeoutMS = value
            }
            if let value = dict["textEmbeddingModel"] as? String {
                self.textEmbeddingModel = value
            }
            if let value = dict["textSparseEmbeddingModel"] as? String {
                self.textSparseEmbeddingModel = value
            }
            if let value = dict["vectorIndexConfigs"] as? [[String: Any]] {
                self.vectorIndexConfigs = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var fields: [[String: Any]]?

        public var keyField: String?

        public var parameters: [String: Any]?

        public var plugins: [String: Any]?

        public var schemaName: String?

        public var tableName: String?

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
            if self.keyField != nil {
                map["keyField"] = self.keyField!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.plugins != nil {
                map["plugins"] = self.plugins!
            }
            if self.schemaName != nil {
                map["schemaName"] = self.schemaName!
            }
            if self.tableName != nil {
                map["tableName"] = self.tableName!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fields"] as? [[String: Any]] {
                self.fields = value
            }
            if let value = dict["keyField"] as? String {
                self.keyField = value
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["plugins"] as? [String: Any] {
                self.plugins = value
            }
            if let value = dict["schemaName"] as? String {
                self.schemaName = value
            }
            if let value = dict["tableName"] as? String {
                self.tableName = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Domain : Tea.TeaModel {
        public var category: String?

        public var functions: [String: Any]?

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
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.functions != nil {
                map["functions"] = self.functions!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["category"] as? String {
                self.category = value
            }
            if let value = dict["functions"] as? [String: Any] {
                self.functions = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class FirstRanks : Tea.TeaModel {
        public var active: Bool?

        public var description_: String?

        public var meta: Any?

        public var name: String?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? Any {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class QueryProcessors : Tea.TeaModel {
        public var active: Bool?

        public var category: String?

        public var domain: String?

        public var indexes: [String]?

        public var name: String?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processors != nil {
                map["processors"] = self.processors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["category"] as? String {
                self.category = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processors"] as? [[String: Any]] {
                self.processors = value
            }
        }
    }
    public class Schema : Tea.TeaModel {
        public class IndexSortConfig : Tea.TeaModel {
            public var direction: String?

            public var field: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.direction != nil {
                    map["direction"] = self.direction!
                }
                if self.field != nil {
                    map["field"] = self.field!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["direction"] as? String {
                    self.direction = value
                }
                if let value = dict["field"] as? String {
                    self.field = value
                }
            }
        }
        public class Indexes : Tea.TeaModel {
            public var filterFields: [String]?

            public var searchFields: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.filterFields != nil {
                    map["filterFields"] = self.filterFields!
                }
                if self.searchFields != nil {
                    map["searchFields"] = self.searchFields!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["filterFields"] as? [String] {
                    self.filterFields = value
                }
                if let value = dict["searchFields"] as? [String: Any] {
                    self.searchFields = value
                }
            }
        }
        public class TtlField : Tea.TeaModel {
            public var name: String?

            public var ttl: Int64?

            public override init() {
                super.init()
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
                if self.ttl != nil {
                    map["ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["ttl"] as? Int64 {
                    self.ttl = value
                }
            }
        }
        public var indexSortConfig: [CreateAppRequest.Schema.IndexSortConfig]?

        public var indexes: CreateAppRequest.Schema.Indexes?

        public var name: String?

        public var routeField: String?

        public var routeFieldValues: [String]?

        public var secondRouteField: String?

        public var tables: [String: Any]?

        public var ttlField: CreateAppRequest.Schema.TtlField?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.indexes?.validate()
            try self.ttlField?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexSortConfig != nil {
                var tmp : [Any] = []
                for k in self.indexSortConfig! {
                    tmp.append(k.toMap())
                }
                map["indexSortConfig"] = tmp
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.routeField != nil {
                map["routeField"] = self.routeField!
            }
            if self.routeFieldValues != nil {
                map["routeFieldValues"] = self.routeFieldValues!
            }
            if self.secondRouteField != nil {
                map["secondRouteField"] = self.secondRouteField!
            }
            if self.tables != nil {
                map["tables"] = self.tables!
            }
            if self.ttlField != nil {
                map["ttlField"] = self.ttlField?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["indexSortConfig"] as? [Any?] {
                var tmp : [CreateAppRequest.Schema.IndexSortConfig] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppRequest.Schema.IndexSortConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.indexSortConfig = tmp
            }
            if let value = dict["indexes"] as? [String: Any?] {
                var model = CreateAppRequest.Schema.Indexes()
                model.fromMap(value)
                self.indexes = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["routeField"] as? String {
                self.routeField = value
            }
            if let value = dict["routeFieldValues"] as? [String] {
                self.routeFieldValues = value
            }
            if let value = dict["secondRouteField"] as? String {
                self.secondRouteField = value
            }
            if let value = dict["tables"] as? [String: Any] {
                self.tables = value
            }
            if let value = dict["ttlField"] as? [String: Any?] {
                var model = CreateAppRequest.Schema.TtlField()
                model.fromMap(value)
                self.ttlField = model
            }
        }
    }
    public class Schemas : Tea.TeaModel {
        public class IndexSortConfig : Tea.TeaModel {
            public var direction: String?

            public var field: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.direction != nil {
                    map["direction"] = self.direction!
                }
                if self.field != nil {
                    map["field"] = self.field!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["direction"] as? String {
                    self.direction = value
                }
                if let value = dict["field"] as? String {
                    self.field = value
                }
            }
        }
        public class Indexes : Tea.TeaModel {
            public var filterFields: [String]?

            public var searchFields: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.filterFields != nil {
                    map["filterFields"] = self.filterFields!
                }
                if self.searchFields != nil {
                    map["searchFields"] = self.searchFields!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["filterFields"] as? [String] {
                    self.filterFields = value
                }
                if let value = dict["searchFields"] as? [String: Any] {
                    self.searchFields = value
                }
            }
        }
        public class TtlField : Tea.TeaModel {
            public var name: String?

            public var ttl: Int64?

            public override init() {
                super.init()
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
                if self.ttl != nil {
                    map["ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["ttl"] as? Int64 {
                    self.ttl = value
                }
            }
        }
        public var indexSortConfig: [CreateAppRequest.Schemas.IndexSortConfig]?

        public var indexes: CreateAppRequest.Schemas.Indexes?

        public var name: String?

        public var routeField: String?

        public var routeFieldValues: [String]?

        public var secondRouteField: String?

        public var tables: [String: Any]?

        public var ttlField: CreateAppRequest.Schemas.TtlField?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.indexes?.validate()
            try self.ttlField?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexSortConfig != nil {
                var tmp : [Any] = []
                for k in self.indexSortConfig! {
                    tmp.append(k.toMap())
                }
                map["indexSortConfig"] = tmp
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.routeField != nil {
                map["routeField"] = self.routeField!
            }
            if self.routeFieldValues != nil {
                map["routeFieldValues"] = self.routeFieldValues!
            }
            if self.secondRouteField != nil {
                map["secondRouteField"] = self.secondRouteField!
            }
            if self.tables != nil {
                map["tables"] = self.tables!
            }
            if self.ttlField != nil {
                map["ttlField"] = self.ttlField?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["indexSortConfig"] as? [Any?] {
                var tmp : [CreateAppRequest.Schemas.IndexSortConfig] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppRequest.Schemas.IndexSortConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.indexSortConfig = tmp
            }
            if let value = dict["indexes"] as? [String: Any?] {
                var model = CreateAppRequest.Schemas.Indexes()
                model.fromMap(value)
                self.indexes = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["routeField"] as? String {
                self.routeField = value
            }
            if let value = dict["routeFieldValues"] as? [String] {
                self.routeFieldValues = value
            }
            if let value = dict["secondRouteField"] as? String {
                self.secondRouteField = value
            }
            if let value = dict["tables"] as? [String: Any] {
                self.tables = value
            }
            if let value = dict["ttlField"] as? [String: Any?] {
                var model = CreateAppRequest.Schemas.TtlField()
                model.fromMap(value)
                self.ttlField = model
            }
        }
    }
    public class SecondRanks : Tea.TeaModel {
        public var active: Bool?

        public var description_: String?

        public var meta: Any?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? Any {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class Summaries : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var element: String?

            public var ellipsis: String?

            public var field: String?

            public var len: Int32?

            public var snippet: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.element != nil {
                    map["element"] = self.element!
                }
                if self.ellipsis != nil {
                    map["ellipsis"] = self.ellipsis!
                }
                if self.field != nil {
                    map["field"] = self.field!
                }
                if self.len != nil {
                    map["len"] = self.len!
                }
                if self.snippet != nil {
                    map["snippet"] = self.snippet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["element"] as? String {
                    self.element = value
                }
                if let value = dict["ellipsis"] as? String {
                    self.ellipsis = value
                }
                if let value = dict["field"] as? String {
                    self.field = value
                }
                if let value = dict["len"] as? Int32 {
                    self.len = value
                }
                if let value = dict["snippet"] as? String {
                    self.snippet = value
                }
            }
        }
        public var meta: [CreateAppRequest.Summaries.Meta]?

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
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [CreateAppRequest.Summaries.Meta] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppRequest.Summaries.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var autoSwitch: Bool?

    public var cluster: CreateAppRequest.Cluster?

    public var configItems: [[String: Any]]?

    public var dataSources: [CreateAppRequest.DataSources]?

    public var description_: String?

    public var domain: CreateAppRequest.Domain?

    public var fetchFields: [String]?

    public var firstRanks: [CreateAppRequest.FirstRanks]?

    public var interpretations: [[String: Any]]?

    public var networkType: String?

    public var prompts: [[String: Any]]?

    public var queryProcessors: [CreateAppRequest.QueryProcessors]?

    public var realtimeShared: Bool?

    public var schema: CreateAppRequest.Schema?

    public var schemas: [CreateAppRequest.Schemas]?

    public var secondRanks: [CreateAppRequest.SecondRanks]?

    public var summaries: [CreateAppRequest.Summaries]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cluster?.validate()
        try self.domain?.validate()
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSwitch != nil {
            map["autoSwitch"] = self.autoSwitch!
        }
        if self.cluster != nil {
            map["cluster"] = self.cluster?.toMap()
        }
        if self.configItems != nil {
            map["configItems"] = self.configItems!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["dataSources"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domain != nil {
            map["domain"] = self.domain?.toMap()
        }
        if self.fetchFields != nil {
            map["fetchFields"] = self.fetchFields!
        }
        if self.firstRanks != nil {
            var tmp : [Any] = []
            for k in self.firstRanks! {
                tmp.append(k.toMap())
            }
            map["firstRanks"] = tmp
        }
        if self.interpretations != nil {
            map["interpretations"] = self.interpretations!
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        if self.prompts != nil {
            map["prompts"] = self.prompts!
        }
        if self.queryProcessors != nil {
            var tmp : [Any] = []
            for k in self.queryProcessors! {
                tmp.append(k.toMap())
            }
            map["queryProcessors"] = tmp
        }
        if self.realtimeShared != nil {
            map["realtimeShared"] = self.realtimeShared!
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["schemas"] = tmp
        }
        if self.secondRanks != nil {
            var tmp : [Any] = []
            for k in self.secondRanks! {
                tmp.append(k.toMap())
            }
            map["secondRanks"] = tmp
        }
        if self.summaries != nil {
            var tmp : [Any] = []
            for k in self.summaries! {
                tmp.append(k.toMap())
            }
            map["summaries"] = tmp
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSwitch"] as? Bool {
            self.autoSwitch = value
        }
        if let value = dict["cluster"] as? [String: Any?] {
            var model = CreateAppRequest.Cluster()
            model.fromMap(value)
            self.cluster = model
        }
        if let value = dict["configItems"] as? [[String: Any]] {
            self.configItems = value
        }
        if let value = dict["dataSources"] as? [Any?] {
            var tmp : [CreateAppRequest.DataSources] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domain"] as? [String: Any?] {
            var model = CreateAppRequest.Domain()
            model.fromMap(value)
            self.domain = model
        }
        if let value = dict["fetchFields"] as? [String] {
            self.fetchFields = value
        }
        if let value = dict["firstRanks"] as? [Any?] {
            var tmp : [CreateAppRequest.FirstRanks] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.FirstRanks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firstRanks = tmp
        }
        if let value = dict["interpretations"] as? [[String: Any]] {
            self.interpretations = value
        }
        if let value = dict["networkType"] as? String {
            self.networkType = value
        }
        if let value = dict["prompts"] as? [[String: Any]] {
            self.prompts = value
        }
        if let value = dict["queryProcessors"] as? [Any?] {
            var tmp : [CreateAppRequest.QueryProcessors] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.QueryProcessors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryProcessors = tmp
        }
        if let value = dict["realtimeShared"] as? Bool {
            self.realtimeShared = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = CreateAppRequest.Schema()
            model.fromMap(value)
            self.schema = model
        }
        if let value = dict["schemas"] as? [Any?] {
            var tmp : [CreateAppRequest.Schemas] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.Schemas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schemas = tmp
        }
        if let value = dict["secondRanks"] as? [Any?] {
            var tmp : [CreateAppRequest.SecondRanks] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.SecondRanks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.secondRanks = tmp
        }
        if let value = dict["summaries"] as? [Any?] {
            var tmp : [CreateAppRequest.Summaries] = []
            for v in value {
                if v != nil {
                    var model = CreateAppRequest.Summaries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.summaries = tmp
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var chunkModels: [[String: Any]]?

            public var graphRag: [String: Any]?

            public var imageContentRecognizerModels: [[String: Any]]?

            public var maxQueryClauseLength: Int32?

            public var maxTimeoutMS: Int32?

            public var textEmbeddingModel: String?

            public var textSparseEmbeddingModel: String?

            public var vectorIndexConfigs: [[String: Any]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkModels != nil {
                    map["chunkModels"] = self.chunkModels!
                }
                if self.graphRag != nil {
                    map["graphRag"] = self.graphRag!
                }
                if self.imageContentRecognizerModels != nil {
                    map["imageContentRecognizerModels"] = self.imageContentRecognizerModels!
                }
                if self.maxQueryClauseLength != nil {
                    map["maxQueryClauseLength"] = self.maxQueryClauseLength!
                }
                if self.maxTimeoutMS != nil {
                    map["maxTimeoutMS"] = self.maxTimeoutMS!
                }
                if self.textEmbeddingModel != nil {
                    map["textEmbeddingModel"] = self.textEmbeddingModel!
                }
                if self.textSparseEmbeddingModel != nil {
                    map["textSparseEmbeddingModel"] = self.textSparseEmbeddingModel!
                }
                if self.vectorIndexConfigs != nil {
                    map["vectorIndexConfigs"] = self.vectorIndexConfigs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkModels"] as? [[String: Any]] {
                    self.chunkModels = value
                }
                if let value = dict["graphRag"] as? [String: Any] {
                    self.graphRag = value
                }
                if let value = dict["imageContentRecognizerModels"] as? [[String: Any]] {
                    self.imageContentRecognizerModels = value
                }
                if let value = dict["maxQueryClauseLength"] as? Int32 {
                    self.maxQueryClauseLength = value
                }
                if let value = dict["maxTimeoutMS"] as? Int32 {
                    self.maxTimeoutMS = value
                }
                if let value = dict["textEmbeddingModel"] as? String {
                    self.textEmbeddingModel = value
                }
                if let value = dict["textSparseEmbeddingModel"] as? String {
                    self.textSparseEmbeddingModel = value
                }
                if let value = dict["vectorIndexConfigs"] as? [[String: Any]] {
                    self.vectorIndexConfigs = value
                }
            }
        }
        public class DataSources : Tea.TeaModel {
            public var fields: [[String: Any]]?

            public var keyField: String?

            public var parameters: [String: Any]?

            public var plugins: [String: Any]?

            public var schemaName: String?

            public var tableName: String?

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
                if self.keyField != nil {
                    map["keyField"] = self.keyField!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.plugins != nil {
                    map["plugins"] = self.plugins!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fields"] as? [[String: Any]] {
                    self.fields = value
                }
                if let value = dict["keyField"] as? String {
                    self.keyField = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["plugins"] as? [String: Any] {
                    self.plugins = value
                }
                if let value = dict["schemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Domain : Tea.TeaModel {
            public class Functions : Tea.TeaModel {
                public var algo: [String]?

                public var qp: [String]?

                public var service: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.algo != nil {
                        map["algo"] = self.algo!
                    }
                    if self.qp != nil {
                        map["qp"] = self.qp!
                    }
                    if self.service != nil {
                        map["service"] = self.service!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["algo"] as? [String] {
                        self.algo = value
                    }
                    if let value = dict["qp"] as? [String] {
                        self.qp = value
                    }
                    if let value = dict["service"] as? [String] {
                        self.service = value
                    }
                }
            }
            public var category: String?

            public var functions: CreateAppResponseBody.Result.Domain.Functions?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.functions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.functions != nil {
                    map["functions"] = self.functions?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["functions"] as? [String: Any?] {
                    var model = CreateAppResponseBody.Result.Domain.Functions()
                    model.fromMap(value)
                    self.functions = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class FirstRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class QueryProcessors : Tea.TeaModel {
            public var active: Bool?

            public var category: String?

            public var domain: String?

            public var indexes: [String]?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processors != nil {
                    map["processors"] = self.processors!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["indexes"] as? [String] {
                    self.indexes = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["processors"] as? [[String: Any]] {
                    self.processors = value
                }
            }
        }
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var qps: Int32?

            public var spec: String?

            public var usedComputeResource: Int32?

            public var usedDocSize: Double?

            public var usedQps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.qps != nil {
                    map["qps"] = self.qps!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                if self.usedComputeResource != nil {
                    map["usedComputeResource"] = self.usedComputeResource!
                }
                if self.usedDocSize != nil {
                    map["usedDocSize"] = self.usedDocSize!
                }
                if self.usedQps != nil {
                    map["usedQps"] = self.usedQps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["qps"] as? Int32 {
                    self.qps = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
                if let value = dict["usedComputeResource"] as? Int32 {
                    self.usedComputeResource = value
                }
                if let value = dict["usedDocSize"] as? Double {
                    self.usedDocSize = value
                }
                if let value = dict["usedQps"] as? Int32 {
                    self.usedQps = value
                }
            }
        }
        public class Schema : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [CreateAppResponseBody.Result.Schema.IndexSortConfig]?

            public var indexes: CreateAppResponseBody.Result.Schema.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: CreateAppResponseBody.Result.Schema.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [CreateAppResponseBody.Result.Schema.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = CreateAppResponseBody.Result.Schema.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = CreateAppResponseBody.Result.Schema.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = CreateAppResponseBody.Result.Schema.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class Schemas : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [CreateAppResponseBody.Result.Schemas.IndexSortConfig]?

            public var indexes: CreateAppResponseBody.Result.Schemas.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: CreateAppResponseBody.Result.Schemas.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [CreateAppResponseBody.Result.Schemas.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = CreateAppResponseBody.Result.Schemas.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = CreateAppResponseBody.Result.Schemas.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = CreateAppResponseBody.Result.Schemas.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class SecondRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Summaries : Tea.TeaModel {
            public class Meta : Tea.TeaModel {
                public var element: String?

                public var ellipsis: String?

                public var field: String?

                public var len: Int32?

                public var snippet: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.element != nil {
                        map["element"] = self.element!
                    }
                    if self.ellipsis != nil {
                        map["ellipsis"] = self.ellipsis!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    if self.len != nil {
                        map["len"] = self.len!
                    }
                    if self.snippet != nil {
                        map["snippet"] = self.snippet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["element"] as? String {
                        self.element = value
                    }
                    if let value = dict["ellipsis"] as? String {
                        self.ellipsis = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                    if let value = dict["len"] as? Int32 {
                        self.len = value
                    }
                    if let value = dict["snippet"] as? String {
                        self.snippet = value
                    }
                }
            }
            public var meta: [CreateAppResponseBody.Result.Summaries.Meta]?

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
                if self.meta != nil {
                    var tmp : [Any] = []
                    for k in self.meta! {
                        tmp.append(k.toMap())
                    }
                    map["meta"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["meta"] as? [Any?] {
                    var tmp : [CreateAppResponseBody.Result.Summaries.Meta] = []
                    for v in value {
                        if v != nil {
                            var model = CreateAppResponseBody.Result.Summaries.Meta()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meta = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var cluster: CreateAppResponseBody.Result.Cluster?

        public var clusterName: String?

        public var configItems: [[String: Any]]?

        public var created: Int64?

        public var dataSources: [CreateAppResponseBody.Result.DataSources]?

        public var description_: String?

        public var domain: CreateAppResponseBody.Result.Domain?

        public var fetchFields: [String]?

        public var firstRanks: [CreateAppResponseBody.Result.FirstRanks]?

        public var id: String?

        public var interpretations: [[String: Any]]?

        public var isCurrent: Bool?

        public var progressPercent: Int32?

        public var prompts: [[String: Any]]?

        public var queryProcessors: [CreateAppResponseBody.Result.QueryProcessors]?

        public var quota: CreateAppResponseBody.Result.Quota?

        public var schema: CreateAppResponseBody.Result.Schema?

        public var schemas: [CreateAppResponseBody.Result.Schemas]?

        public var secondRanks: [CreateAppResponseBody.Result.SecondRanks]?

        public var status: String?

        public var summaries: [CreateAppResponseBody.Result.Summaries]?

        public var switchTime: Int64?

        public var type: String?

        public var updated: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cluster?.validate()
            try self.domain?.validate()
            try self.quota?.validate()
            try self.schema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                map["cluster"] = self.cluster?.toMap()
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.configItems != nil {
                map["configItems"] = self.configItems!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dataSources != nil {
                var tmp : [Any] = []
                for k in self.dataSources! {
                    tmp.append(k.toMap())
                }
                map["dataSources"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain?.toMap()
            }
            if self.fetchFields != nil {
                map["fetchFields"] = self.fetchFields!
            }
            if self.firstRanks != nil {
                var tmp : [Any] = []
                for k in self.firstRanks! {
                    tmp.append(k.toMap())
                }
                map["firstRanks"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.interpretations != nil {
                map["interpretations"] = self.interpretations!
            }
            if self.isCurrent != nil {
                map["isCurrent"] = self.isCurrent!
            }
            if self.progressPercent != nil {
                map["progressPercent"] = self.progressPercent!
            }
            if self.prompts != nil {
                map["prompts"] = self.prompts!
            }
            if self.queryProcessors != nil {
                var tmp : [Any] = []
                for k in self.queryProcessors! {
                    tmp.append(k.toMap())
                }
                map["queryProcessors"] = tmp
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.schema != nil {
                map["schema"] = self.schema?.toMap()
            }
            if self.schemas != nil {
                var tmp : [Any] = []
                for k in self.schemas! {
                    tmp.append(k.toMap())
                }
                map["schemas"] = tmp
            }
            if self.secondRanks != nil {
                var tmp : [Any] = []
                for k in self.secondRanks! {
                    tmp.append(k.toMap())
                }
                map["secondRanks"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.summaries != nil {
                var tmp : [Any] = []
                for k in self.summaries! {
                    tmp.append(k.toMap())
                }
                map["summaries"] = tmp
            }
            if self.switchTime != nil {
                map["switchTime"] = self.switchTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster"] as? [String: Any?] {
                var model = CreateAppResponseBody.Result.Cluster()
                model.fromMap(value)
                self.cluster = model
            }
            if let value = dict["clusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["configItems"] as? [[String: Any]] {
                self.configItems = value
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["dataSources"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.DataSources] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.DataSources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSources = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? [String: Any?] {
                var model = CreateAppResponseBody.Result.Domain()
                model.fromMap(value)
                self.domain = model
            }
            if let value = dict["fetchFields"] as? [String] {
                self.fetchFields = value
            }
            if let value = dict["firstRanks"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.FirstRanks] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.FirstRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.firstRanks = tmp
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["interpretations"] as? [[String: Any]] {
                self.interpretations = value
            }
            if let value = dict["isCurrent"] as? Bool {
                self.isCurrent = value
            }
            if let value = dict["progressPercent"] as? Int32 {
                self.progressPercent = value
            }
            if let value = dict["prompts"] as? [[String: Any]] {
                self.prompts = value
            }
            if let value = dict["queryProcessors"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.QueryProcessors] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.QueryProcessors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryProcessors = tmp
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = CreateAppResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["schema"] as? [String: Any?] {
                var model = CreateAppResponseBody.Result.Schema()
                model.fromMap(value)
                self.schema = model
            }
            if let value = dict["schemas"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.Schemas] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.Schemas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schemas = tmp
            }
            if let value = dict["secondRanks"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.SecondRanks] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.SecondRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.secondRanks = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["summaries"] as? [Any?] {
                var tmp : [CreateAppResponseBody.Result.Summaries] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppResponseBody.Result.Summaries()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.summaries = tmp
            }
            if let value = dict["switchTime"] as? Int64 {
                self.switchTime = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateAppResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateAppResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppGroupRequest : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var computeResource: Int32?

        public var docSize: Int32?

        public var spec: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeResource != nil {
                map["computeResource"] = self.computeResource!
            }
            if self.docSize != nil {
                map["docSize"] = self.docSize!
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["computeResource"] as? Int32 {
                self.computeResource = value
            }
            if let value = dict["docSize"] as? Int32 {
                self.docSize = value
            }
            if let value = dict["spec"] as? String {
                self.spec = value
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
    public var chargeType: String?

    public var name: String?

    public var quota: CreateAppGroupRequest.Quota?

    public var resourceGroupId: String?

    public var tags: [CreateAppGroupRequest.Tags]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = CreateAppGroupRequest.Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateAppGroupRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateAppGroupRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateAppGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

        public var engineType: String?

        public var expireOn: String?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var name: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: CreateAppGroupResponseBody.Result.Quota?

        public var status: String?

        public var switchedTime: Int32?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = CreateAppGroupResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateAppGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateAppGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppGroupCredentialsRequest : Tea.TeaModel {
    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateAppGroupCredentialsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int64?

        public var enabled: Bool?

        public var token: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
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
            if let value = dict["appGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateAppGroupCredentialsResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateAppGroupCredentialsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateAppGroupCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppGroupCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppGroupCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFirstRankRequest : Tea.TeaModel {
    public var body: FirstRank?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = FirstRank()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateFirstRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var arg: String?

            public var attribute: String?

            public var weight: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arg != nil {
                    map["arg"] = self.arg!
                }
                if self.attribute != nil {
                    map["attribute"] = self.attribute!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["arg"] as? String {
                    self.arg = value
                }
                if let value = dict["attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["weight"] as? Double {
                    self.weight = value
                }
            }
        }
        public var active: Bool?

        public var meta: [CreateFirstRankResponseBody.Result.Meta]?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [CreateFirstRankResponseBody.Result.Meta] = []
                for v in value {
                    if v != nil {
                        var model = CreateFirstRankResponseBody.Result.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateFirstRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateFirstRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateFirstRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFirstRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFirstRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionInstanceRequest : Tea.TeaModel {
    public class CreateParameters : Tea.TeaModel {
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
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class UsageParameters : Tea.TeaModel {
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
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var createParameters: [CreateFunctionInstanceRequest.CreateParameters]?

    public var cron: String?

    public var description_: String?

    public var functionType: String?

    public var instanceName: String?

    public var modelType: String?

    public var usageParameters: [CreateFunctionInstanceRequest.UsageParameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createParameters != nil {
            var tmp : [Any] = []
            for k in self.createParameters! {
                tmp.append(k.toMap())
            }
            map["createParameters"] = tmp
        }
        if self.cron != nil {
            map["cron"] = self.cron!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.usageParameters != nil {
            var tmp : [Any] = []
            for k in self.usageParameters! {
                tmp.append(k.toMap())
            }
            map["usageParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createParameters"] as? [Any?] {
            var tmp : [CreateFunctionInstanceRequest.CreateParameters] = []
            for v in value {
                if v != nil {
                    var model = CreateFunctionInstanceRequest.CreateParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.createParameters = tmp
        }
        if let value = dict["cron"] as? String {
            self.cron = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["usageParameters"] as? [Any?] {
            var tmp : [CreateFunctionInstanceRequest.UsageParameters] = []
            for v in value {
                if v != nil {
                    var model = CreateFunctionInstanceRequest.UsageParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.usageParameters = tmp
        }
    }
}

public class CreateFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionResourceRequest : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Generators : Tea.TeaModel {
            public class Input : Tea.TeaModel {
                public class Features : Tea.TeaModel {
                    public var name: String?

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
                            map["Name"] = self.name!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var features: [CreateFunctionResourceRequest.Data.Generators.Input.Features]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.features != nil {
                        var tmp : [Any] = []
                        for k in self.features! {
                            tmp.append(k.toMap())
                        }
                        map["Features"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Features"] as? [Any?] {
                        var tmp : [CreateFunctionResourceRequest.Data.Generators.Input.Features] = []
                        for v in value {
                            if v != nil {
                                var model = CreateFunctionResourceRequest.Data.Generators.Input.Features()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.features = tmp
                    }
                }
            }
            public var generator: String?

            public var input: CreateFunctionResourceRequest.Data.Generators.Input?

            public var output: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.input?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.generator != nil {
                    map["Generator"] = self.generator!
                }
                if self.input != nil {
                    map["Input"] = self.input?.toMap()
                }
                if self.output != nil {
                    map["Output"] = self.output!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Generator"] as? String {
                    self.generator = value
                }
                if let value = dict["Input"] as? [String: Any?] {
                    var model = CreateFunctionResourceRequest.Data.Generators.Input()
                    model.fromMap(value)
                    self.input = model
                }
                if let value = dict["Output"] as? String {
                    self.output = value
                }
            }
        }
        public var content: String?

        public var generators: [CreateFunctionResourceRequest.Data.Generators]?

        public override init() {
            super.init()
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
            if self.generators != nil {
                var tmp : [Any] = []
                for k in self.generators! {
                    tmp.append(k.toMap())
                }
                map["Generators"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Generators"] as? [Any?] {
                var tmp : [CreateFunctionResourceRequest.Data.Generators] = []
                for v in value {
                    if v != nil {
                        var model = CreateFunctionResourceRequest.Data.Generators()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.generators = tmp
            }
        }
    }
    public var data: CreateFunctionResourceRequest.Data?

    public var description_: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateFunctionResourceRequest.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class CreateFunctionResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Double {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateFunctionResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFunctionResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateFunctionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFunctionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInterventionDictionaryRequest : Tea.TeaModel {
    public var analyzerType: String?

    public var name: String?

    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analyzerType != nil {
            map["analyzerType"] = self.analyzerType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analyzerType"] as? String {
            self.analyzerType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateInterventionDictionaryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var analyzer: String?

        public var created: String?

        public var name: String?

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
            if self.analyzer != nil {
                map["analyzer"] = self.analyzer!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analyzer"] as? String {
                self.analyzer = value
            }
            if let value = dict["created"] as? String {
                self.created = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? String {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateInterventionDictionaryResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateInterventionDictionaryResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateInterventionDictionaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInterventionDictionaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInterventionDictionaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQueryProcessorRequest : Tea.TeaModel {
    public var body: Any?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Any {
            self.body = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateQueryProcessorResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var domain: String?

        public var indexes: [String]?

        public var name: String?

        public var processors: [[String: Any]]?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processors != nil {
                map["processors"] = self.processors!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processors"] as? [[String: Any]] {
                self.processors = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateQueryProcessorResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateQueryProcessorResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateQueryProcessorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQueryProcessorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQueryProcessorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledTaskRequest : Tea.TeaModel {
    public var body: ScheduledTask?

    public override init() {
        super.init()
    }

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
            var model = ScheduledTask()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class CreateScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSearchStrategyRequest : Tea.TeaModel {
    public var body: SearchStrategy?

    public override init() {
        super.init()
    }

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
            var model = SearchStrategy()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSearchStrategyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateSearchStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSearchStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSearchStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSecondRankRequest : Tea.TeaModel {
    public var body: SecondRank?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SecondRank()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateSecondRankResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class CreateSecondRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecondRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSecondRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSortScriptRequest : Tea.TeaModel {
    public var scope: String?

    public var scriptName: String?

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
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.scriptName != nil {
            map["scriptName"] = self.scriptName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["scriptName"] as? String {
            self.scriptName = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateSortScriptResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var scope: String?

        public var scriptName: String?

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
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scope"] as? String {
                self.scope = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: CreateSortScriptResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateSortScriptResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserAnalyzerRequest : Tea.TeaModel {
    public var business: String?

    public var businessAppGroupId: String?

    public var businessType: String?

    public var name: String?

    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.business != nil {
            map["business"] = self.business!
        }
        if self.businessAppGroupId != nil {
            map["businessAppGroupId"] = self.businessAppGroupId!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["business"] as? String {
            self.business = value
        }
        if let value = dict["businessAppGroupId"] as? String {
            self.businessAppGroupId = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class CreateUserAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class CreateUserAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserAnalyzerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteABTestExperimentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DeleteABTestExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteABTestExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteABTestExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteABTestGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DeleteABTestGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteABTestGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteABTestGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteABTestSceneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DeleteABTestSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteABTestSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteABTestSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DeleteFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFunctionResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Double {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DeleteFunctionResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFunctionResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFunctionTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DeleteFunctionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFunctionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSortScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSortScriptFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteSortScriptFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSortScriptFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSortScriptFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeABTestExperimentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Params : Tea.TeaModel {
            public var firstFormulaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firstFormulaName != nil {
                    map["first_formula_name"] = self.firstFormulaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["first_formula_name"] as? String {
                    self.firstFormulaName = value
                }
            }
        }
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var online: Bool?

        public var params: DescribeABTestExperimentResponseBody.Result.Params?

        public var traffic: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.params?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.online != nil {
                map["online"] = self.online!
            }
            if self.params != nil {
                map["params"] = self.params?.toMap()
            }
            if self.traffic != nil {
                map["traffic"] = self.traffic!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["online"] as? Bool {
                self.online = value
            }
            if let value = dict["params"] as? [String: Any?] {
                var model = DescribeABTestExperimentResponseBody.Result.Params()
                model.fromMap(value)
                self.params = model
            }
            if let value = dict["traffic"] as? Int32 {
                self.traffic = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeABTestExperimentResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeABTestExperimentResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeABTestExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeABTestExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeABTestExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeABTestGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeABTestGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeABTestGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeABTestGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeABTestGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeABTestGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeABTestSceneResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeABTestSceneResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeABTestSceneResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeABTestSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeABTestSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeABTestSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var maxQueryClauseLength: Int32?

            public var maxTimeoutMS: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxQueryClauseLength != nil {
                    map["maxQueryClauseLength"] = self.maxQueryClauseLength!
                }
                if self.maxTimeoutMS != nil {
                    map["maxTimeoutMS"] = self.maxTimeoutMS!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["maxQueryClauseLength"] as? Int32 {
                    self.maxQueryClauseLength = value
                }
                if let value = dict["maxTimeoutMS"] as? Int32 {
                    self.maxTimeoutMS = value
                }
            }
        }
        public class DataSources : Tea.TeaModel {
            public var fields: [[String: Any]]?

            public var keyField: String?

            public var parameters: [String: Any]?

            public var plugins: [String: Any]?

            public var schemaName: String?

            public var tableName: String?

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
                if self.keyField != nil {
                    map["keyField"] = self.keyField!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.plugins != nil {
                    map["plugins"] = self.plugins!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fields"] as? [[String: Any]] {
                    self.fields = value
                }
                if let value = dict["keyField"] as? String {
                    self.keyField = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["plugins"] as? [String: Any] {
                    self.plugins = value
                }
                if let value = dict["schemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Domain : Tea.TeaModel {
            public class Functions : Tea.TeaModel {
                public var algo: [String]?

                public var qp: [String]?

                public var service: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.algo != nil {
                        map["algo"] = self.algo!
                    }
                    if self.qp != nil {
                        map["qp"] = self.qp!
                    }
                    if self.service != nil {
                        map["service"] = self.service!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["algo"] as? [String] {
                        self.algo = value
                    }
                    if let value = dict["qp"] as? [String] {
                        self.qp = value
                    }
                    if let value = dict["service"] as? [String] {
                        self.service = value
                    }
                }
            }
            public var category: String?

            public var functions: DescribeAppResponseBody.Result.Domain.Functions?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.functions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.functions != nil {
                    map["functions"] = self.functions?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["functions"] as? [String: Any?] {
                    var model = DescribeAppResponseBody.Result.Domain.Functions()
                    model.fromMap(value)
                    self.functions = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class FirstRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class QueryProcessors : Tea.TeaModel {
            public var active: Bool?

            public var category: String?

            public var domain: String?

            public var indexes: [String]?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processors != nil {
                    map["processors"] = self.processors!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["indexes"] as? [String] {
                    self.indexes = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["processors"] as? [[String: Any]] {
                    self.processors = value
                }
            }
        }
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var qps: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.qps != nil {
                    map["qps"] = self.qps!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["qps"] as? Int32 {
                    self.qps = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Schema : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [DescribeAppResponseBody.Result.Schema.IndexSortConfig]?

            public var indexes: DescribeAppResponseBody.Result.Schema.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: DescribeAppResponseBody.Result.Schema.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [DescribeAppResponseBody.Result.Schema.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppResponseBody.Result.Schema.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = DescribeAppResponseBody.Result.Schema.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = DescribeAppResponseBody.Result.Schema.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class Schemas : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [DescribeAppResponseBody.Result.Schemas.IndexSortConfig]?

            public var indexes: DescribeAppResponseBody.Result.Schemas.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: DescribeAppResponseBody.Result.Schemas.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [DescribeAppResponseBody.Result.Schemas.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppResponseBody.Result.Schemas.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = DescribeAppResponseBody.Result.Schemas.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = DescribeAppResponseBody.Result.Schemas.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class SecondRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Summaries : Tea.TeaModel {
            public class Meta : Tea.TeaModel {
                public var element: String?

                public var ellipsis: String?

                public var field: String?

                public var len: Int32?

                public var snippet: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.element != nil {
                        map["element"] = self.element!
                    }
                    if self.ellipsis != nil {
                        map["ellipsis"] = self.ellipsis!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    if self.len != nil {
                        map["len"] = self.len!
                    }
                    if self.snippet != nil {
                        map["snippet"] = self.snippet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["element"] as? String {
                        self.element = value
                    }
                    if let value = dict["ellipsis"] as? String {
                        self.ellipsis = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                    if let value = dict["len"] as? Int32 {
                        self.len = value
                    }
                    if let value = dict["snippet"] as? String {
                        self.snippet = value
                    }
                }
            }
            public var meta: [DescribeAppResponseBody.Result.Summaries.Meta]?

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
                if self.meta != nil {
                    var tmp : [Any] = []
                    for k in self.meta! {
                        tmp.append(k.toMap())
                    }
                    map["meta"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["meta"] as? [Any?] {
                    var tmp : [DescribeAppResponseBody.Result.Summaries.Meta] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppResponseBody.Result.Summaries.Meta()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meta = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var autoSwitch: Bool?

        public var cluster: DescribeAppResponseBody.Result.Cluster?

        public var clusterName: String?

        public var dataSources: [DescribeAppResponseBody.Result.DataSources]?

        public var description_: String?

        public var domain: DescribeAppResponseBody.Result.Domain?

        public var fetchFields: [String]?

        public var firstRanks: [DescribeAppResponseBody.Result.FirstRanks]?

        public var id: String?

        public var interpretations: [String: Any]?

        public var isCurrent: Bool?

        public var progressPercent: Int32?

        public var prompts: [[String: Any]]?

        public var queryProcessors: [DescribeAppResponseBody.Result.QueryProcessors]?

        public var quota: DescribeAppResponseBody.Result.Quota?

        public var schema: DescribeAppResponseBody.Result.Schema?

        public var schemas: [DescribeAppResponseBody.Result.Schemas]?

        public var secondRanks: [DescribeAppResponseBody.Result.SecondRanks]?

        public var status: String?

        public var summaries: [DescribeAppResponseBody.Result.Summaries]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cluster?.validate()
            try self.domain?.validate()
            try self.quota?.validate()
            try self.schema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoSwitch != nil {
                map["autoSwitch"] = self.autoSwitch!
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster?.toMap()
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.dataSources != nil {
                var tmp : [Any] = []
                for k in self.dataSources! {
                    tmp.append(k.toMap())
                }
                map["dataSources"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain?.toMap()
            }
            if self.fetchFields != nil {
                map["fetchFields"] = self.fetchFields!
            }
            if self.firstRanks != nil {
                var tmp : [Any] = []
                for k in self.firstRanks! {
                    tmp.append(k.toMap())
                }
                map["firstRanks"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.interpretations != nil {
                map["interpretations"] = self.interpretations!
            }
            if self.isCurrent != nil {
                map["isCurrent"] = self.isCurrent!
            }
            if self.progressPercent != nil {
                map["progressPercent"] = self.progressPercent!
            }
            if self.prompts != nil {
                map["prompts"] = self.prompts!
            }
            if self.queryProcessors != nil {
                var tmp : [Any] = []
                for k in self.queryProcessors! {
                    tmp.append(k.toMap())
                }
                map["queryProcessors"] = tmp
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.schema != nil {
                map["schema"] = self.schema?.toMap()
            }
            if self.schemas != nil {
                var tmp : [Any] = []
                for k in self.schemas! {
                    tmp.append(k.toMap())
                }
                map["schemas"] = tmp
            }
            if self.secondRanks != nil {
                var tmp : [Any] = []
                for k in self.secondRanks! {
                    tmp.append(k.toMap())
                }
                map["secondRanks"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.summaries != nil {
                var tmp : [Any] = []
                for k in self.summaries! {
                    tmp.append(k.toMap())
                }
                map["summaries"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoSwitch"] as? Bool {
                self.autoSwitch = value
            }
            if let value = dict["cluster"] as? [String: Any?] {
                var model = DescribeAppResponseBody.Result.Cluster()
                model.fromMap(value)
                self.cluster = model
            }
            if let value = dict["clusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["dataSources"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.DataSources] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.DataSources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSources = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? [String: Any?] {
                var model = DescribeAppResponseBody.Result.Domain()
                model.fromMap(value)
                self.domain = model
            }
            if let value = dict["fetchFields"] as? [String] {
                self.fetchFields = value
            }
            if let value = dict["firstRanks"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.FirstRanks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.FirstRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.firstRanks = tmp
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["interpretations"] as? [String: Any] {
                self.interpretations = value
            }
            if let value = dict["isCurrent"] as? Bool {
                self.isCurrent = value
            }
            if let value = dict["progressPercent"] as? Int32 {
                self.progressPercent = value
            }
            if let value = dict["prompts"] as? [[String: Any]] {
                self.prompts = value
            }
            if let value = dict["queryProcessors"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.QueryProcessors] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.QueryProcessors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryProcessors = tmp
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = DescribeAppResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["schema"] as? [String: Any?] {
                var model = DescribeAppResponseBody.Result.Schema()
                model.fromMap(value)
                self.schema = model
            }
            if let value = dict["schemas"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.Schemas] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.Schemas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schemas = tmp
            }
            if let value = dict["secondRanks"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.SecondRanks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.SecondRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.secondRanks = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["summaries"] as? [Any?] {
                var tmp : [DescribeAppResponseBody.Result.Summaries] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppResponseBody.Result.Summaries()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.summaries = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAppResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeAppResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
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
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

        public var engineType: String?

        public var expireOn: String?

        public var firstRankAlgoDeploymentId: Int32?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var lockedByExpiration: Int32?

        public var name: String?

        public var pendingSecondRankAlgoDeploymentId: Int32?

        public var processingOrderId: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: DescribeAppGroupResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var secondRankAlgoDeploymentId: Int32?

        public var status: String?

        public var switchedTime: Int32?

        public var tags: [DescribeAppGroupResponseBody.Result.Tags]?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.firstRankAlgoDeploymentId != nil {
                map["firstRankAlgoDeploymentId"] = self.firstRankAlgoDeploymentId!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.lockedByExpiration != nil {
                map["lockedByExpiration"] = self.lockedByExpiration!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.pendingSecondRankAlgoDeploymentId != nil {
                map["pendingSecondRankAlgoDeploymentId"] = self.pendingSecondRankAlgoDeploymentId!
            }
            if self.processingOrderId != nil {
                map["processingOrderId"] = self.processingOrderId!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.secondRankAlgoDeploymentId != nil {
                map["secondRankAlgoDeploymentId"] = self.secondRankAlgoDeploymentId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["firstRankAlgoDeploymentId"] as? Int32 {
                self.firstRankAlgoDeploymentId = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["lockedByExpiration"] as? Int32 {
                self.lockedByExpiration = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["pendingSecondRankAlgoDeploymentId"] as? Int32 {
                self.pendingSecondRankAlgoDeploymentId = value
            }
            if let value = dict["processingOrderId"] as? String {
                self.processingOrderId = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = DescribeAppGroupResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["secondRankAlgoDeploymentId"] as? Int32 {
                self.secondRankAlgoDeploymentId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [DescribeAppGroupResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppGroupResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAppGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeAppGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppStatisticsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DescribeAppStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAppStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var maxQueryClauseLength: Int32?

            public var maxTimeoutMS: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxQueryClauseLength != nil {
                    map["maxQueryClauseLength"] = self.maxQueryClauseLength!
                }
                if self.maxTimeoutMS != nil {
                    map["maxTimeoutMS"] = self.maxTimeoutMS!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["maxQueryClauseLength"] as? Int32 {
                    self.maxQueryClauseLength = value
                }
                if let value = dict["maxTimeoutMS"] as? Int32 {
                    self.maxTimeoutMS = value
                }
            }
        }
        public class DataSources : Tea.TeaModel {
            public var fields: [[String: Any]]?

            public var keyField: String?

            public var parameters: [String: Any]?

            public var plugins: [String: Any]?

            public var schemaName: String?

            public var tableName: String?

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
                if self.keyField != nil {
                    map["keyField"] = self.keyField!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.plugins != nil {
                    map["plugins"] = self.plugins!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fields"] as? [[String: Any]] {
                    self.fields = value
                }
                if let value = dict["keyField"] as? String {
                    self.keyField = value
                }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["plugins"] as? [String: Any] {
                    self.plugins = value
                }
                if let value = dict["schemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Domain : Tea.TeaModel {
            public class Functions : Tea.TeaModel {
                public var algo: [String]?

                public var qp: [String]?

                public var service: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.algo != nil {
                        map["algo"] = self.algo!
                    }
                    if self.qp != nil {
                        map["qp"] = self.qp!
                    }
                    if self.service != nil {
                        map["service"] = self.service!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["algo"] as? [String] {
                        self.algo = value
                    }
                    if let value = dict["qp"] as? [String] {
                        self.qp = value
                    }
                    if let value = dict["service"] as? [String] {
                        self.service = value
                    }
                }
            }
            public var category: String?

            public var functions: DescribeAppsResponseBody.Result.Domain.Functions?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.functions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.functions != nil {
                    map["functions"] = self.functions?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["functions"] as? [String: Any?] {
                    var model = DescribeAppsResponseBody.Result.Domain.Functions()
                    model.fromMap(value)
                    self.functions = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class FirstRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class QueryProcessors : Tea.TeaModel {
            public var active: Bool?

            public var category: String?

            public var domain: String?

            public var indexes: [String]?

            public var name: String?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processors != nil {
                    map["processors"] = self.processors!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["indexes"] as? [String] {
                    self.indexes = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["processors"] as? [[String: Any]] {
                    self.processors = value
                }
            }
        }
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var qps: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.qps != nil {
                    map["qps"] = self.qps!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["qps"] as? Int32 {
                    self.qps = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public class Schema : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [DescribeAppsResponseBody.Result.Schema.IndexSortConfig]?

            public var indexes: DescribeAppsResponseBody.Result.Schema.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: DescribeAppsResponseBody.Result.Schema.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [DescribeAppsResponseBody.Result.Schema.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppsResponseBody.Result.Schema.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = DescribeAppsResponseBody.Result.Schema.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = DescribeAppsResponseBody.Result.Schema.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class Schemas : Tea.TeaModel {
            public class IndexSortConfig : Tea.TeaModel {
                public var direction: String?

                public var field: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direction"] as? String {
                        self.direction = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                }
            }
            public class Indexes : Tea.TeaModel {
                public var filterFields: [String]?

                public var searchFields: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterFields != nil {
                        map["filterFields"] = self.filterFields!
                    }
                    if self.searchFields != nil {
                        map["searchFields"] = self.searchFields!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterFields"] as? [String] {
                        self.filterFields = value
                    }
                    if let value = dict["searchFields"] as? [String: Any] {
                        self.searchFields = value
                    }
                }
            }
            public class TtlField : Tea.TeaModel {
                public var name: String?

                public var ttl: Int64?

                public override init() {
                    super.init()
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
                    if self.ttl != nil {
                        map["ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ttl"] as? Int64 {
                        self.ttl = value
                    }
                }
            }
            public var indexSortConfig: [DescribeAppsResponseBody.Result.Schemas.IndexSortConfig]?

            public var indexes: DescribeAppsResponseBody.Result.Schemas.Indexes?

            public var name: String?

            public var routeField: String?

            public var routeFieldValues: [String]?

            public var secondRouteField: String?

            public var tables: [String: Any]?

            public var ttlField: DescribeAppsResponseBody.Result.Schemas.TtlField?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexes?.validate()
                try self.ttlField?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexSortConfig != nil {
                    var tmp : [Any] = []
                    for k in self.indexSortConfig! {
                        tmp.append(k.toMap())
                    }
                    map["indexSortConfig"] = tmp
                }
                if self.indexes != nil {
                    map["indexes"] = self.indexes?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.routeField != nil {
                    map["routeField"] = self.routeField!
                }
                if self.routeFieldValues != nil {
                    map["routeFieldValues"] = self.routeFieldValues!
                }
                if self.secondRouteField != nil {
                    map["secondRouteField"] = self.secondRouteField!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.ttlField != nil {
                    map["ttlField"] = self.ttlField?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexSortConfig"] as? [Any?] {
                    var tmp : [DescribeAppsResponseBody.Result.Schemas.IndexSortConfig] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppsResponseBody.Result.Schemas.IndexSortConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexSortConfig = tmp
                }
                if let value = dict["indexes"] as? [String: Any?] {
                    var model = DescribeAppsResponseBody.Result.Schemas.Indexes()
                    model.fromMap(value)
                    self.indexes = model
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["routeField"] as? String {
                    self.routeField = value
                }
                if let value = dict["routeFieldValues"] as? [String] {
                    self.routeFieldValues = value
                }
                if let value = dict["secondRouteField"] as? String {
                    self.secondRouteField = value
                }
                if let value = dict["tables"] as? [String: Any] {
                    self.tables = value
                }
                if let value = dict["ttlField"] as? [String: Any?] {
                    var model = DescribeAppsResponseBody.Result.Schemas.TtlField()
                    model.fromMap(value)
                    self.ttlField = model
                }
            }
        }
        public class SecondRanks : Tea.TeaModel {
            public var active: Bool?

            public var description_: String?

            public var meta: Any?

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
                if self.active != nil {
                    map["active"] = self.active!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["active"] as? Bool {
                    self.active = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["meta"] as? Any {
                    self.meta = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Summaries : Tea.TeaModel {
            public class Meta : Tea.TeaModel {
                public var element: String?

                public var ellipsis: String?

                public var field: String?

                public var len: Int32?

                public var snippet: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.element != nil {
                        map["element"] = self.element!
                    }
                    if self.ellipsis != nil {
                        map["ellipsis"] = self.ellipsis!
                    }
                    if self.field != nil {
                        map["field"] = self.field!
                    }
                    if self.len != nil {
                        map["len"] = self.len!
                    }
                    if self.snippet != nil {
                        map["snippet"] = self.snippet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["element"] as? String {
                        self.element = value
                    }
                    if let value = dict["ellipsis"] as? String {
                        self.ellipsis = value
                    }
                    if let value = dict["field"] as? String {
                        self.field = value
                    }
                    if let value = dict["len"] as? Int32 {
                        self.len = value
                    }
                    if let value = dict["snippet"] as? String {
                        self.snippet = value
                    }
                }
            }
            public var meta: [DescribeAppsResponseBody.Result.Summaries.Meta]?

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
                if self.meta != nil {
                    var tmp : [Any] = []
                    for k in self.meta! {
                        tmp.append(k.toMap())
                    }
                    map["meta"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["meta"] as? [Any?] {
                    var tmp : [DescribeAppsResponseBody.Result.Summaries.Meta] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAppsResponseBody.Result.Summaries.Meta()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meta = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var autoSwitch: Bool?

        public var cluster: DescribeAppsResponseBody.Result.Cluster?

        public var clusterName: String?

        public var dataSources: [DescribeAppsResponseBody.Result.DataSources]?

        public var description_: String?

        public var domain: DescribeAppsResponseBody.Result.Domain?

        public var fetchFields: [String]?

        public var firstRanks: [DescribeAppsResponseBody.Result.FirstRanks]?

        public var id: String?

        public var interpretations: [String: Any]?

        public var isCurrent: Bool?

        public var progressPercent: Int32?

        public var prompts: [[String: Any]]?

        public var queryProcessors: [DescribeAppsResponseBody.Result.QueryProcessors]?

        public var quota: DescribeAppsResponseBody.Result.Quota?

        public var schema: DescribeAppsResponseBody.Result.Schema?

        public var schemas: [DescribeAppsResponseBody.Result.Schemas]?

        public var secondRanks: [DescribeAppsResponseBody.Result.SecondRanks]?

        public var status: String?

        public var summaries: [DescribeAppsResponseBody.Result.Summaries]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cluster?.validate()
            try self.domain?.validate()
            try self.quota?.validate()
            try self.schema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoSwitch != nil {
                map["autoSwitch"] = self.autoSwitch!
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster?.toMap()
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.dataSources != nil {
                var tmp : [Any] = []
                for k in self.dataSources! {
                    tmp.append(k.toMap())
                }
                map["dataSources"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain?.toMap()
            }
            if self.fetchFields != nil {
                map["fetchFields"] = self.fetchFields!
            }
            if self.firstRanks != nil {
                var tmp : [Any] = []
                for k in self.firstRanks! {
                    tmp.append(k.toMap())
                }
                map["firstRanks"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.interpretations != nil {
                map["interpretations"] = self.interpretations!
            }
            if self.isCurrent != nil {
                map["isCurrent"] = self.isCurrent!
            }
            if self.progressPercent != nil {
                map["progressPercent"] = self.progressPercent!
            }
            if self.prompts != nil {
                map["prompts"] = self.prompts!
            }
            if self.queryProcessors != nil {
                var tmp : [Any] = []
                for k in self.queryProcessors! {
                    tmp.append(k.toMap())
                }
                map["queryProcessors"] = tmp
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.schema != nil {
                map["schema"] = self.schema?.toMap()
            }
            if self.schemas != nil {
                var tmp : [Any] = []
                for k in self.schemas! {
                    tmp.append(k.toMap())
                }
                map["schemas"] = tmp
            }
            if self.secondRanks != nil {
                var tmp : [Any] = []
                for k in self.secondRanks! {
                    tmp.append(k.toMap())
                }
                map["secondRanks"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.summaries != nil {
                var tmp : [Any] = []
                for k in self.summaries! {
                    tmp.append(k.toMap())
                }
                map["summaries"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoSwitch"] as? Bool {
                self.autoSwitch = value
            }
            if let value = dict["cluster"] as? [String: Any?] {
                var model = DescribeAppsResponseBody.Result.Cluster()
                model.fromMap(value)
                self.cluster = model
            }
            if let value = dict["clusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["dataSources"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.DataSources] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.DataSources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSources = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? [String: Any?] {
                var model = DescribeAppsResponseBody.Result.Domain()
                model.fromMap(value)
                self.domain = model
            }
            if let value = dict["fetchFields"] as? [String] {
                self.fetchFields = value
            }
            if let value = dict["firstRanks"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.FirstRanks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.FirstRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.firstRanks = tmp
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["interpretations"] as? [String: Any] {
                self.interpretations = value
            }
            if let value = dict["isCurrent"] as? Bool {
                self.isCurrent = value
            }
            if let value = dict["progressPercent"] as? Int32 {
                self.progressPercent = value
            }
            if let value = dict["prompts"] as? [[String: Any]] {
                self.prompts = value
            }
            if let value = dict["queryProcessors"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.QueryProcessors] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.QueryProcessors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryProcessors = tmp
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = DescribeAppsResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["schema"] as? [String: Any?] {
                var model = DescribeAppsResponseBody.Result.Schema()
                model.fromMap(value)
                self.schema = model
            }
            if let value = dict["schemas"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.Schemas] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.Schemas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schemas = tmp
            }
            if let value = dict["secondRanks"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.SecondRanks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.SecondRanks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.secondRanks = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["summaries"] as? [Any?] {
                var tmp : [DescribeAppsResponseBody.Result.Summaries] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppsResponseBody.Result.Summaries()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.summaries = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeAppsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [DescribeAppsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeAppsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class DescribeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataCollctionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var dataCollectionType: String?

        public var id: String?

        public var industryName: String?

        public var name: String?

        public var status: Int32?

        public var sundialId: String?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.dataCollectionType != nil {
                map["dataCollectionType"] = self.dataCollectionType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.industryName != nil {
                map["industryName"] = self.industryName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.sundialId != nil {
                map["sundialId"] = self.sundialId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["dataCollectionType"] as? String {
                self.dataCollectionType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["industryName"] as? String {
                self.industryName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["sundialId"] as? String {
                self.sundialId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeDataCollctionResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeDataCollctionResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeDataCollctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataCollctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataCollctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFirstRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var arg: String?

            public var attribute: String?

            public var weight: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arg != nil {
                    map["arg"] = self.arg!
                }
                if self.attribute != nil {
                    map["attribute"] = self.attribute!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["arg"] as? String {
                    self.arg = value
                }
                if let value = dict["attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["weight"] as? Double {
                    self.weight = value
                }
            }
        }
        public var active: Bool?

        public var description_: String?

        public var meta: [DescribeFirstRankResponseBody.Result.Meta]?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [DescribeFirstRankResponseBody.Result.Meta] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFirstRankResponseBody.Result.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeFirstRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeFirstRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeFirstRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFirstRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFirstRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInterventionDictionaryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var analyzer: String?

        public var created: String?

        public var name: String?

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
            if self.analyzer != nil {
                map["analyzer"] = self.analyzer!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analyzer"] as? String {
                self.analyzer = value
            }
            if let value = dict["created"] as? String {
                self.created = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? String {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeInterventionDictionaryResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeInterventionDictionaryResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeInterventionDictionaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInterventionDictionaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInterventionDictionaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeQueryProcessorResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var domain: String?

        public var indexes: [String]?

        public var name: String?

        public var processors: [[String: Any]]?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processors != nil {
                map["processors"] = self.processors!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processors"] as? [[String: Any]] {
                self.processors = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeQueryProcessorResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeQueryProcessorResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeQueryProcessorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQueryProcessorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeQueryProcessorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consoleUrl: String?

        public var endpoint: String?

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
            if self.consoleUrl != nil {
                map["consoleUrl"] = self.consoleUrl!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.localName != nil {
                map["localName"] = self.localName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consoleUrl"] as? String {
                self.consoleUrl = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["localName"] as? String {
                self.localName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeRegionsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
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

public class DescribeScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DescribeScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecondRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var description_: String?

        public var id: String?

        public var isDefault: String?

        public var isSys: String?

        public var meta: String?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
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
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.isSys != nil {
                map["isSys"] = self.isSys!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["isDefault"] as? String {
                self.isDefault = value
            }
            if let value = dict["isSys"] as? String {
                self.isSys = value
            }
            if let value = dict["meta"] as? String {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeSecondRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeSecondRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeSecondRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecondRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSecondRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlowQueryStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: String?

        public var region: String?

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
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? String {
                self.appGroupId = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeSlowQueryStatusResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DescribeSlowQueryStatusResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeSlowQueryStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowQueryStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSlowQueryStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserAnalyzerRequest : Tea.TeaModel {
    public var with: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.with != nil {
            map["with"] = self.with!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["with"] as? String {
            self.with = value
        }
    }
}

public class DescribeUserAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DescribeUserAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserAnalyzerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSlowQueryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class DisableSlowQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSlowQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableSlowQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSlowQueryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class EnableSlowQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSlowQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableSlowQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateMergedTableRequest : Tea.TeaModel {
    public var body: Schema?

    public var spec: String?

    public override init() {
        super.init()
    }

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
        if self.spec != nil {
            map["spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["spec"] as? String {
            self.spec = value
        }
    }
}

public class GenerateMergedTableResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var fromTable: [String: Any]?

        public var mergeTable: [String: Any]?

        public var primaryKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromTable != nil {
                map["fromTable"] = self.fromTable!
            }
            if self.mergeTable != nil {
                map["mergeTable"] = self.mergeTable!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fromTable"] as? [String: Any] {
                self.fromTable = value
            }
            if let value = dict["mergeTable"] as? [String: Any] {
                self.mergeTable = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
        }
    }
    public var requestId: String?

    public var result: GenerateMergedTableResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GenerateMergedTableResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GenerateMergedTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateMergedTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateMergedTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainRequest : Tea.TeaModel {
    public var appGroupIdentity: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appGroupIdentity != nil {
            map["appGroupIdentity"] = self.appGroupIdentity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appGroupIdentity"] as? String {
            self.appGroupIdentity = value
        }
    }
}

public class GetDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class GetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionCurrentVersionRequest : Tea.TeaModel {
    public var category: String?

    public var domain: String?

    public var functionType: String?

    public var modelType: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
    }
}

public class GetFunctionCurrentVersionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class VersionConfig : Tea.TeaModel {
            public class CreateParameters : Tea.TeaModel {
                public var name: String?

                public var required_: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Required"] as? String {
                        self.required_ = value
                    }
                }
            }
            public class Depends : Tea.TeaModel {
                public var condition: String?

                public var dependency: String?

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
                    if self.condition != nil {
                        map["Condition"] = self.condition!
                    }
                    if self.dependency != nil {
                        map["Dependency"] = self.dependency!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Condition"] as? String {
                        self.condition = value
                    }
                    if let value = dict["Dependency"] as? String {
                        self.dependency = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                }
            }
            public class UsageParameters : Tea.TeaModel {
                public var name: String?

                public var required_: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Required"] as? String {
                        self.required_ = value
                    }
                }
            }
            public var createParameters: [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.CreateParameters]?

            public var depends: [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.Depends]?

            public var usageParameters: [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.UsageParameters]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createParameters != nil {
                    var tmp : [Any] = []
                    for k in self.createParameters! {
                        tmp.append(k.toMap())
                    }
                    map["CreateParameters"] = tmp
                }
                if self.depends != nil {
                    var tmp : [Any] = []
                    for k in self.depends! {
                        tmp.append(k.toMap())
                    }
                    map["Depends"] = tmp
                }
                if self.usageParameters != nil {
                    var tmp : [Any] = []
                    for k in self.usageParameters! {
                        tmp.append(k.toMap())
                    }
                    map["UsageParameters"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateParameters"] as? [Any?] {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.CreateParameters] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.CreateParameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.createParameters = tmp
                }
                if let value = dict["Depends"] as? [Any?] {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.Depends] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.Depends()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.depends = tmp
                }
                if let value = dict["UsageParameters"] as? [Any?] {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.UsageParameters] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.UsageParameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.usageParameters = tmp
                }
            }
        }
        public var functionName: String?

        public var functionType: String?

        public var modelType: String?

        public var versionConfig: GetFunctionCurrentVersionResponseBody.Result.VersionConfig?

        public var versionId: Int64?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.versionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["FunctionType"] = self.functionType!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.versionConfig != nil {
                map["VersionConfig"] = self.versionConfig?.toMap()
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["FunctionType"] as? String {
                self.functionType = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["VersionConfig"] as? [String: Any?] {
                var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig()
                model.fromMap(value)
                self.versionConfig = model
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionCurrentVersionResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionCurrentVersionResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionCurrentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionCurrentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionCurrentVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionDefaultInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public var code: String?

    public var functionName: String?

    public var httpCode: Int64?

    public var instanceName: String?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionDefaultInstanceResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionDefaultInstanceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionDefaultInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionDefaultInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionDefaultInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionInstanceRequest : Tea.TeaModel {
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
        if self.output != nil {
            map["output"] = self.output!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["output"] as? String {
            self.output = value
        }
    }
}

public class GetFunctionInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Belongs : Tea.TeaModel {
            public var category: String?

            public var domain: String?

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
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
            }
        }
        public class CreateParameters : Tea.TeaModel {
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
        public class Task : Tea.TeaModel {
            public var dagStatus: String?

            public var lastRunTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dagStatus != nil {
                    map["DagStatus"] = self.dagStatus!
                }
                if self.lastRunTime != nil {
                    map["LastRunTime"] = self.lastRunTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DagStatus"] as? String {
                    self.dagStatus = value
                }
                if let value = dict["LastRunTime"] as? Int64 {
                    self.lastRunTime = value
                }
            }
        }
        public class UsageParameters : Tea.TeaModel {
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
        public var belongs: GetFunctionInstanceResponseBody.Result.Belongs?

        public var createParameters: [GetFunctionInstanceResponseBody.Result.CreateParameters]?

        public var createTime: Int64?

        public var cron: String?

        public var description_: String?

        public var extendInfo: String?

        public var functionName: String?

        public var functionType: String?

        public var instanceName: String?

        public var modelType: String?

        public var source: String?

        public var status: String?

        public var task: GetFunctionInstanceResponseBody.Result.Task?

        public var usageParameters: [GetFunctionInstanceResponseBody.Result.UsageParameters]?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.belongs?.validate()
            try self.task?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.belongs != nil {
                map["Belongs"] = self.belongs?.toMap()
            }
            if self.createParameters != nil {
                var tmp : [Any] = []
                for k in self.createParameters! {
                    tmp.append(k.toMap())
                }
                map["CreateParameters"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.cron != nil {
                map["Cron"] = self.cron!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["FunctionType"] = self.functionType!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.task != nil {
                map["Task"] = self.task?.toMap()
            }
            if self.usageParameters != nil {
                var tmp : [Any] = []
                for k in self.usageParameters! {
                    tmp.append(k.toMap())
                }
                map["UsageParameters"] = tmp
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Belongs"] as? [String: Any?] {
                var model = GetFunctionInstanceResponseBody.Result.Belongs()
                model.fromMap(value)
                self.belongs = model
            }
            if let value = dict["CreateParameters"] as? [Any?] {
                var tmp : [GetFunctionInstanceResponseBody.Result.CreateParameters] = []
                for v in value {
                    if v != nil {
                        var model = GetFunctionInstanceResponseBody.Result.CreateParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.createParameters = tmp
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Cron"] as? String {
                self.cron = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["FunctionType"] as? String {
                self.functionType = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Task"] as? [String: Any?] {
                var model = GetFunctionInstanceResponseBody.Result.Task()
                model.fromMap(value)
                self.task = model
            }
            if let value = dict["UsageParameters"] as? [Any?] {
                var tmp : [GetFunctionInstanceResponseBody.Result.UsageParameters] = []
                for v in value {
                    if v != nil {
                        var model = GetFunctionInstanceResponseBody.Result.UsageParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.usageParameters = tmp
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionInstanceResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionInstanceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionResourceRequest : Tea.TeaModel {
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
        if self.output != nil {
            map["output"] = self.output!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["output"] as? String {
            self.output = value
        }
    }
}

public class GetFunctionResourceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Generators : Tea.TeaModel {
                public class Input : Tea.TeaModel {
                    public class Features : Tea.TeaModel {
                        public var name: String?

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
                                map["Name"] = self.name!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var features: [GetFunctionResourceResponseBody.Result.Data.Generators.Input.Features]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.features != nil {
                            var tmp : [Any] = []
                            for k in self.features! {
                                tmp.append(k.toMap())
                            }
                            map["Features"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Features"] as? [Any?] {
                            var tmp : [GetFunctionResourceResponseBody.Result.Data.Generators.Input.Features] = []
                            for v in value {
                                if v != nil {
                                    var model = GetFunctionResourceResponseBody.Result.Data.Generators.Input.Features()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.features = tmp
                        }
                    }
                }
                public var generator: String?

                public var input: GetFunctionResourceResponseBody.Result.Data.Generators.Input?

                public var output: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.input?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generator != nil {
                        map["Generator"] = self.generator!
                    }
                    if self.input != nil {
                        map["Input"] = self.input?.toMap()
                    }
                    if self.output != nil {
                        map["Output"] = self.output!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Generator"] as? String {
                        self.generator = value
                    }
                    if let value = dict["Input"] as? [String: Any?] {
                        var model = GetFunctionResourceResponseBody.Result.Data.Generators.Input()
                        model.fromMap(value)
                        self.input = model
                    }
                    if let value = dict["Output"] as? String {
                        self.output = value
                    }
                }
            }
            public var content: String?

            public var generators: [GetFunctionResourceResponseBody.Result.Data.Generators]?

            public override init() {
                super.init()
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
                if self.generators != nil {
                    var tmp : [Any] = []
                    for k in self.generators! {
                        tmp.append(k.toMap())
                    }
                    map["Generators"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Generators"] as? [Any?] {
                    var tmp : [GetFunctionResourceResponseBody.Result.Data.Generators] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionResourceResponseBody.Result.Data.Generators()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.generators = tmp
                }
            }
        }
        public var createTime: Int64?

        public var data: GetFunctionResourceResponseBody.Result.Data?

        public var description_: String?

        public var functionName: String?

        public var modifyTime: Int64?

        public var referencedInstances: [String]?

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
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.referencedInstances != nil {
                map["ReferencedInstances"] = self.referencedInstances!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Data"] as? [String: Any?] {
                var model = GetFunctionResourceResponseBody.Result.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["ReferencedInstances"] as? [String] {
                self.referencedInstances = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionResourceResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Double {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionResourceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var endTime: Int64?

        public var extendInfo: String?

        public var functionName: String?

        public var generation: String?

        public var progress: Int64?

        public var runId: String?

        public var startTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.generation != nil {
                map["Generation"] = self.generation!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.runId != nil {
                map["RunId"] = self.runId!
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
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["Generation"] as? String {
                self.generation = value
            }
            if let value = dict["Progress"] as? Int64 {
                self.progress = value
            }
            if let value = dict["RunId"] as? String {
                self.runId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionTaskResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionVersionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class VersionConfig : Tea.TeaModel {
            public class CreateParameters : Tea.TeaModel {
                public var name: String?

                public var required_: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Required"] as? String {
                        self.required_ = value
                    }
                }
            }
            public class Depends : Tea.TeaModel {
                public var condition: String?

                public var dependency: String?

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
                    if self.condition != nil {
                        map["Condition"] = self.condition!
                    }
                    if self.dependency != nil {
                        map["Dependency"] = self.dependency!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Condition"] as? String {
                        self.condition = value
                    }
                    if let value = dict["Dependency"] as? String {
                        self.dependency = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                }
            }
            public class UsageParameters : Tea.TeaModel {
                public var name: String?

                public var required_: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Required"] as? String {
                        self.required_ = value
                    }
                }
            }
            public var createParameters: [GetFunctionVersionResponseBody.Result.VersionConfig.CreateParameters]?

            public var depends: [GetFunctionVersionResponseBody.Result.VersionConfig.Depends]?

            public var usageParameters: [GetFunctionVersionResponseBody.Result.VersionConfig.UsageParameters]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createParameters != nil {
                    var tmp : [Any] = []
                    for k in self.createParameters! {
                        tmp.append(k.toMap())
                    }
                    map["CreateParameters"] = tmp
                }
                if self.depends != nil {
                    var tmp : [Any] = []
                    for k in self.depends! {
                        tmp.append(k.toMap())
                    }
                    map["Depends"] = tmp
                }
                if self.usageParameters != nil {
                    var tmp : [Any] = []
                    for k in self.usageParameters! {
                        tmp.append(k.toMap())
                    }
                    map["UsageParameters"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateParameters"] as? [Any?] {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.CreateParameters] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionVersionResponseBody.Result.VersionConfig.CreateParameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.createParameters = tmp
                }
                if let value = dict["Depends"] as? [Any?] {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.Depends] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionVersionResponseBody.Result.VersionConfig.Depends()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.depends = tmp
                }
                if let value = dict["UsageParameters"] as? [Any?] {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.UsageParameters] = []
                    for v in value {
                        if v != nil {
                            var model = GetFunctionVersionResponseBody.Result.VersionConfig.UsageParameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.usageParameters = tmp
                }
            }
        }
        public var functionName: String?

        public var functionType: String?

        public var modelType: String?

        public var versionConfig: GetFunctionVersionResponseBody.Result.VersionConfig?

        public var versionId: Int64?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.versionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["FunctionType"] = self.functionType!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.versionConfig != nil {
                map["VersionConfig"] = self.versionConfig?.toMap()
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["FunctionType"] as? String {
                self.functionType = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["VersionConfig"] as? [String: Any?] {
                var model = GetFunctionVersionResponseBody.Result.VersionConfig()
                model.fromMap(value)
                self.versionConfig = model
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: GetFunctionVersionResponseBody.Result?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetFunctionVersionResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFunctionVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFunctionVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScriptFileNamesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var fileName: String?

        public var modifyTime: String?

        public var pathName: String?

        public override init() {
            super.init()
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
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.pathName != nil {
                map["pathName"] = self.pathName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["pathName"] as? String {
                self.pathName = value
            }
        }
    }
    public var requestId: String?

    public var result: [GetScriptFileNamesResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [GetScriptFileNamesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetScriptFileNamesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class GetScriptFileNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScriptFileNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetScriptFileNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSearchStrategyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class GetSearchStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSearchStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSearchStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSortScriptResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var scope: String?

        public var scriptName: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["scope"] as? String {
                self.scope = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: GetSortScriptResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetSortScriptResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSortScriptFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var modifyTime: String?

        public var version: Int64?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
            }
        }
    }
    public var requestId: String?

    public var result: GetSortScriptFileResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetSortScriptFileResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class GetSortScriptFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSortScriptFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSortScriptFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABTestExperimentsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var online: Bool?

        public var params: [String: Any]?

        public var traffic: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.online != nil {
                map["online"] = self.online!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.traffic != nil {
                map["traffic"] = self.traffic!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["online"] as? Bool {
                self.online = value
            }
            if let value = dict["params"] as? [String: Any] {
                self.params = value
            }
            if let value = dict["traffic"] as? Int32 {
                self.traffic = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListABTestExperimentsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListABTestExperimentsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListABTestExperimentsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListABTestExperimentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABTestExperimentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListABTestExperimentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABTestFixedFlowDividersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String] {
            self.result = value
        }
    }
}

public class ListABTestFixedFlowDividersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABTestFixedFlowDividersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListABTestFixedFlowDividersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABTestGroupsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListABTestGroupsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListABTestGroupsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListABTestGroupsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListABTestGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABTestGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListABTestGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABTestScenesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListABTestScenesResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListABTestScenesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListABTestScenesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListABTestScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABTestScenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListABTestScenesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppGroupsRequest : Tea.TeaModel {
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
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var sortBy: Int32?

    public var tags: [ListAppGroupsRequest.Tags]?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["sortBy"] as? Int32 {
            self.sortBy = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [ListAppGroupsRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListAppGroupsRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListAppGroupsShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var sortBy: Int32?

    public var tagsShrink: String?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["sortBy"] as? Int32 {
            self.sortBy = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListAppGroupsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
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
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

        public var engineType: String?

        public var expireOn: String?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var lockedByExpiration: Int32?

        public var name: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: ListAppGroupsResponseBody.Result.Quota?

        public var status: String?

        public var switchedTime: Int32?

        public var tags: [ListAppGroupsResponseBody.Result.Tags]?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.lockedByExpiration != nil {
                map["lockedByExpiration"] = self.lockedByExpiration!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["lockedByExpiration"] as? Int32 {
                self.lockedByExpiration = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = ListAppGroupsResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListAppGroupsResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListAppGroupsResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListAppGroupsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListAppGroupsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListAppGroupsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAppGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAppGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCollectionsRequest : Tea.TeaModel {
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDataCollectionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var dataCollectionType: String?

        public var id: String?

        public var industryName: String?

        public var name: String?

        public var status: Int32?

        public var sundialId: String?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.dataCollectionType != nil {
                map["dataCollectionType"] = self.dataCollectionType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.industryName != nil {
                map["industryName"] = self.industryName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.sundialId != nil {
                map["sundialId"] = self.sundialId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["dataCollectionType"] as? String {
                self.dataCollectionType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["industryName"] as? String {
                self.industryName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["sundialId"] as? String {
                self.sundialId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataCollectionsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListDataCollectionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDataCollectionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCollectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCollectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataCollectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceTableFieldsRequest : Tea.TeaModel {
    public var params: String?

    public var rawType: Bool?

    public override init() {
        super.init()
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
        if self.rawType != nil {
            map["rawType"] = self.rawType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["rawType"] as? Bool {
            self.rawType = value
        }
    }
}

public class ListDataSourceTableFieldsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class ListDataSourceTableFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTableFieldsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataSourceTableFieldsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceTablesRequest : Tea.TeaModel {
    public var params: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? String {
            self.params = value
        }
    }
}

public class ListDataSourceTablesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String] {
            self.result = value
        }
    }
}

public class ListDataSourceTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataSourceTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFirstRanksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var arg: String?

            public var attribute: String?

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
                if self.arg != nil {
                    map["arg"] = self.arg!
                }
                if self.attribute != nil {
                    map["attribute"] = self.attribute!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["arg"] as? String {
                    self.arg = value
                }
                if let value = dict["attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var active: Bool?

        public var created: Int32?

        public var description_: String?

        public var meta: [ListFirstRanksResponseBody.Result.Meta]?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [ListFirstRanksResponseBody.Result.Meta] = []
                for v in value {
                    if v != nil {
                        var model = ListFirstRanksResponseBody.Result.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListFirstRanksResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListFirstRanksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFirstRanksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListFirstRanksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFirstRanksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFirstRanksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionInstancesRequest : Tea.TeaModel {
    public var functionType: String?

    public var modelType: String?

    public var output: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["output"] as? String {
            self.output = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class ListFunctionInstancesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Belongs : Tea.TeaModel {
            public var category: String?

            public var domain: String?

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
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
            }
        }
        public class CreateParameters : Tea.TeaModel {
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
        public class UsageParameters : Tea.TeaModel {
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
        public var belongs: ListFunctionInstancesResponseBody.Result.Belongs?

        public var createParameters: [ListFunctionInstancesResponseBody.Result.CreateParameters]?

        public var createTime: Int64?

        public var cron: String?

        public var description_: String?

        public var extendInfo: String?

        public var functionName: String?

        public var functionType: String?

        public var instanceName: String?

        public var modelType: String?

        public var source: String?

        public var status: String?

        public var usageParameters: [ListFunctionInstancesResponseBody.Result.UsageParameters]?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.belongs?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.belongs != nil {
                map["Belongs"] = self.belongs?.toMap()
            }
            if self.createParameters != nil {
                var tmp : [Any] = []
                for k in self.createParameters! {
                    tmp.append(k.toMap())
                }
                map["CreateParameters"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.cron != nil {
                map["Cron"] = self.cron!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.functionType != nil {
                map["FunctionType"] = self.functionType!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.usageParameters != nil {
                var tmp : [Any] = []
                for k in self.usageParameters! {
                    tmp.append(k.toMap())
                }
                map["UsageParameters"] = tmp
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Belongs"] as? [String: Any?] {
                var model = ListFunctionInstancesResponseBody.Result.Belongs()
                model.fromMap(value)
                self.belongs = model
            }
            if let value = dict["CreateParameters"] as? [Any?] {
                var tmp : [ListFunctionInstancesResponseBody.Result.CreateParameters] = []
                for v in value {
                    if v != nil {
                        var model = ListFunctionInstancesResponseBody.Result.CreateParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.createParameters = tmp
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Cron"] as? String {
                self.cron = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["FunctionType"] as? String {
                self.functionType = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UsageParameters"] as? [Any?] {
                var tmp : [ListFunctionInstancesResponseBody.Result.UsageParameters] = []
                for v in value {
                    if v != nil {
                        var model = ListFunctionInstancesResponseBody.Result.UsageParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.usageParameters = tmp
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: [ListFunctionInstancesResponseBody.Result]?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListFunctionInstancesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFunctionInstancesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFunctionInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFunctionInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionResourcesRequest : Tea.TeaModel {
    public var output: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["output"] as? String {
            self.output = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListFunctionResourcesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Generators : Tea.TeaModel {
                public class Input : Tea.TeaModel {
                    public class Features : Tea.TeaModel {
                        public var name: String?

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
                                map["Name"] = self.name!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var features: [ListFunctionResourcesResponseBody.Result.Data.Generators.Input.Features]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.features != nil {
                            var tmp : [Any] = []
                            for k in self.features! {
                                tmp.append(k.toMap())
                            }
                            map["Features"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Features"] as? [Any?] {
                            var tmp : [ListFunctionResourcesResponseBody.Result.Data.Generators.Input.Features] = []
                            for v in value {
                                if v != nil {
                                    var model = ListFunctionResourcesResponseBody.Result.Data.Generators.Input.Features()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.features = tmp
                        }
                    }
                }
                public var generator: String?

                public var input: ListFunctionResourcesResponseBody.Result.Data.Generators.Input?

                public var output: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.input?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generator != nil {
                        map["Generator"] = self.generator!
                    }
                    if self.input != nil {
                        map["Input"] = self.input?.toMap()
                    }
                    if self.output != nil {
                        map["Output"] = self.output!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Generator"] as? String {
                        self.generator = value
                    }
                    if let value = dict["Input"] as? [String: Any?] {
                        var model = ListFunctionResourcesResponseBody.Result.Data.Generators.Input()
                        model.fromMap(value)
                        self.input = model
                    }
                    if let value = dict["Output"] as? String {
                        self.output = value
                    }
                }
            }
            public var content: String?

            public var generators: [ListFunctionResourcesResponseBody.Result.Data.Generators]?

            public override init() {
                super.init()
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
                if self.generators != nil {
                    var tmp : [Any] = []
                    for k in self.generators! {
                        tmp.append(k.toMap())
                    }
                    map["Generators"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Generators"] as? [Any?] {
                    var tmp : [ListFunctionResourcesResponseBody.Result.Data.Generators] = []
                    for v in value {
                        if v != nil {
                            var model = ListFunctionResourcesResponseBody.Result.Data.Generators()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.generators = tmp
                }
            }
        }
        public var createTime: Int64?

        public var data: ListFunctionResourcesResponseBody.Result.Data?

        public var description_: String?

        public var functionName: String?

        public var modifyTime: Int64?

        public var referencedInstances: [String]?

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
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.referencedInstances != nil {
                map["ReferencedInstances"] = self.referencedInstances!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Data"] as? [String: Any?] {
                var model = ListFunctionResourcesResponseBody.Result.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["ReferencedInstances"] as? [String] {
                self.referencedInstances = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

    public var requestId: String?

    public var result: [ListFunctionResourcesResponseBody.Result]?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Double {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListFunctionResourcesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFunctionResourcesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFunctionResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFunctionResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionTasksRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListFunctionTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var endTime: Int64?

        public var extendInfo: String?

        public var functionName: String?

        public var generation: String?

        public var progress: Int64?

        public var runId: String?

        public var startTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.generation != nil {
                map["Generation"] = self.generation!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.runId != nil {
                map["RunId"] = self.runId!
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
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
            if let value = dict["Generation"] as? String {
                self.generation = value
            }
            if let value = dict["Progress"] as? Int64 {
                self.progress = value
            }
            if let value = dict["RunId"] as? String {
                self.runId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

    public var requestId: String?

    public var result: [ListFunctionTasksResponseBody.Result]?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListFunctionTasksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListFunctionTasksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFunctionTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFunctionTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInterventionDictionariesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var types: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["types"] as? String {
            self.types = value
        }
    }
}

public class ListInterventionDictionariesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var analyzer: String?

        public var created: Int32?

        public var id: Int32?

        public var name: String?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analyzer != nil {
                map["analyzer"] = self.analyzer!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analyzer"] as? String {
                self.analyzer = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? Int32 {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListInterventionDictionariesResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListInterventionDictionariesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListInterventionDictionariesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInterventionDictionariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterventionDictionariesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInterventionDictionariesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInterventionDictionaryEntriesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var word: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.word != nil {
            map["word"] = self.word!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["word"] as? String {
            self.word = value
        }
    }
}

public class ListInterventionDictionaryEntriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tokens : Tea.TeaModel {
            public var order: Int32?

            public var tag: String?

            public var tagLabel: String?

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
                if self.order != nil {
                    map["order"] = self.order!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tagLabel != nil {
                    map["tagLabel"] = self.tagLabel!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["order"] as? Int32 {
                    self.order = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
                }
                if let value = dict["tagLabel"] as? String {
                    self.tagLabel = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
            }
        }
        public var cmd: String?

        public var created: Int64?

        public var relevance: [String: Any]?

        public var status: String?

        public var tokens: [ListInterventionDictionaryEntriesResponseBody.Result.Tokens]?

        public var updated: Int64?

        public var word: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmd != nil {
                map["cmd"] = self.cmd!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.relevance != nil {
                map["relevance"] = self.relevance!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tokens != nil {
                var tmp : [Any] = []
                for k in self.tokens! {
                    tmp.append(k.toMap())
                }
                map["tokens"] = tmp
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.word != nil {
                map["word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cmd"] as? String {
                self.cmd = value
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["relevance"] as? [String: Any] {
                self.relevance = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tokens"] as? [Any?] {
                var tmp : [ListInterventionDictionaryEntriesResponseBody.Result.Tokens] = []
                for v in value {
                    if v != nil {
                        var model = ListInterventionDictionaryEntriesResponseBody.Result.Tokens()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tokens = tmp
            }
            if let value = dict["updated"] as? Int64 {
                self.updated = value
            }
            if let value = dict["word"] as? String {
                self.word = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListInterventionDictionaryEntriesResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListInterventionDictionaryEntriesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListInterventionDictionaryEntriesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInterventionDictionaryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterventionDictionaryEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInterventionDictionaryEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInterventionDictionaryNerResultsRequest : Tea.TeaModel {
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
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? String {
            self.query = value
        }
    }
}

public class ListInterventionDictionaryNerResultsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var order: Int32?

        public var tag: String?

        public var tagLabel: String?

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
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tagLabel != nil {
                map["tagLabel"] = self.tagLabel!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["tag"] as? String {
                self.tag = value
            }
            if let value = dict["tagLabel"] as? String {
                self.tagLabel = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListInterventionDictionaryNerResultsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListInterventionDictionaryNerResultsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListInterventionDictionaryNerResultsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListInterventionDictionaryNerResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterventionDictionaryNerResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInterventionDictionaryNerResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInterventionDictionaryRelatedEntitiesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [[String: Any]] {
            self.result = value
        }
    }
}

public class ListInterventionDictionaryRelatedEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterventionDictionaryRelatedEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInterventionDictionaryRelatedEntitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProceedingsRequest : Tea.TeaModel {
    public var filterFinished: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterFinished != nil {
            map["filterFinished"] = self.filterFinished!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filterFinished"] as? Bool {
            self.filterFinished = value
        }
    }
}

public class ListProceedingsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ListProceedingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProceedingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProceedingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueryProcessorAnalyzerResultsRequest : Tea.TeaModel {
    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.text != nil {
            map["text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["text"] as? String {
            self.text = value
        }
    }
}

public class ListQueryProcessorAnalyzerResultsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class ListQueryProcessorAnalyzerResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueryProcessorAnalyzerResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueryProcessorAnalyzerResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueryProcessorNersRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
            map["domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
    }
}

public class ListQueryProcessorNersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var label: String?

        public var order: Int32?

        public var priority: String?

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
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.priority != nil {
                map["priority"] = self.priority!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["label"] as? String {
                self.label = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["priority"] as? String {
                self.priority = value
            }
            if let value = dict["tag"] as? String {
                self.tag = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListQueryProcessorNersResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListQueryProcessorNersResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListQueryProcessorNersResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListQueryProcessorNersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueryProcessorNersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueryProcessorNersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueryProcessorsRequest : Tea.TeaModel {
    public var isActive: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isActive"] as? Int32 {
            self.isActive = value
        }
    }
}

public class ListQueryProcessorsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var domain: String?

        public var indexes: [String]?

        public var name: String?

        public var processors: [[String: Any]]?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processors != nil {
                map["processors"] = self.processors!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processors"] as? [[String: Any]] {
                self.processors = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListQueryProcessorsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListQueryProcessorsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListQueryProcessorsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListQueryProcessorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueryProcessorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueryProcessorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaReviewTasksRequest : Tea.TeaModel {
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListQuotaReviewTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appGroupId: Int32?

        public var appGroupName: String?

        public var appGroupType: String?

        public var approved: Bool?

        public var available: Bool?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int32?

        public var memo: String?

        public var newComputeResource: Int32?

        public var newSocSize: Int32?

        public var newSpec: String?

        public var oldComputeResource: Int32?

        public var oldDocSize: Int32?

        public var oldSpec: String?

        public var pending: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appGroupId != nil {
                map["appGroupId"] = self.appGroupId!
            }
            if self.appGroupName != nil {
                map["appGroupName"] = self.appGroupName!
            }
            if self.appGroupType != nil {
                map["appGroupType"] = self.appGroupType!
            }
            if self.approved != nil {
                map["approved"] = self.approved!
            }
            if self.available != nil {
                map["available"] = self.available!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.memo != nil {
                map["memo"] = self.memo!
            }
            if self.newComputeResource != nil {
                map["newComputeResource"] = self.newComputeResource!
            }
            if self.newSocSize != nil {
                map["newSocSize"] = self.newSocSize!
            }
            if self.newSpec != nil {
                map["newSpec"] = self.newSpec!
            }
            if self.oldComputeResource != nil {
                map["oldComputeResource"] = self.oldComputeResource!
            }
            if self.oldDocSize != nil {
                map["oldDocSize"] = self.oldDocSize!
            }
            if self.oldSpec != nil {
                map["oldSpec"] = self.oldSpec!
            }
            if self.pending != nil {
                map["pending"] = self.pending!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appGroupId"] as? Int32 {
                self.appGroupId = value
            }
            if let value = dict["appGroupName"] as? String {
                self.appGroupName = value
            }
            if let value = dict["appGroupType"] as? String {
                self.appGroupType = value
            }
            if let value = dict["approved"] as? Bool {
                self.approved = value
            }
            if let value = dict["available"] as? Bool {
                self.available = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int32 {
                self.id = value
            }
            if let value = dict["memo"] as? String {
                self.memo = value
            }
            if let value = dict["newComputeResource"] as? Int32 {
                self.newComputeResource = value
            }
            if let value = dict["newSocSize"] as? Int32 {
                self.newSocSize = value
            }
            if let value = dict["newSpec"] as? String {
                self.newSpec = value
            }
            if let value = dict["oldComputeResource"] as? Int32 {
                self.oldComputeResource = value
            }
            if let value = dict["oldDocSize"] as? Int32 {
                self.oldDocSize = value
            }
            if let value = dict["oldSpec"] as? String {
                self.oldSpec = value
            }
            if let value = dict["pending"] as? Bool {
                self.pending = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListQuotaReviewTasksResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListQuotaReviewTasksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaReviewTasksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaReviewTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaReviewTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaReviewTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledTasksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListScheduledTasksResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [[String: Any]] {
            self.result = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListScheduledTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListScheduledTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSearchStrategiesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ListSearchStrategiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSearchStrategiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSearchStrategiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecondRanksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var description_: String?

        public var id: String?

        public var isDefault: String?

        public var isSys: String?

        public var meta: String?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
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
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.isSys != nil {
                map["isSys"] = self.isSys!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["isDefault"] as? String {
                self.isDefault = value
            }
            if let value = dict["isSys"] as? String {
                self.isSys = value
            }
            if let value = dict["meta"] as? String {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListSecondRanksResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListSecondRanksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListSecondRanksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSecondRanksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecondRanksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSecondRanksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSlowQueryCategoriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var analyzeStatus: String?

        public var end: Int32?

        public var start: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analyzeStatus != nil {
                map["analyzeStatus"] = self.analyzeStatus!
            }
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analyzeStatus"] as? String {
                self.analyzeStatus = value
            }
            if let value = dict["end"] as? Int32 {
                self.end = value
            }
            if let value = dict["start"] as? Int32 {
                self.start = value
            }
        }
    }
    public var requestId: String?

    public var result: ListSlowQueryCategoriesResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ListSlowQueryCategoriesResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ListSlowQueryCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSlowQueryCategoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSlowQueryCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSlowQueryQueriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appQuery: String?

        public var end: Int32?

        public var index: Int32?

        public var start: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appQuery != nil {
                map["appQuery"] = self.appQuery!
            }
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appQuery"] as? String {
                self.appQuery = value
            }
            if let value = dict["end"] as? Int32 {
                self.end = value
            }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["start"] as? Int32 {
                self.start = value
            }
        }
    }
    public var requestId: String?

    public var result: ListSlowQueryQueriesResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ListSlowQueryQueriesResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ListSlowQueryQueriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSlowQueryQueriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSlowQueryQueriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSortExpressionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var description_: String?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListSortExpressionsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListSortExpressionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListSortExpressionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListSortExpressionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSortExpressionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSortExpressionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSortScriptsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var scope: String?

        public var scriptName: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["modifyTime"] = self.modifyTime!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["modifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["scope"] as? String {
                self.scope = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListSortScriptsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListSortScriptsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListSortScriptsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ListSortScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSortScriptsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSortScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListStatisticLogsRequest : Tea.TeaModel {
    public var columns: String?

    public var distinct: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var sortBy: String?

    public var startTime: Int32?

    public var stopTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["columns"] = self.columns!
        }
        if self.distinct != nil {
            map["distinct"] = self.distinct!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.stopTime != nil {
            map["stopTime"] = self.stopTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? String {
            self.columns = value
        }
        if let value = dict["distinct"] as? Bool {
            self.distinct = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["sortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["startTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["stopTime"] as? Int32 {
            self.stopTime = value
        }
    }
}

public class ListStatisticLogsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [[String: Any]] {
            self.result = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListStatisticLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStatisticLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStatisticLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListStatisticReportRequest : Tea.TeaModel {
    public var columns: String?

    public var endTime: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

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
        if self.columns != nil {
            map["columns"] = self.columns!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? String {
            self.columns = value
        }
        if let value = dict["endTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["startTime"] as? Int32 {
            self.startTime = value
        }
    }
}

public class ListStatisticReportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [[String: Any]] {
            self.result = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListStatisticReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStatisticReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStatisticReportResponseBody()
            model.fromMap(value)
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
    public var nextToken: String?

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
            map["nextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.resourceIdShrink != nil {
            map["resourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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

    public var requestId: String?

    public var result: [ListTagResourcesResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
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

public class ListUserAnalyzerEntriesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var word: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.word != nil {
            map["word"] = self.word!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["word"] as? String {
            self.word = value
        }
    }
}

public class ListUserAnalyzerEntriesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class ListUserAnalyzerEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserAnalyzerEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserAnalyzerEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserAnalyzersRequest : Tea.TeaModel {
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListUserAnalyzersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Dicts : Tea.TeaModel {
            public var available: Bool?

            public var created: Int32?

            public var entriesCount: Int32?

            public var entriesLimit: Int32?

            public var id: String?

            public var type: String?

            public var updated: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["available"] = self.available!
                }
                if self.created != nil {
                    map["created"] = self.created!
                }
                if self.entriesCount != nil {
                    map["entriesCount"] = self.entriesCount!
                }
                if self.entriesLimit != nil {
                    map["entriesLimit"] = self.entriesLimit!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["available"] as? Bool {
                    self.available = value
                }
                if let value = dict["created"] as? Int32 {
                    self.created = value
                }
                if let value = dict["entriesCount"] as? Int32 {
                    self.entriesCount = value
                }
                if let value = dict["entriesLimit"] as? Int32 {
                    self.entriesLimit = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["updated"] as? Int32 {
                    self.updated = value
                }
            }
        }
        public var available: Bool?

        public var business: String?

        public var created: Int32?

        public var dicts: [ListUserAnalyzersResponseBody.Result.Dicts]?

        public var id: String?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.available != nil {
                map["available"] = self.available!
            }
            if self.business != nil {
                map["business"] = self.business!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.dicts != nil {
                var tmp : [Any] = []
                for k in self.dicts! {
                    tmp.append(k.toMap())
                }
                map["dicts"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["available"] as? Bool {
                self.available = value
            }
            if let value = dict["business"] as? String {
                self.business = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["dicts"] as? [Any?] {
                var tmp : [ListUserAnalyzersResponseBody.Result.Dicts] = []
                for v in value {
                    if v != nil {
                        var model = ListUserAnalyzersResponseBody.Result.Dicts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dicts = tmp
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListUserAnalyzersResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListUserAnalyzersResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListUserAnalyzersResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListUserAnalyzersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserAnalyzersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserAnalyzersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppGroupRequest : Tea.TeaModel {
    public var currentVersion: String?

    public var description_: String?

    public var domain: String?

    public var resourceGroupId: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentVersion != nil {
            map["currentVersion"] = self.currentVersion!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentVersion"] as? String {
            self.currentVersion = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class ModifyAppGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

        public var engineType: String?

        public var expireOn: String?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var name: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: ModifyAppGroupResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var status: String?

        public var switchedTime: Int32?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = ModifyAppGroupResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: ModifyAppGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifyAppGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifyAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppGroupQuotaRequest : Tea.TeaModel {
    public var body: Quota?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class ModifyAppGroupQuotaResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var engineType: String?

        public var expireOn: String?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var name: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: ModifyAppGroupQuotaResponseBody.Result.Quota?

        public var resourceGroupId: String?

        public var status: String?

        public var switchedTime: Int32?

        public var type: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = ModifyAppGroupQuotaResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: ModifyAppGroupQuotaResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifyAppGroupQuotaResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifyAppGroupQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppGroupQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAppGroupQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFirstRankRequest : Tea.TeaModel {
    public var body: FirstRank?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = FirstRank()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class ModifyFirstRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var arg: String?

            public var attribute: String?

            public var weight: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arg != nil {
                    map["arg"] = self.arg!
                }
                if self.attribute != nil {
                    map["attribute"] = self.attribute!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["arg"] as? String {
                    self.arg = value
                }
                if let value = dict["attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["weight"] as? Double {
                    self.weight = value
                }
            }
        }
        public var active: Bool?

        public var description_: String?

        public var meta: [ModifyFirstRankResponseBody.Result.Meta]?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [ModifyFirstRankResponseBody.Result.Meta] = []
                for v in value {
                    if v != nil {
                        var model = ModifyFirstRankResponseBody.Result.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var requestId: String?

    public var result: ModifyFirstRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifyFirstRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifyFirstRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFirstRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyFirstRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyQueryProcessorRequest : Tea.TeaModel {
    public var body: Any?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Any {
            self.body = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class ModifyQueryProcessorResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var domain: String?

        public var indexes: [String]?

        public var name: String?

        public var processors: [[String: Any]]?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processors != nil {
                map["processors"] = self.processors!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processors"] as? [[String: Any]] {
                self.processors = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: ModifyQueryProcessorResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifyQueryProcessorResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifyQueryProcessorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyQueryProcessorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyQueryProcessorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyScheduledTaskRequest : Tea.TeaModel {
    public var body: Any?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class ModifyScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class ModifyScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySecondRankRequest : Tea.TeaModel {
    public var body: SecondRank?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SecondRank()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class ModifySecondRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var created: Int32?

        public var description_: String?

        public var id: String?

        public var isDefault: String?

        public var isSys: String?

        public var meta: String?

        public var name: String?

        public var updated: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
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
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.isSys != nil {
                map["isSys"] = self.isSys!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["isDefault"] as? String {
                self.isDefault = value
            }
            if let value = dict["isSys"] as? String {
                self.isSys = value
            }
            if let value = dict["meta"] as? String {
                self.meta = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: ModifySecondRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ModifySecondRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ModifySecondRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecondRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySecondRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushInterventionDictionaryEntriesRequest : Tea.TeaModel {
    public var body: [[String: Any]]?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [[String: Any]] {
            self.body = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class PushInterventionDictionaryEntriesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String] {
            self.result = value
        }
    }
}

public class PushInterventionDictionaryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushInterventionDictionaryEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushInterventionDictionaryEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushUserAnalyzerEntriesRequest : Tea.TeaModel {
    public class Entries : Tea.TeaModel {
        public var cmd: String?

        public var key: String?

        public var splitEnabled: Bool?

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
            if self.cmd != nil {
                map["cmd"] = self.cmd!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.splitEnabled != nil {
                map["splitEnabled"] = self.splitEnabled!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cmd"] as? String {
                self.cmd = value
            }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["splitEnabled"] as? Bool {
                self.splitEnabled = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var entries: [PushUserAnalyzerEntriesRequest.Entries]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entries != nil {
            var tmp : [Any] = []
            for k in self.entries! {
                tmp.append(k.toMap())
            }
            map["entries"] = tmp
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["entries"] as? [Any?] {
            var tmp : [PushUserAnalyzerEntriesRequest.Entries] = []
            for v in value {
                if v != nil {
                    var model = PushUserAnalyzerEntriesRequest.Entries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entries = tmp
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class PushUserAnalyzerEntriesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class PushUserAnalyzerEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushUserAnalyzerEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushUserAnalyzerEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseSortScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ReleaseSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveAppResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [Int32]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Int32] {
            self.result = value
        }
    }
}

public class RemoveAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveAppGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [Int32]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Int32] {
            self.result = value
        }
    }
}

public class RemoveAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAppGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDataCollectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? String {
            self.result = value
        }
    }
}

public class RemoveDataCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDataCollectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveDataCollectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveFirstRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var arg: String?

            public var attribute: String?

            public var weight: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arg != nil {
                    map["arg"] = self.arg!
                }
                if self.attribute != nil {
                    map["attribute"] = self.attribute!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["arg"] as? String {
                    self.arg = value
                }
                if let value = dict["attribute"] as? String {
                    self.attribute = value
                }
                if let value = dict["weight"] as? Double {
                    self.weight = value
                }
            }
        }
        public var active: Bool?

        public var description_: String?

        public var meta: [RemoveFirstRankResponseBody.Result.Meta]?

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
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.meta != nil {
                var tmp : [Any] = []
                for k in self.meta! {
                    tmp.append(k.toMap())
                }
                map["meta"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["meta"] as? [Any?] {
                var tmp : [RemoveFirstRankResponseBody.Result.Meta] = []
                for v in value {
                    if v != nil {
                        var model = RemoveFirstRankResponseBody.Result.Meta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meta = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var requestId: String?

    public var result: RemoveFirstRankResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = RemoveFirstRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class RemoveFirstRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveFirstRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveFirstRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveInterventionDictionaryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var analyzer: String?

        public var created: String?

        public var name: String?

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
            if self.analyzer != nil {
                map["analyzer"] = self.analyzer!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analyzer"] as? String {
                self.analyzer = value
            }
            if let value = dict["created"] as? String {
                self.created = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? String {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: RemoveInterventionDictionaryResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = RemoveInterventionDictionaryResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class RemoveInterventionDictionaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveInterventionDictionaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveInterventionDictionaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveQueryProcessorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? String {
            self.result = value
        }
    }
}

public class RemoveQueryProcessorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveQueryProcessorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveQueryProcessorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [Int32]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Int32] {
            self.result = value
        }
    }
}

public class RemoveScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveSearchStrategyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class RemoveSearchStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSearchStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveSearchStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveSecondRankResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class RemoveSecondRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSecondRankResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveSecondRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveUserAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class RemoveUserAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveUserAnalyzerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewAppGroupRequest : Tea.TeaModel {
    public var body: PrepayOrderInfo?

    public var clientToken: String?

    public override init() {
        super.init()
    }

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PrepayOrderInfo()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class RenewAppGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Bool {
            self.result = value
        }
    }
}

public class RenewAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAppGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenewAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReplaceAppGroupCommodityCodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public var computeResource: Int32?

            public var docSize: Int32?

            public var spec: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeResource != nil {
                    map["computeResource"] = self.computeResource!
                }
                if self.docSize != nil {
                    map["docSize"] = self.docSize!
                }
                if self.spec != nil {
                    map["spec"] = self.spec!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeResource"] as? Int32 {
                    self.computeResource = value
                }
                if let value = dict["docSize"] as? Int32 {
                    self.docSize = value
                }
                if let value = dict["spec"] as? String {
                    self.spec = value
                }
            }
        }
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var expireOn: String?

        public var firstRankAlgoDeploymentId: Int32?

        public var hasPendingQuotaReviewTask: Int32?

        public var id: String?

        public var instanceId: String?

        public var lockMode: String?

        public var lockedByExpiration: Int32?

        public var name: String?

        public var pendingSecondRankAlgoDeploymentId: Int32?

        public var processingOrderId: String?

        public var produced: Int32?

        public var projectId: String?

        public var quota: ReplaceAppGroupCommodityCodeResponseBody.Result.Quota?

        public var secondRankAlgoDeploymentId: Int32?

        public var status: String?

        public var switchedTime: Int32?

        public var type: String?

        public var updated: Int32?

        public var versions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.chargingWay != nil {
                map["chargingWay"] = self.chargingWay!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expireOn != nil {
                map["expireOn"] = self.expireOn!
            }
            if self.firstRankAlgoDeploymentId != nil {
                map["firstRankAlgoDeploymentId"] = self.firstRankAlgoDeploymentId!
            }
            if self.hasPendingQuotaReviewTask != nil {
                map["hasPendingQuotaReviewTask"] = self.hasPendingQuotaReviewTask!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.lockedByExpiration != nil {
                map["lockedByExpiration"] = self.lockedByExpiration!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.pendingSecondRankAlgoDeploymentId != nil {
                map["pendingSecondRankAlgoDeploymentId"] = self.pendingSecondRankAlgoDeploymentId!
            }
            if self.processingOrderId != nil {
                map["processingOrderId"] = self.processingOrderId!
            }
            if self.produced != nil {
                map["produced"] = self.produced!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.secondRankAlgoDeploymentId != nil {
                map["secondRankAlgoDeploymentId"] = self.secondRankAlgoDeploymentId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.switchedTime != nil {
                map["switchedTime"] = self.switchedTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.versions != nil {
                map["versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["chargingWay"] as? Int32 {
                self.chargingWay = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["currentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["expireOn"] as? String {
                self.expireOn = value
            }
            if let value = dict["firstRankAlgoDeploymentId"] as? Int32 {
                self.firstRankAlgoDeploymentId = value
            }
            if let value = dict["hasPendingQuotaReviewTask"] as? Int32 {
                self.hasPendingQuotaReviewTask = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["lockedByExpiration"] as? Int32 {
                self.lockedByExpiration = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["pendingSecondRankAlgoDeploymentId"] as? Int32 {
                self.pendingSecondRankAlgoDeploymentId = value
            }
            if let value = dict["processingOrderId"] as? String {
                self.processingOrderId = value
            }
            if let value = dict["produced"] as? Int32 {
                self.produced = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["quota"] as? [String: Any?] {
                var model = ReplaceAppGroupCommodityCodeResponseBody.Result.Quota()
                model.fromMap(value)
                self.quota = model
            }
            if let value = dict["secondRankAlgoDeploymentId"] as? Int32 {
                self.secondRankAlgoDeploymentId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["switchedTime"] as? Int32 {
                self.switchedTime = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
            if let value = dict["versions"] as? [String] {
                self.versions = value
            }
        }
    }
    public var requestId: String?

    public var result: ReplaceAppGroupCommodityCodeResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ReplaceAppGroupCommodityCodeResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class ReplaceAppGroupCommodityCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceAppGroupCommodityCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReplaceAppGroupCommodityCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSortScriptFileRequest : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
        }
    }
}

public class SaveSortScriptFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SaveSortScriptFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSortScriptFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SaveSortScriptFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartSlowQueryAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class StartSlowQueryAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSlowQueryAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartSlowQueryAnalyzerResponseBody()
            model.fromMap(value)
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
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
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
        if let value = dict["tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindESUserAnalyzerRequest : Tea.TeaModel {
    public var body: Any?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class UnbindESUserAnalyzerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class UnbindESUserAnalyzerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindESUserAnalyzerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindESUserAnalyzerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindEsInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
    }
}

public class UnbindEsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindEsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

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
            map["all"] = self.all!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["tagKey"] = self.tagKey!
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
        if let value = dict["tagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagKeyShrink: String?

    public override init() {
        super.init()
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
        if self.resourceIdShrink != nil {
            map["resourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagKeyShrink != nil {
            map["tagKey"] = self.tagKeyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["all"] as? Bool {
            self.all = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tagKey"] as? String {
            self.tagKeyShrink = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var tequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tequestId != nil {
            map["tequestId"] = self.tequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tequestId"] as? String {
            self.tequestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABTestExperimentRequest : Tea.TeaModel {
    public var body: ABTestExperiment?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestExperiment()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateABTestExperimentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var online: Bool?

        public var params: [String: Any]?

        public var traffic: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.online != nil {
                map["online"] = self.online!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.traffic != nil {
                map["traffic"] = self.traffic!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["online"] as? Bool {
                self.online = value
            }
            if let value = dict["params"] as? [String: Any] {
                self.params = value
            }
            if let value = dict["traffic"] as? Int32 {
                self.traffic = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateABTestExperimentResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateABTestExperimentResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateABTestExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABTestExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateABTestExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABTestFixedFlowDividersRequest : Tea.TeaModel {
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
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String] {
            self.body = value
        }
    }
}

public class UpdateABTestFixedFlowDividersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String] {
            self.result = value
        }
    }
}

public class UpdateABTestFixedFlowDividersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABTestFixedFlowDividersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateABTestFixedFlowDividersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABTestGroupRequest : Tea.TeaModel {
    public var body: ABTestGroup?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestGroup()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateABTestGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var status: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateABTestGroupResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateABTestGroupResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateABTestGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABTestGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateABTestGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABTestSceneRequest : Tea.TeaModel {
    public var body: ABTestScene?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ABTestScene()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateABTestSceneResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var created: Int32?

        public var id: String?

        public var name: String?

        public var online: Bool?

        public var params: [String: Any]?

        public var traffic: Int32?

        public var updated: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.online != nil {
                map["online"] = self.online!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.traffic != nil {
                map["traffic"] = self.traffic!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int32 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["online"] as? Bool {
                self.online = value
            }
            if let value = dict["params"] as? [String: Any] {
                self.params = value
            }
            if let value = dict["traffic"] as? Int32 {
                self.traffic = value
            }
            if let value = dict["updated"] as? Int32 {
                self.updated = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateABTestSceneResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateABTestSceneResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class UpdateABTestSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABTestSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateABTestSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFetchFieldsRequest : Tea.TeaModel {
    public var body: [String]?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String] {
            self.body = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateFetchFieldsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Bool {
            self.result = value
        }
    }
}

public class UpdateFetchFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFetchFieldsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFetchFieldsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFunctionDefaultInstanceRequest : Tea.TeaModel {
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
            map["instanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class UpdateFunctionDefaultInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateFunctionDefaultInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionDefaultInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFunctionDefaultInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFunctionInstanceRequest : Tea.TeaModel {
    public class CreateParameters : Tea.TeaModel {
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
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public class UsageParameters : Tea.TeaModel {
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
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var createParameters: [UpdateFunctionInstanceRequest.CreateParameters]?

    public var cron: String?

    public var description_: String?

    public var usageParameters: [UpdateFunctionInstanceRequest.UsageParameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createParameters != nil {
            var tmp : [Any] = []
            for k in self.createParameters! {
                tmp.append(k.toMap())
            }
            map["createParameters"] = tmp
        }
        if self.cron != nil {
            map["cron"] = self.cron!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.usageParameters != nil {
            var tmp : [Any] = []
            for k in self.usageParameters! {
                tmp.append(k.toMap())
            }
            map["usageParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createParameters"] as? [Any?] {
            var tmp : [UpdateFunctionInstanceRequest.CreateParameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateFunctionInstanceRequest.CreateParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.createParameters = tmp
        }
        if let value = dict["cron"] as? String {
            self.cron = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["usageParameters"] as? [Any?] {
            var tmp : [UpdateFunctionInstanceRequest.UsageParameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateFunctionInstanceRequest.UsageParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.usageParameters = tmp
        }
    }
}

public class UpdateFunctionInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Int64?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Int64 {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateFunctionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFunctionInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFunctionResourceRequest : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Generators : Tea.TeaModel {
            public class Input : Tea.TeaModel {
                public class Features : Tea.TeaModel {
                    public var name: String?

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
                            map["Name"] = self.name!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var features: [UpdateFunctionResourceRequest.Data.Generators.Input.Features]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.features != nil {
                        var tmp : [Any] = []
                        for k in self.features! {
                            tmp.append(k.toMap())
                        }
                        map["Features"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Features"] as? [Any?] {
                        var tmp : [UpdateFunctionResourceRequest.Data.Generators.Input.Features] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateFunctionResourceRequest.Data.Generators.Input.Features()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.features = tmp
                    }
                }
            }
            public var generator: String?

            public var input: UpdateFunctionResourceRequest.Data.Generators.Input?

            public var output: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.input?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.generator != nil {
                    map["Generator"] = self.generator!
                }
                if self.input != nil {
                    map["Input"] = self.input?.toMap()
                }
                if self.output != nil {
                    map["Output"] = self.output!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Generator"] as? String {
                    self.generator = value
                }
                if let value = dict["Input"] as? [String: Any?] {
                    var model = UpdateFunctionResourceRequest.Data.Generators.Input()
                    model.fromMap(value)
                    self.input = model
                }
                if let value = dict["Output"] as? String {
                    self.output = value
                }
            }
        }
        public var content: String?

        public var generators: [UpdateFunctionResourceRequest.Data.Generators]?

        public override init() {
            super.init()
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
            if self.generators != nil {
                var tmp : [Any] = []
                for k in self.generators! {
                    tmp.append(k.toMap())
                }
                map["Generators"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Generators"] as? [Any?] {
                var tmp : [UpdateFunctionResourceRequest.Data.Generators] = []
                for v in value {
                    if v != nil {
                        var model = UpdateFunctionResourceRequest.Data.Generators()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.generators = tmp
            }
        }
    }
    public var data: UpdateFunctionResourceRequest.Data?

    public var description_: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateFunctionResourceRequest.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateFunctionResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpCode: Int64?

    public var latency: Double?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.latency != nil {
            map["Latency"] = self.latency!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpCode"] as? Int64 {
            self.httpCode = value
        }
        if let value = dict["Latency"] as? Double {
            self.latency = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateFunctionResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFunctionResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSearchStrategyRequest : Tea.TeaModel {
    public var body: SearchStrategy?

    public override init() {
        super.init()
    }

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
            var model = SearchStrategy()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSearchStrategyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateSearchStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSearchStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSearchStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSortScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateSortScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSortScriptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSortScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSummariesRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var element: String?

        public var ellipsis: String?

        public var field: String?

        public var len: Int32?

        public var snippet: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.element != nil {
                map["element"] = self.element!
            }
            if self.ellipsis != nil {
                map["ellipsis"] = self.ellipsis!
            }
            if self.field != nil {
                map["field"] = self.field!
            }
            if self.len != nil {
                map["len"] = self.len!
            }
            if self.snippet != nil {
                map["snippet"] = self.snippet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["element"] as? String {
                self.element = value
            }
            if let value = dict["ellipsis"] as? String {
                self.ellipsis = value
            }
            if let value = dict["field"] as? String {
                self.field = value
            }
            if let value = dict["len"] as? Int32 {
                self.len = value
            }
            if let value = dict["snippet"] as? Int32 {
                self.snippet = value
            }
        }
    }
    public var body: [UpdateSummariesRequest.Body]?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [Any?] {
            var tmp : [UpdateSummariesRequest.Body] = []
            for v in value {
                if v != nil {
                    var model = UpdateSummariesRequest.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateSummariesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Bool {
            self.result = value
        }
    }
}

public class UpdateSummariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSummariesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSummariesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateDataSourcesRequest : Tea.TeaModel {
    public var body: DataSource?

    public override init() {
        super.init()
    }

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
            var model = DataSource()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateDataSourcesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSource : Tea.TeaModel {
            public var parameters: [String: Any]?

            public var tableName: String?

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
                if self.parameters != nil {
                    map["parameters"] = self.parameters!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["parameters"] as? [String: Any] {
                    self.parameters = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var code: String?

        public var dataSource: ValidateDataSourcesResponseBody.Result.DataSource?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource?.toMap()
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["dataSource"] as? [String: Any?] {
                var model = ValidateDataSourcesResponseBody.Result.DataSource()
                model.fromMap(value)
                self.dataSource = model
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
        }
    }
    public var requestId: String?

    public var result: [ValidateDataSourcesResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ValidateDataSourcesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ValidateDataSourcesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class ValidateDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ValidateDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
