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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("online") && dict["online"] != nil {
            self.online = dict["online"] as! Bool
        }
        if dict.keys.contains("params") && dict["params"] != nil {
            self.params = dict["params"] as! [String: String]
        }
        if dict.keys.contains("serialNumber") && dict["serialNumber"] != nil {
            self.serialNumber = dict["serialNumber"] as! Int32
        }
        if dict.keys.contains("traffic") && dict["traffic"] != nil {
            self.traffic = dict["traffic"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("values") && dict["values"] != nil {
            self.values = dict["values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("maxQueryClauseLength") && dict["maxQueryClauseLength"] != nil {
                self.maxQueryClauseLength = dict["maxQueryClauseLength"] as! Int32
            }
            if dict.keys.contains("maxTimeoutMS") && dict["maxTimeoutMS"] != nil {
                self.maxTimeoutMS = dict["maxTimeoutMS"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoSwitch") && dict["autoSwitch"] != nil {
            self.autoSwitch = dict["autoSwitch"] as! Bool
        }
        if dict.keys.contains("cluster") && dict["cluster"] != nil {
            var model = App.Cluster()
            model.fromMap(dict["cluster"] as! [String: Any])
            self.cluster = model
        }
        if dict.keys.contains("dataSources") && dict["dataSources"] != nil {
            var tmp : [DataSource] = []
            for v in dict["dataSources"] as! [Any] {
                var model = DataSource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            var model = Domain()
            model.fromMap(dict["domain"] as! [String: Any])
            self.domain = model
        }
        if dict.keys.contains("fetchFields") && dict["fetchFields"] != nil {
            self.fetchFields = dict["fetchFields"] as! [String]
        }
        if dict.keys.contains("firstRanks") && dict["firstRanks"] != nil {
            var tmp : [FirstRank] = []
            for v in dict["firstRanks"] as! [Any] {
                var model = FirstRank()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.firstRanks = tmp
        }
        if dict.keys.contains("networkType") && dict["networkType"] != nil {
            self.networkType = dict["networkType"] as! String
        }
        if dict.keys.contains("queryProcessors") && dict["queryProcessors"] != nil {
            var tmp : [QueryProcessor] = []
            for v in dict["queryProcessors"] as! [Any] {
                var model = QueryProcessor()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryProcessors = tmp
        }
        if dict.keys.contains("quota") && dict["quota"] != nil {
            var model = Quota()
            model.fromMap(dict["quota"] as! [String: Any])
            self.quota = model
        }
        if dict.keys.contains("realtimeShared") && dict["realtimeShared"] != nil {
            self.realtimeShared = dict["realtimeShared"] as! Bool
        }
        if dict.keys.contains("schema") && dict["schema"] != nil {
            var model = Schema()
            model.fromMap(dict["schema"] as! [String: Any])
            self.schema = model
        }
        if dict.keys.contains("schemas") && dict["schemas"] != nil {
            var tmp : [Schema] = []
            for v in dict["schemas"] as! [Any] {
                var model = Schema()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.schemas = tmp
        }
        if dict.keys.contains("secondRanks") && dict["secondRanks"] != nil {
            var tmp : [SecondRank] = []
            for v in dict["secondRanks"] as! [Any] {
                var model = SecondRank()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.secondRanks = tmp
        }
        if dict.keys.contains("summaries") && dict["summaries"] != nil {
            var tmp : [Summary] = []
            for v in dict["summaries"] as! [Any] {
                var model = Summary()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.summaries = tmp
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class AppGroup : Tea.TeaModel {
    public var chargeType: String?

    public var chargingWay: String?

    public var description_: String?

    public var domain: String?

    public var name: String?

    public var quota: Quota?

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
        if self.chargingWay != nil {
            map["chargingWay"] = self.chargingWay!
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
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
            self.chargingWay = dict["chargingWay"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("quota") && dict["quota"] != nil {
            var model = Quota()
            model.fromMap(dict["quota"] as! [String: Any])
            self.quota = model
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fields") && dict["fields"] != nil {
            self.fields = dict["fields"] as! [[String: String]]
        }
        if dict.keys.contains("keyField") && dict["keyField"] != nil {
            self.keyField = dict["keyField"] as! String
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: Any]
        }
        if dict.keys.contains("plugins") && dict["plugins"] != nil {
            var tmp : [String: DataSourcePluginsValue] = [:]
            for (k, v) in dict["plugins"] as! [String: Any] {
                if v != nil {
                    var model = DataSourcePluginsValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.plugins = tmp
        }
        if dict.keys.contains("schemaName") && dict["schemaName"] != nil {
            self.schemaName = dict["schemaName"] as! String
        }
        if dict.keys.contains("tableName") && dict["tableName"] != nil {
            self.tableName = dict["tableName"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("functions") && dict["functions"] != nil {
            self.functions = dict["functions"] as! [String: [String]]
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("meta") && dict["meta"] != nil {
            self.meta = dict["meta"] as! Any
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoRenew") && dict["autoRenew"] != nil {
            self.autoRenew = dict["autoRenew"] as! Bool
        }
        if dict.keys.contains("duration") && dict["duration"] != nil {
            self.duration = dict["duration"] as! Int32
        }
        if dict.keys.contains("pricingCycle") && dict["pricingCycle"] != nil {
            self.pricingCycle = dict["pricingCycle"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("indexes") && dict["indexes"] != nil {
            self.indexes = dict["indexes"] as! [String]
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("processors") && dict["processors"] != nil {
            self.processors = dict["processors"] as! [[String: Any]]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
            self.computeResource = dict["computeResource"] as! Int32
        }
        if dict.keys.contains("docSize") && dict["docSize"] != nil {
            self.docSize = dict["docSize"] as! Int32
        }
        if dict.keys.contains("orderType") && dict["orderType"] != nil {
            self.orderType = dict["orderType"] as! String
        }
        if dict.keys.contains("spec") && dict["spec"] != nil {
            self.spec = dict["spec"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("days") && dict["days"] != nil {
                self.days = dict["days"] as! Int32
            }
            if dict.keys.contains("expression") && dict["expression"] != nil {
                self.expression = dict["expression"] as! String
            }
            if dict.keys.contains("field") && dict["field"] != nil {
                self.field = dict["field"] as! String
            }
            if dict.keys.contains("unit") && dict["unit"] != nil {
                self.unit = dict["unit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoSwitch") && dict["autoSwitch"] != nil {
            self.autoSwitch = dict["autoSwitch"] as! Bool
        }
        if dict.keys.contains("cron") && dict["cron"] != nil {
            self.cron = dict["cron"] as! String
        }
        if dict.keys.contains("enabled") && dict["enabled"] != nil {
            self.enabled = dict["enabled"] as! Bool
        }
        if dict.keys.contains("filter") && dict["filter"] != nil {
            var model = ScheduledTask.Filter()
            model.fromMap(dict["filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("forkedAppId") && dict["forkedAppId"] != nil {
            self.forkedAppId = dict["forkedAppId"] as! String
        }
        if dict.keys.contains("permanent") && dict["permanent"] != nil {
            self.permanent = dict["permanent"] as! Bool
        }
        if dict.keys.contains("runNow") && dict["runNow"] != nil {
            self.runNow = dict["runNow"] as! Bool
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("direction") && dict["direction"] != nil {
                self.direction = dict["direction"] as! String
            }
            if dict.keys.contains("field") && dict["field"] != nil {
                self.field = dict["field"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("filterFields") && dict["filterFields"] != nil {
                self.filterFields = dict["filterFields"] as! [String]
            }
            if dict.keys.contains("searchFields") && dict["searchFields"] != nil {
                var tmp : [String: SchemaIndexesSearchFieldsValue] = [:]
                for (k, v) in dict["searchFields"] as! [String: Any] {
                    if v != nil {
                        var model = SchemaIndexesSearchFieldsValue()
                        model.fromMap(v as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ttl") && dict["ttl"] != nil {
                self.ttl = dict["ttl"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("indexSortConfig") && dict["indexSortConfig"] != nil {
            var tmp : [Schema.IndexSortConfig] = []
            for v in dict["indexSortConfig"] as! [Any] {
                var model = Schema.IndexSortConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.indexSortConfig = tmp
        }
        if dict.keys.contains("indexes") && dict["indexes"] != nil {
            var model = Schema.Indexes()
            model.fromMap(dict["indexes"] as! [String: Any])
            self.indexes = model
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("routeField") && dict["routeField"] != nil {
            self.routeField = dict["routeField"] as! String
        }
        if dict.keys.contains("routeFieldValues") && dict["routeFieldValues"] != nil {
            self.routeFieldValues = dict["routeFieldValues"] as! [String]
        }
        if dict.keys.contains("secondRouteField") && dict["secondRouteField"] != nil {
            self.secondRouteField = dict["secondRouteField"] as! String
        }
        if dict.keys.contains("tables") && dict["tables"] != nil {
            var tmp : [String: SchemaTablesValue] = [:]
            for (k, v) in dict["tables"] as! [String: Any] {
                if v != nil {
                    var model = SchemaTablesValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.tables = tmp
        }
        if dict.keys.contains("ttlField") && dict["ttlField"] != nil {
            var model = Schema.TtlField()
            model.fromMap(dict["ttlField"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("docCount") && dict["docCount"] != nil {
                self.docCount = dict["docCount"] as! Int32
            }
            if dict.keys.contains("rankName") && dict["rankName"] != nil {
                self.rankName = dict["rankName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("firstRankName") && dict["firstRankName"] != nil {
                self.firstRankName = dict["firstRankName"] as! String
            }
            if dict.keys.contains("mergeProportion") && dict["mergeProportion"] != nil {
                self.mergeProportion = dict["mergeProportion"] as! Int32
            }
            if dict.keys.contains("queryType") && dict["queryType"] != nil {
                self.queryType = dict["queryType"] as! String
            }
            if dict.keys.contains("secondRankName") && dict["secondRankName"] != nil {
                self.secondRankName = dict["secondRankName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
            self.isDefault = dict["isDefault"] as! Bool
        }
        if dict.keys.contains("mergeConfig") && dict["mergeConfig"] != nil {
            var model = SearchStrategy.MergeConfig()
            model.fromMap(dict["mergeConfig"] as! [String: Any])
            self.mergeConfig = model
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("searchConfigs") && dict["searchConfigs"] != nil {
            var tmp : [SearchStrategy.SearchConfigs] = []
            for v in dict["searchConfigs"] as! [Any] {
                var model = SearchStrategy.SearchConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("meta") && dict["meta"] != nil {
            self.meta = dict["meta"] as! Any
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("element") && dict["element"] != nil {
                self.element = dict["element"] as! String
            }
            if dict.keys.contains("ellipsis") && dict["ellipsis"] != nil {
                self.ellipsis = dict["ellipsis"] as! String
            }
            if dict.keys.contains("field") && dict["field"] != nil {
                self.field = dict["field"] as! String
            }
            if dict.keys.contains("len") && dict["len"] != nil {
                self.len = dict["len"] as! Int32
            }
            if dict.keys.contains("snippet") && dict["snippet"] != nil {
                self.snippet = dict["snippet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("meta") && dict["meta"] != nil {
            var model = Summary.Meta()
            model.fromMap(dict["meta"] as! [String: Any])
            self.meta = model
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("fromFields") && dict["fromFields"] != nil {
            self.fromFields = dict["fromFields"] as! String
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analyzer") && dict["analyzer"] != nil {
            self.analyzer = dict["analyzer"] as! String
        }
        if dict.keys.contains("analyzerType") && dict["analyzerType"] != nil {
            self.analyzerType = dict["analyzerType"] as! String
        }
        if dict.keys.contains("analyzerGeneration") && dict["analyzerGeneration"] != nil {
            self.analyzerGeneration = dict["analyzerGeneration"] as! String
        }
        if dict.keys.contains("fields") && dict["fields"] != nil {
            self.fields = dict["fields"] as! [String]
        }
        if dict.keys.contains("label") && dict["label"] != nil {
            self.label = dict["label"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("primaryTable") && dict["primaryTable"] != nil {
            self.primaryTable = dict["primaryTable"] as! Bool
        }
        if dict.keys.contains("fields") && dict["fields"] != nil {
            var tmp : [String: SchemaTablesValueFieldsValue] = [:]
            for (k, v) in dict["fields"] as! [String: Any] {
                if v != nil {
                    var model = SchemaTablesValueFieldsValue()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("primaryKey") && dict["primaryKey"] != nil {
            self.primaryKey = dict["primaryKey"] as! Bool
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("joinWith") && dict["joinWith"] != nil {
            self.joinWith = dict["joinWith"] as! [String]
        }
        if dict.keys.contains("label") && dict["label"] != nil {
            self.label = dict["label"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = BindESUserAnalyzerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = BindEsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = CompileSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestExperiment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online") && dict["online"] != nil {
                self.online = dict["online"] as! Bool
            }
            if dict.keys.contains("params") && dict["params"] != nil {
                self.params = dict["params"] as! [String: Any]
            }
            if dict.keys.contains("traffic") && dict["traffic"] != nil {
                self.traffic = dict["traffic"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateABTestExperimentResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateABTestExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestGroup()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateABTestGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateABTestGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestScene()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
            }
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateABTestSceneResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateABTestSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var body: App?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = App()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppGroupRequest : Tea.TeaModel {
    public var body: AppGroup?

    public override init() {
        super.init()
    }

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AppGroup()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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

        public var quota: CreateAppGroupResponseBody.Result.Quota?

        public var secondRankAlgoDeploymentId: Int32?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = CreateAppGroupResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateAppGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FirstRank()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arg") && dict["arg"] != nil {
                    self.arg = dict["arg"] as! String
                }
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    self.attribute = dict["attribute"] as! String
                }
                if dict.keys.contains("weight") && dict["weight"] != nil {
                    self.weight = dict["weight"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                var tmp : [CreateFirstRankResponseBody.Result.Meta] = []
                for v in dict["meta"] as! [Any] {
                    var model = CreateFirstRankResponseBody.Result.Meta()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meta = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateFirstRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateFirstRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createParameters") && dict["createParameters"] != nil {
            var tmp : [CreateFunctionInstanceRequest.CreateParameters] = []
            for v in dict["createParameters"] as! [Any] {
                var model = CreateFunctionInstanceRequest.CreateParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.createParameters = tmp
        }
        if dict.keys.contains("cron") && dict["cron"] != nil {
            self.cron = dict["cron"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("functionType") && dict["functionType"] != nil {
            self.functionType = dict["functionType"] as! String
        }
        if dict.keys.contains("instanceName") && dict["instanceName"] != nil {
            self.instanceName = dict["instanceName"] as! String
        }
        if dict.keys.contains("modelType") && dict["modelType"] != nil {
            self.modelType = dict["modelType"] as! String
        }
        if dict.keys.contains("usageParameters") && dict["usageParameters"] != nil {
            var tmp : [CreateFunctionInstanceRequest.UsageParameters] = []
            for v in dict["usageParameters"] as! [Any] {
                var model = CreateFunctionInstanceRequest.UsageParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = CreateFunctionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = CreateFunctionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analyzerType") && dict["analyzerType"] != nil {
            self.analyzerType = dict["analyzerType"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzer") && dict["analyzer"] != nil {
                self.analyzer = dict["analyzer"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateInterventionDictionaryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateInterventionDictionaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! Any
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("processors") && dict["processors"] != nil {
                self.processors = dict["processors"] as! [[String: Any]]
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateQueryProcessorResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = CreateQueryProcessorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ScheduledTask()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = CreateScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchStrategy()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = CreateSearchStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SecondRank()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = CreateSecondRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSortScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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
            var model = CreateSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("business") && dict["business"] != nil {
            self.business = dict["business"] as! String
        }
        if dict.keys.contains("businessAppGroupId") && dict["businessAppGroupId"] != nil {
            self.businessAppGroupId = dict["businessAppGroupId"] as! String
        }
        if dict.keys.contains("businessType") && dict["businessType"] != nil {
            self.businessType = dict["businessType"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = CreateUserAnalyzerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DeleteABTestExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DeleteABTestGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DeleteABTestSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = DeleteFunctionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = DeleteFunctionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = DeleteSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = DeleteSortScriptFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("first_formula_name") && dict["first_formula_name"] != nil {
                    self.firstFormulaName = dict["first_formula_name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online") && dict["online"] != nil {
                self.online = dict["online"] as! Bool
            }
            if dict.keys.contains("params") && dict["params"] != nil {
                var model = DescribeABTestExperimentResponseBody.Result.Params()
                model.fromMap(dict["params"] as! [String: Any])
                self.params = model
            }
            if dict.keys.contains("traffic") && dict["traffic"] != nil {
                self.traffic = dict["traffic"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeABTestExperimentResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeABTestExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeABTestGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeABTestGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
            }
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeABTestSceneResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeABTestSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("algo") && dict["algo"] != nil {
                        self.algo = dict["algo"] as! [String]
                    }
                    if dict.keys.contains("qp") && dict["qp"] != nil {
                        self.qp = dict["qp"] as! [String]
                    }
                    if dict.keys.contains("service") && dict["service"] != nil {
                        self.service = dict["service"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") && dict["category"] != nil {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("functions") && dict["functions"] != nil {
                    var model = DescribeAppResponseBody.Result.Domain.Functions()
                    model.fromMap(dict["functions"] as! [String: Any])
                    self.functions = model
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("qps") && dict["qps"] != nil {
                    self.qps = dict["qps"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
                }
            }
        }
        public var algoDeploymentId: Int32?

        public var autoSwitch: Bool?

        public var clusterName: String?

        public var created: Int32?

        public var description_: String?

        public var domain: DescribeAppResponseBody.Result.Domain?

        public var fetchFields: [String]?

        public var id: String?

        public var progressPercent: Int32?

        public var quota: DescribeAppResponseBody.Result.Quota?

        public var schema: [String: Any]?

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
            try self.domain?.validate()
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algoDeploymentId != nil {
                map["algoDeploymentId"] = self.algoDeploymentId!
            }
            if self.autoSwitch != nil {
                map["autoSwitch"] = self.autoSwitch!
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.created != nil {
                map["created"] = self.created!
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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.progressPercent != nil {
                map["progressPercent"] = self.progressPercent!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            if self.schema != nil {
                map["schema"] = self.schema!
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
            if dict.keys.contains("algoDeploymentId") && dict["algoDeploymentId"] != nil {
                self.algoDeploymentId = dict["algoDeploymentId"] as! Int32
            }
            if dict.keys.contains("autoSwitch") && dict["autoSwitch"] != nil {
                self.autoSwitch = dict["autoSwitch"] as! Bool
            }
            if dict.keys.contains("clusterName") && dict["clusterName"] != nil {
                self.clusterName = dict["clusterName"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                var model = DescribeAppResponseBody.Result.Domain()
                model.fromMap(dict["domain"] as! [String: Any])
                self.domain = model
            }
            if dict.keys.contains("fetchFields") && dict["fetchFields"] != nil {
                self.fetchFields = dict["fetchFields"] as! [String]
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("progressPercent") && dict["progressPercent"] != nil {
                self.progressPercent = dict["progressPercent"] as! Int32
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = DescribeAppResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("schema") && dict["schema"] != nil {
                self.schema = dict["schema"] as! [String: Any]
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = DescribeAppGroupResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [DescribeAppGroupResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = DescribeAppGroupResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeAppGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DescribeAppStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
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
            var model = DescribeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("dataCollectionType") && dict["dataCollectionType"] != nil {
                self.dataCollectionType = dict["dataCollectionType"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("industryName") && dict["industryName"] != nil {
                self.industryName = dict["industryName"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("sundialId") && dict["sundialId"] != nil {
                self.sundialId = dict["sundialId"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeDataCollctionResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeDataCollctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arg") && dict["arg"] != nil {
                    self.arg = dict["arg"] as! String
                }
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    self.attribute = dict["attribute"] as! String
                }
                if dict.keys.contains("weight") && dict["weight"] != nil {
                    self.weight = dict["weight"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                var tmp : [DescribeFirstRankResponseBody.Result.Meta] = []
                for v in dict["meta"] as! [Any] {
                    var model = DescribeFirstRankResponseBody.Result.Meta()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meta = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeFirstRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeFirstRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzer") && dict["analyzer"] != nil {
                self.analyzer = dict["analyzer"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeInterventionDictionaryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeInterventionDictionaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("processors") && dict["processors"] != nil {
                self.processors = dict["processors"] as! [[String: Any]]
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeQueryProcessorResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeQueryProcessorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var config: [String: Any]?

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
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") && dict["config"] != nil {
                self.config = dict["config"] as! [String: Any]
            }
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeRegionResponseBody.Result?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeRegionResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionResponseBody?

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
            var model = DescribeRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consoleUrl") && dict["consoleUrl"] != nil {
                self.consoleUrl = dict["consoleUrl"] as! String
            }
            if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("localName") && dict["localName"] != nil {
                self.localName = dict["localName"] as! String
            }
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
                self.regionId = dict["regionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [DescribeRegionsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = DescribeRegionsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DescribeScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
                self.isDefault = dict["isDefault"] as! String
            }
            if dict.keys.contains("isSys") && dict["isSys"] != nil {
                self.isSys = dict["isSys"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                self.meta = dict["meta"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeSecondRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeSecondRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appGroupId") && dict["appGroupId"] != nil {
                self.appGroupId = dict["appGroupId"] as! String
            }
            if dict.keys.contains("region") && dict["region"] != nil {
                self.region = dict["region"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = DescribeSlowQueryStatusResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = DescribeSlowQueryStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("with") && dict["with"] != nil {
            self.with = dict["with"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DescribeUserAnalyzerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = DisableSlowQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = EnableSlowQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Schema()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("spec") && dict["spec"] != nil {
            self.spec = dict["spec"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fromTable") && dict["fromTable"] != nil {
                self.fromTable = dict["fromTable"] as! [String: Any]
            }
            if dict.keys.contains("mergeTable") && dict["mergeTable"] != nil {
                self.mergeTable = dict["mergeTable"] as! [String: Any]
            }
            if dict.keys.contains("primaryKey") && dict["primaryKey"] != nil {
                self.primaryKey = dict["primaryKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GenerateMergedTableResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = GenerateMergedTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appGroupIdentity") && dict["appGroupIdentity"] != nil {
            self.appGroupIdentity = dict["appGroupIdentity"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = GetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("functionType") && dict["functionType"] != nil {
            self.functionType = dict["functionType"] as! String
        }
        if dict.keys.contains("modelType") && dict["modelType"] != nil {
            self.modelType = dict["modelType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Required") && dict["Required"] != nil {
                        self.required_ = dict["Required"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Condition") && dict["Condition"] != nil {
                        self.condition = dict["Condition"] as! String
                    }
                    if dict.keys.contains("Dependency") && dict["Dependency"] != nil {
                        self.dependency = dict["Dependency"] as! String
                    }
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Required") && dict["Required"] != nil {
                        self.required_ = dict["Required"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateParameters") && dict["CreateParameters"] != nil {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.CreateParameters] = []
                    for v in dict["CreateParameters"] as! [Any] {
                        var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.CreateParameters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.createParameters = tmp
                }
                if dict.keys.contains("Depends") && dict["Depends"] != nil {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.Depends] = []
                    for v in dict["Depends"] as! [Any] {
                        var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.Depends()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.depends = tmp
                }
                if dict.keys.contains("UsageParameters") && dict["UsageParameters"] != nil {
                    var tmp : [GetFunctionCurrentVersionResponseBody.Result.VersionConfig.UsageParameters] = []
                    for v in dict["UsageParameters"] as! [Any] {
                        var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig.UsageParameters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("FunctionType") && dict["FunctionType"] != nil {
                self.functionType = dict["FunctionType"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("VersionConfig") && dict["VersionConfig"] != nil {
                var model = GetFunctionCurrentVersionResponseBody.Result.VersionConfig()
                model.fromMap(dict["VersionConfig"] as! [String: Any])
                self.versionConfig = model
            }
            if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                self.versionId = dict["VersionId"] as! Int64
            }
            if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
                self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetFunctionCurrentVersionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = GetFunctionCurrentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
            self.functionName = dict["FunctionName"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetFunctionDefaultInstanceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = GetFunctionDefaultInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("output") && dict["output"] != nil {
            self.output = dict["output"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Domain") && dict["Domain"] != nil {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DagStatus") && dict["DagStatus"] != nil {
                    self.dagStatus = dict["DagStatus"] as! String
                }
                if dict.keys.contains("LastRunTime") && dict["LastRunTime"] != nil {
                    self.lastRunTime = dict["LastRunTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Belongs") && dict["Belongs"] != nil {
                var model = GetFunctionInstanceResponseBody.Result.Belongs()
                model.fromMap(dict["Belongs"] as! [String: Any])
                self.belongs = model
            }
            if dict.keys.contains("CreateParameters") && dict["CreateParameters"] != nil {
                var tmp : [GetFunctionInstanceResponseBody.Result.CreateParameters] = []
                for v in dict["CreateParameters"] as! [Any] {
                    var model = GetFunctionInstanceResponseBody.Result.CreateParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.createParameters = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Cron") && dict["Cron"] != nil {
                self.cron = dict["Cron"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("FunctionType") && dict["FunctionType"] != nil {
                self.functionType = dict["FunctionType"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Task") && dict["Task"] != nil {
                var model = GetFunctionInstanceResponseBody.Result.Task()
                model.fromMap(dict["Task"] as! [String: Any])
                self.task = model
            }
            if dict.keys.contains("UsageParameters") && dict["UsageParameters"] != nil {
                var tmp : [GetFunctionInstanceResponseBody.Result.UsageParameters] = []
                for v in dict["UsageParameters"] as! [Any] {
                    var model = GetFunctionInstanceResponseBody.Result.UsageParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.usageParameters = tmp
            }
            if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                self.versionId = dict["VersionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetFunctionInstanceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = GetFunctionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("Generation") && dict["Generation"] != nil {
                self.generation = dict["Generation"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("RunId") && dict["RunId"] != nil {
                self.runId = dict["RunId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetFunctionTaskResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = GetFunctionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Required") && dict["Required"] != nil {
                        self.required_ = dict["Required"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Condition") && dict["Condition"] != nil {
                        self.condition = dict["Condition"] as! String
                    }
                    if dict.keys.contains("Dependency") && dict["Dependency"] != nil {
                        self.dependency = dict["Dependency"] as! String
                    }
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Required") && dict["Required"] != nil {
                        self.required_ = dict["Required"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateParameters") && dict["CreateParameters"] != nil {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.CreateParameters] = []
                    for v in dict["CreateParameters"] as! [Any] {
                        var model = GetFunctionVersionResponseBody.Result.VersionConfig.CreateParameters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.createParameters = tmp
                }
                if dict.keys.contains("Depends") && dict["Depends"] != nil {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.Depends] = []
                    for v in dict["Depends"] as! [Any] {
                        var model = GetFunctionVersionResponseBody.Result.VersionConfig.Depends()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.depends = tmp
                }
                if dict.keys.contains("UsageParameters") && dict["UsageParameters"] != nil {
                    var tmp : [GetFunctionVersionResponseBody.Result.VersionConfig.UsageParameters] = []
                    for v in dict["UsageParameters"] as! [Any] {
                        var model = GetFunctionVersionResponseBody.Result.VersionConfig.UsageParameters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("FunctionType") && dict["FunctionType"] != nil {
                self.functionType = dict["FunctionType"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("VersionConfig") && dict["VersionConfig"] != nil {
                var model = GetFunctionVersionResponseBody.Result.VersionConfig()
                model.fromMap(dict["VersionConfig"] as! [String: Any])
                self.versionConfig = model
            }
            if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                self.versionId = dict["VersionId"] as! Int64
            }
            if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
                self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = GetFunctionVersionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = GetFunctionVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelReportResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class GetModelReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelReportResponseBody?

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
            var model = GetModelReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("fileName") && dict["fileName"] != nil {
                self.fileName = dict["fileName"] as! String
            }
            if dict.keys.contains("modifyTime") && dict["modifyTime"] != nil {
                self.modifyTime = dict["modifyTime"] as! String
            }
            if dict.keys.contains("pathName") && dict["pathName"] != nil {
                self.pathName = dict["pathName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [GetScriptFileNamesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = GetScriptFileNamesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = GetScriptFileNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = GetSearchStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSortScriptResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var scope: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("modifyTime") && dict["modifyTime"] != nil {
                self.modifyTime = dict["modifyTime"] as! String
            }
            if dict.keys.contains("scope") && dict["scope"] != nil {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetSortScriptResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = GetSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("modifyTime") && dict["modifyTime"] != nil {
                self.modifyTime = dict["modifyTime"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetSortScriptFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = GetSortScriptFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online") && dict["online"] != nil {
                self.online = dict["online"] as! Bool
            }
            if dict.keys.contains("params") && dict["params"] != nil {
                self.params = dict["params"] as! [String: Any]
            }
            if dict.keys.contains("traffic") && dict["traffic"] != nil {
                self.traffic = dict["traffic"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListABTestExperimentsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListABTestExperimentsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListABTestExperimentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String]
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
            var model = ListABTestFixedFlowDividersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListABTestGroupsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListABTestGroupsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListABTestGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
            }
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListABTestScenesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListABTestScenesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListABTestScenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("sortBy") && dict["sortBy"] != nil {
            self.sortBy = dict["sortBy"] as! Int32
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [ListAppGroupsRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = ListAppGroupsRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("sortBy") && dict["sortBy"] != nil {
            self.sortBy = dict["sortBy"] as! Int32
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tagsShrink = dict["tags"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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
        public var chargeType: String?

        public var chargingWay: Int32?

        public var commodityCode: String?

        public var created: Int32?

        public var currentVersion: String?

        public var description_: String?

        public var domain: String?

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

        public var quota: ListAppGroupsResponseBody.Result.Quota?

        public var secondRankAlgoDeploymentId: Int32?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = ListAppGroupsResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [ListAppGroupsResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListAppGroupsResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListAppGroupsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAppGroupsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListAppGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var group: Bool?

    public var page: Int32?

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
        if self.group != nil {
            map["group"] = self.group!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("group") && dict["group"] != nil {
            self.group = dict["group"] as! Bool
        }
        if dict.keys.contains("page") && dict["page"] != nil {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int32
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("dataCollectionType") && dict["dataCollectionType"] != nil {
                self.dataCollectionType = dict["dataCollectionType"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("industryName") && dict["industryName"] != nil {
                self.industryName = dict["industryName"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("sundialId") && dict["sundialId"] != nil {
                self.sundialId = dict["sundialId"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListDataCollectionsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataCollectionsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListDataCollectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("params") && dict["params"] != nil {
            self.params = dict["params"] as! String
        }
        if dict.keys.contains("rawType") && dict["rawType"] != nil {
            self.rawType = dict["rawType"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = ListDataSourceTableFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("params") && dict["params"] != nil {
            self.params = dict["params"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String]
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
            var model = ListDataSourceTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arg") && dict["arg"] != nil {
                    self.arg = dict["arg"] as! String
                }
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    self.attribute = dict["attribute"] as! String
                }
                if dict.keys.contains("weight") && dict["weight"] != nil {
                    self.weight = dict["weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                var tmp : [ListFirstRanksResponseBody.Result.Meta] = []
                for v in dict["meta"] as! [Any] {
                    var model = ListFirstRanksResponseBody.Result.Meta()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meta = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListFirstRanksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListFirstRanksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListFirstRanksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionType") && dict["functionType"] != nil {
            self.functionType = dict["functionType"] as! String
        }
        if dict.keys.contains("modelType") && dict["modelType"] != nil {
            self.modelType = dict["modelType"] as! String
        }
        if dict.keys.contains("output") && dict["output"] != nil {
            self.output = dict["output"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("source") && dict["source"] != nil {
            self.source = dict["source"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Domain") && dict["Domain"] != nil {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Language") && dict["Language"] != nil {
                    self.language = dict["Language"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Belongs") && dict["Belongs"] != nil {
                var model = ListFunctionInstancesResponseBody.Result.Belongs()
                model.fromMap(dict["Belongs"] as! [String: Any])
                self.belongs = model
            }
            if dict.keys.contains("CreateParameters") && dict["CreateParameters"] != nil {
                var tmp : [ListFunctionInstancesResponseBody.Result.CreateParameters] = []
                for v in dict["CreateParameters"] as! [Any] {
                    var model = ListFunctionInstancesResponseBody.Result.CreateParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.createParameters = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Cron") && dict["Cron"] != nil {
                self.cron = dict["Cron"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("FunctionType") && dict["FunctionType"] != nil {
                self.functionType = dict["FunctionType"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UsageParameters") && dict["UsageParameters"] != nil {
                var tmp : [ListFunctionInstancesResponseBody.Result.UsageParameters] = []
                for v in dict["UsageParameters"] as! [Any] {
                    var model = ListFunctionInstancesResponseBody.Result.UsageParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.usageParameters = tmp
            }
            if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                self.versionId = dict["VersionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var tmp : [ListFunctionInstancesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListFunctionInstancesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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
            var model = ListFunctionInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("Generation") && dict["Generation"] != nil {
                self.generation = dict["Generation"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("RunId") && dict["RunId"] != nil {
                self.runId = dict["RunId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var tmp : [ListFunctionTasksResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListFunctionTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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
            var model = ListFunctionTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("types") && dict["types"] != nil {
            self.types = dict["types"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzer") && dict["analyzer"] != nil {
                self.analyzer = dict["analyzer"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListInterventionDictionariesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInterventionDictionariesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListInterventionDictionariesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("word") && dict["word"] != nil {
            self.word = dict["word"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("order") && dict["order"] != nil {
                    self.order = dict["order"] as! Int32
                }
                if dict.keys.contains("tag") && dict["tag"] != nil {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tagLabel") && dict["tagLabel"] != nil {
                    self.tagLabel = dict["tagLabel"] as! String
                }
                if dict.keys.contains("token") && dict["token"] != nil {
                    self.token = dict["token"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cmd") && dict["cmd"] != nil {
                self.cmd = dict["cmd"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int64
            }
            if dict.keys.contains("relevance") && dict["relevance"] != nil {
                self.relevance = dict["relevance"] as! [String: Any]
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tokens") && dict["tokens"] != nil {
                var tmp : [ListInterventionDictionaryEntriesResponseBody.Result.Tokens] = []
                for v in dict["tokens"] as! [Any] {
                    var model = ListInterventionDictionaryEntriesResponseBody.Result.Tokens()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tokens = tmp
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int64
            }
            if dict.keys.contains("word") && dict["word"] != nil {
                self.word = dict["word"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListInterventionDictionaryEntriesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInterventionDictionaryEntriesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListInterventionDictionaryEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") && dict["query"] != nil {
            self.query = dict["query"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order") && dict["order"] != nil {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("tag") && dict["tag"] != nil {
                self.tag = dict["tag"] as! String
            }
            if dict.keys.contains("tagLabel") && dict["tagLabel"] != nil {
                self.tagLabel = dict["tagLabel"] as! String
            }
            if dict.keys.contains("token") && dict["token"] != nil {
                self.token = dict["token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListInterventionDictionaryNerResultsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInterventionDictionaryNerResultsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListInterventionDictionaryNerResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
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
            var model = ListInterventionDictionaryRelatedEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
        }
    }
}

public class ListModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsResponseBody?

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
            var model = ListModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterFinished") && dict["filterFinished"] != nil {
            self.filterFinished = dict["filterFinished"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = ListProceedingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("text") && dict["text"] != nil {
            self.text = dict["text"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = ListQueryProcessorAnalyzerResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("label") && dict["label"] != nil {
                self.label = dict["label"] as! String
            }
            if dict.keys.contains("order") && dict["order"] != nil {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("priority") && dict["priority"] != nil {
                self.priority = dict["priority"] as! String
            }
            if dict.keys.contains("tag") && dict["tag"] != nil {
                self.tag = dict["tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListQueryProcessorNersResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListQueryProcessorNersResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListQueryProcessorNersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("isActive") && dict["isActive"] != nil {
            self.isActive = dict["isActive"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("processors") && dict["processors"] != nil {
                self.processors = dict["processors"] as! [[String: Any]]
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListQueryProcessorsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListQueryProcessorsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListQueryProcessorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appGroupId") && dict["appGroupId"] != nil {
                self.appGroupId = dict["appGroupId"] as! Int32
            }
            if dict.keys.contains("appGroupName") && dict["appGroupName"] != nil {
                self.appGroupName = dict["appGroupName"] as! String
            }
            if dict.keys.contains("appGroupType") && dict["appGroupType"] != nil {
                self.appGroupType = dict["appGroupType"] as! String
            }
            if dict.keys.contains("approved") && dict["approved"] != nil {
                self.approved = dict["approved"] as! Bool
            }
            if dict.keys.contains("available") && dict["available"] != nil {
                self.available = dict["available"] as! Bool
            }
            if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int32
            }
            if dict.keys.contains("memo") && dict["memo"] != nil {
                self.memo = dict["memo"] as! String
            }
            if dict.keys.contains("newComputeResource") && dict["newComputeResource"] != nil {
                self.newComputeResource = dict["newComputeResource"] as! Int32
            }
            if dict.keys.contains("newSocSize") && dict["newSocSize"] != nil {
                self.newSocSize = dict["newSocSize"] as! Int32
            }
            if dict.keys.contains("newSpec") && dict["newSpec"] != nil {
                self.newSpec = dict["newSpec"] as! String
            }
            if dict.keys.contains("oldComputeResource") && dict["oldComputeResource"] != nil {
                self.oldComputeResource = dict["oldComputeResource"] as! Int32
            }
            if dict.keys.contains("oldDocSize") && dict["oldDocSize"] != nil {
                self.oldDocSize = dict["oldDocSize"] as! Int32
            }
            if dict.keys.contains("oldSpec") && dict["oldSpec"] != nil {
                self.oldSpec = dict["oldSpec"] as! String
            }
            if dict.keys.contains("pending") && dict["pending"] != nil {
                self.pending = dict["pending"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListQuotaReviewTasksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListQuotaReviewTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListQuotaReviewTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int64
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
            var model = ListScheduledTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = ListSearchStrategiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
                self.isDefault = dict["isDefault"] as! String
            }
            if dict.keys.contains("isSys") && dict["isSys"] != nil {
                self.isSys = dict["isSys"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                self.meta = dict["meta"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListSecondRanksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListSecondRanksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListSecondRanksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzeStatus") && dict["analyzeStatus"] != nil {
                self.analyzeStatus = dict["analyzeStatus"] as! String
            }
            if dict.keys.contains("end") && dict["end"] != nil {
                self.end = dict["end"] as! Int32
            }
            if dict.keys.contains("start") && dict["start"] != nil {
                self.start = dict["start"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ListSlowQueryCategoriesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ListSlowQueryCategoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appQuery") && dict["appQuery"] != nil {
                self.appQuery = dict["appQuery"] as! String
            }
            if dict.keys.contains("end") && dict["end"] != nil {
                self.end = dict["end"] as! Int32
            }
            if dict.keys.contains("index") && dict["index"] != nil {
                self.index = dict["index"] as! Int32
            }
            if dict.keys.contains("start") && dict["start"] != nil {
                self.start = dict["start"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ListSlowQueryQueriesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ListSlowQueryQueriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListSortExpressionsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListSortExpressionsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListSortExpressionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("modifyTime") && dict["modifyTime"] != nil {
                self.modifyTime = dict["modifyTime"] as! String
            }
            if dict.keys.contains("scope") && dict["scope"] != nil {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("scriptName") && dict["scriptName"] != nil {
                self.scriptName = dict["scriptName"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListSortScriptsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListSortScriptsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ListSortScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columns") && dict["columns"] != nil {
            self.columns = dict["columns"] as! String
        }
        if dict.keys.contains("distinct") && dict["distinct"] != nil {
            self.distinct = dict["distinct"] as! Bool
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("query") && dict["query"] != nil {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sortBy") && dict["sortBy"] != nil {
            self.sortBy = dict["sortBy"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int32
        }
        if dict.keys.contains("stopTime") && dict["stopTime"] != nil {
            self.stopTime = dict["stopTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int64
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
            var model = ListStatisticLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columns") && dict["columns"] != nil {
            self.columns = dict["columns"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Int32
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("query") && dict["query"] != nil {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int64
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
            var model = ListStatisticReportResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceIdShrink = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            self.tagShrink = dict["tag"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("tagKey") && dict["tagKey"] != nil {
                self.tagKey = dict["tagKey"] as! String
            }
            if dict.keys.contains("tagValue") && dict["tagValue"] != nil {
                self.tagValue = dict["tagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListTagResourcesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListTagResourcesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("word") && dict["word"] != nil {
            self.word = dict["word"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = ListUserAnalyzerEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("available") && dict["available"] != nil {
                    self.available = dict["available"] as! Bool
                }
                if dict.keys.contains("created") && dict["created"] != nil {
                    self.created = dict["created"] as! Int32
                }
                if dict.keys.contains("entriesCount") && dict["entriesCount"] != nil {
                    self.entriesCount = dict["entriesCount"] as! Int32
                }
                if dict.keys.contains("entriesLimit") && dict["entriesLimit"] != nil {
                    self.entriesLimit = dict["entriesLimit"] as! Int32
                }
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("updated") && dict["updated"] != nil {
                    self.updated = dict["updated"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("available") && dict["available"] != nil {
                self.available = dict["available"] as! Bool
            }
            if dict.keys.contains("business") && dict["business"] != nil {
                self.business = dict["business"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("dicts") && dict["dicts"] != nil {
                var tmp : [ListUserAnalyzersResponseBody.Result.Dicts] = []
                for v in dict["dicts"] as! [Any] {
                    var model = ListUserAnalyzersResponseBody.Result.Dicts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dicts = tmp
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListUserAnalyzersResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListUserAnalyzersResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
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
            var model = ListUserAnalyzersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
            self.currentVersion = dict["currentVersion"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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

        public var quota: ModifyAppGroupResponseBody.Result.Quota?

        public var secondRankAlgoDeploymentId: Int32?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = ModifyAppGroupResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ModifyAppGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ModifyAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppGroupQuotaRequest : Tea.TeaModel {
    public var body: Quota?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Quota()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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

        public var quota: ModifyAppGroupQuotaResponseBody.Result.Quota?

        public var secondRankAlgoDeploymentId: Int32?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = ModifyAppGroupQuotaResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ModifyAppGroupQuotaResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ModifyAppGroupQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FirstRank()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arg") && dict["arg"] != nil {
                    self.arg = dict["arg"] as! String
                }
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    self.attribute = dict["attribute"] as! String
                }
                if dict.keys.contains("weight") && dict["weight"] != nil {
                    self.weight = dict["weight"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                var tmp : [ModifyFirstRankResponseBody.Result.Meta] = []
                for v in dict["meta"] as! [Any] {
                    var model = ModifyFirstRankResponseBody.Result.Meta()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meta = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ModifyFirstRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ModifyFirstRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! Any
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("processors") && dict["processors"] != nil {
                self.processors = dict["processors"] as! [[String: Any]]
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ModifyQueryProcessorResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ModifyQueryProcessorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = ModifyScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SecondRank()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
                self.isDefault = dict["isDefault"] as! String
            }
            if dict.keys.contains("isSys") && dict["isSys"] != nil {
                self.isSys = dict["isSys"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                self.meta = dict["meta"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ModifySecondRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ModifySecondRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreviewModelRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") && dict["query"] != nil {
            self.query = dict["query"] as! String
        }
    }
}

public class PreviewModelResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [[String: Any]]
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class PreviewModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewModelResponseBody?

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
            var model = PreviewModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [[String: Any]]
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String]
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
            var model = PushInterventionDictionaryEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cmd") && dict["cmd"] != nil {
                self.cmd = dict["cmd"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("splitEnabled") && dict["splitEnabled"] != nil {
                self.splitEnabled = dict["splitEnabled"] as! Bool
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("entries") && dict["entries"] != nil {
            var tmp : [PushUserAnalyzerEntriesRequest.Entries] = []
            for v in dict["entries"] as! [Any] {
                var model = PushUserAnalyzerEntriesRequest.Entries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entries = tmp
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = PushUserAnalyzerEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RankPreviewQueryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class RankPreviewQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RankPreviewQueryResponseBody?

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
            var model = RankPreviewQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = ReleaseSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [Int32]
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
            var model = RemoveAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [Int32]
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
            var model = RemoveAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! String
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
            var model = RemoveDataCollectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arg") && dict["arg"] != nil {
                    self.arg = dict["arg"] as! String
                }
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    self.attribute = dict["attribute"] as! String
                }
                if dict.keys.contains("weight") && dict["weight"] != nil {
                    self.weight = dict["weight"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("meta") && dict["meta"] != nil {
                var tmp : [RemoveFirstRankResponseBody.Result.Meta] = []
                for v in dict["meta"] as! [Any] {
                    var model = RemoveFirstRankResponseBody.Result.Meta()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meta = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = RemoveFirstRankResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = RemoveFirstRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analyzer") && dict["analyzer"] != nil {
                self.analyzer = dict["analyzer"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = RemoveInterventionDictionaryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = RemoveInterventionDictionaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! String
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
            var model = RemoveQueryProcessorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [Int32]
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
            var model = RemoveScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = RemoveSearchStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = RemoveSecondRankResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = RemoveUserAnalyzerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PrepayOrderInfo()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("clientToken") && dict["clientToken"] != nil {
            self.clientToken = dict["clientToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
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
            var model = RenewAppGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("computeResource") && dict["computeResource"] != nil {
                    self.computeResource = dict["computeResource"] as! Int32
                }
                if dict.keys.contains("docSize") && dict["docSize"] != nil {
                    self.docSize = dict["docSize"] as! Int32
                }
                if dict.keys.contains("spec") && dict["spec"] != nil {
                    self.spec = dict["spec"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("chargingWay") && dict["chargingWay"] != nil {
                self.chargingWay = dict["chargingWay"] as! Int32
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expireOn") && dict["expireOn"] != nil {
                self.expireOn = dict["expireOn"] as! String
            }
            if dict.keys.contains("firstRankAlgoDeploymentId") && dict["firstRankAlgoDeploymentId"] != nil {
                self.firstRankAlgoDeploymentId = dict["firstRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("hasPendingQuotaReviewTask") && dict["hasPendingQuotaReviewTask"] != nil {
                self.hasPendingQuotaReviewTask = dict["hasPendingQuotaReviewTask"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("lockedByExpiration") && dict["lockedByExpiration"] != nil {
                self.lockedByExpiration = dict["lockedByExpiration"] as! Int32
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pendingSecondRankAlgoDeploymentId") && dict["pendingSecondRankAlgoDeploymentId"] != nil {
                self.pendingSecondRankAlgoDeploymentId = dict["pendingSecondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("processingOrderId") && dict["processingOrderId"] != nil {
                self.processingOrderId = dict["processingOrderId"] as! String
            }
            if dict.keys.contains("produced") && dict["produced"] != nil {
                self.produced = dict["produced"] as! Int32
            }
            if dict.keys.contains("projectId") && dict["projectId"] != nil {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("quota") && dict["quota"] != nil {
                var model = ReplaceAppGroupCommodityCodeResponseBody.Result.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
            if dict.keys.contains("secondRankAlgoDeploymentId") && dict["secondRankAlgoDeploymentId"] != nil {
                self.secondRankAlgoDeploymentId = dict["secondRankAlgoDeploymentId"] as! Int32
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("switchedTime") && dict["switchedTime"] != nil {
                self.switchedTime = dict["switchedTime"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
            }
            if dict.keys.contains("versions") && dict["versions"] != nil {
                self.versions = dict["versions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ReplaceAppGroupCommodityCodeResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = ReplaceAppGroupCommodityCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = SaveSortScriptFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = StartSlowQueryAnalyzerResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = UnbindESUserAnalyzerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
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
            var model = UnbindEsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") && dict["all"] != nil {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tagKey") && dict["tagKey"] != nil {
            self.tagKey = dict["tagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") && dict["all"] != nil {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceIdShrink = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tagKey") && dict["tagKey"] != nil {
            self.tagKeyShrink = dict["tagKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tequestId") && dict["tequestId"] != nil {
            self.tequestId = dict["tequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestExperiment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online") && dict["online"] != nil {
                self.online = dict["online"] as! Bool
            }
            if dict.keys.contains("params") && dict["params"] != nil {
                self.params = dict["params"] as! [String: Any]
            }
            if dict.keys.contains("traffic") && dict["traffic"] != nil {
                self.traffic = dict["traffic"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = UpdateABTestExperimentResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = UpdateABTestExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String]
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
            var model = UpdateABTestFixedFlowDividersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestGroup()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = UpdateABTestGroupResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = UpdateABTestGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ABTestScene()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! Int32
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online") && dict["online"] != nil {
                self.online = dict["online"] as! Bool
            }
            if dict.keys.contains("params") && dict["params"] != nil {
                self.params = dict["params"] as! [String: Any]
            }
            if dict.keys.contains("traffic") && dict["traffic"] != nil {
                self.traffic = dict["traffic"] as! Int32
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = UpdateABTestSceneResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
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
            var model = UpdateABTestSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String]
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
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
            var model = UpdateFetchFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceName") && dict["instanceName"] != nil {
            self.instanceName = dict["instanceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = UpdateFunctionDefaultInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createParameters") && dict["createParameters"] != nil {
            var tmp : [UpdateFunctionInstanceRequest.CreateParameters] = []
            for v in dict["createParameters"] as! [Any] {
                var model = UpdateFunctionInstanceRequest.CreateParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.createParameters = tmp
        }
        if dict.keys.contains("cron") && dict["cron"] != nil {
            self.cron = dict["cron"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("usageParameters") && dict["usageParameters"] != nil {
            var tmp : [UpdateFunctionInstanceRequest.UsageParameters] = []
            for v in dict["usageParameters"] as! [Any] {
                var model = UpdateFunctionInstanceRequest.UsageParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int64
        }
        if dict.keys.contains("Latency") && dict["Latency"] != nil {
            self.latency = dict["Latency"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = UpdateFunctionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchStrategy()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = UpdateSearchStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
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
            var model = UpdateSortScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("element") && dict["element"] != nil {
                self.element = dict["element"] as! String
            }
            if dict.keys.contains("ellipsis") && dict["ellipsis"] != nil {
                self.ellipsis = dict["ellipsis"] as! String
            }
            if dict.keys.contains("field") && dict["field"] != nil {
                self.field = dict["field"] as! String
            }
            if dict.keys.contains("len") && dict["len"] != nil {
                self.len = dict["len"] as! Int32
            }
            if dict.keys.contains("snippet") && dict["snippet"] != nil {
                self.snippet = dict["snippet"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [UpdateSummariesRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = UpdateSummariesRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
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
            var model = UpdateSummariesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DataSource()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("parameters") && dict["parameters"] != nil {
                    self.parameters = dict["parameters"] as! [String: Any]
                }
                if dict.keys.contains("tableName") && dict["tableName"] != nil {
                    self.tableName = dict["tableName"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
                var model = ValidateDataSourcesResponseBody.Result.DataSource()
                model.fromMap(dict["dataSource"] as! [String: Any])
                self.dataSource = model
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ValidateDataSourcesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ValidateDataSourcesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
            var model = ValidateDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
