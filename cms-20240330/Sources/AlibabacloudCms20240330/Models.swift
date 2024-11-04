import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AlertEventIntegrationPolicyForModify : Tea.TeaModel {
    public var alertEventIntegrationPolicyName: String?

    public var description_: String?

    public var filterSetting: FilterSetting?

    public var integrationSetting: String?

    public var transformerSetting: [TransformAction]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEventIntegrationPolicyName != nil {
            map["alertEventIntegrationPolicyName"] = self.alertEventIntegrationPolicyName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.integrationSetting != nil {
            map["integrationSetting"] = self.integrationSetting!
        }
        if self.transformerSetting != nil {
            var tmp : [Any] = []
            for k in self.transformerSetting! {
                tmp.append(k.toMap())
            }
            map["transformerSetting"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEventIntegrationPolicyName") {
            self.alertEventIntegrationPolicyName = dict["alertEventIntegrationPolicyName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("integrationSetting") {
            self.integrationSetting = dict["integrationSetting"] as! String
        }
        if dict.keys.contains("transformerSetting") {
            var tmp : [TransformAction] = []
            for v in dict["transformerSetting"] as! [Any] {
                var model = TransformAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transformerSetting = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class AlertEventIntegrationPolicyForView : Tea.TeaModel {
    public var alertEventIntegrationPolicyId: String?

    public var alertEventIntegrationPolicyName: String?

    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var integrationSetting: String?

    public var transformerSetting: [TransformAction]?

    public var type: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEventIntegrationPolicyId != nil {
            map["alertEventIntegrationPolicyId"] = self.alertEventIntegrationPolicyId!
        }
        if self.alertEventIntegrationPolicyName != nil {
            map["alertEventIntegrationPolicyName"] = self.alertEventIntegrationPolicyName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.integrationSetting != nil {
            map["integrationSetting"] = self.integrationSetting!
        }
        if self.transformerSetting != nil {
            var tmp : [Any] = []
            for k in self.transformerSetting! {
                tmp.append(k.toMap())
            }
            map["transformerSetting"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEventIntegrationPolicyId") {
            self.alertEventIntegrationPolicyId = dict["alertEventIntegrationPolicyId"] as! String
        }
        if dict.keys.contains("alertEventIntegrationPolicyName") {
            self.alertEventIntegrationPolicyName = dict["alertEventIntegrationPolicyName"] as! String
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("integrationSetting") {
            self.integrationSetting = dict["integrationSetting"] as! String
        }
        if dict.keys.contains("transformerSetting") {
            var tmp : [TransformAction] = []
            for v in dict["transformerSetting"] as! [Any] {
                var model = TransformAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transformerSetting = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class AlertRuleAction : Tea.TeaModel {
    public var actions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            map["actions"] = self.actions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actions") {
            self.actions = dict["actions"] as! [String]
        }
    }
}

public class AlertRuleAlertMetricFilterDef : Tea.TeaModel {
    public class SupportedOpts : Tea.TeaModel {
        public var displayNameCn: String?

        public var displayNameEn: String?

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
            if self.displayNameCn != nil {
                map["displayNameCn"] = self.displayNameCn!
            }
            if self.displayNameEn != nil {
                map["displayNameEn"] = self.displayNameEn!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("displayNameCn") {
                self.displayNameCn = dict["displayNameCn"] as! String
            }
            if dict.keys.contains("displayNameEn") {
                self.displayNameEn = dict["displayNameEn"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var dim: String?

    public var displayNameCn: String?

    public var displayNameEn: String?

    public var hidden: Bool?

    public var opt: String?

    public var supportedOpts: [AlertRuleAlertMetricFilterDef.SupportedOpts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dim != nil {
            map["dim"] = self.dim!
        }
        if self.displayNameCn != nil {
            map["displayNameCn"] = self.displayNameCn!
        }
        if self.displayNameEn != nil {
            map["displayNameEn"] = self.displayNameEn!
        }
        if self.hidden != nil {
            map["hidden"] = self.hidden!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        if self.supportedOpts != nil {
            var tmp : [Any] = []
            for k in self.supportedOpts! {
                tmp.append(k.toMap())
            }
            map["supportedOpts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dim") {
            self.dim = dict["dim"] as! String
        }
        if dict.keys.contains("displayNameCn") {
            self.displayNameCn = dict["displayNameCn"] as! String
        }
        if dict.keys.contains("displayNameEn") {
            self.displayNameEn = dict["displayNameEn"] as! String
        }
        if dict.keys.contains("hidden") {
            self.hidden = dict["hidden"] as! Bool
        }
        if dict.keys.contains("opt") {
            self.opt = dict["opt"] as! String
        }
        if dict.keys.contains("supportedOpts") {
            var tmp : [AlertRuleAlertMetricFilterDef.SupportedOpts] = []
            for v in dict["supportedOpts"] as! [Any] {
                var model = AlertRuleAlertMetricFilterDef.SupportedOpts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.supportedOpts = tmp
        }
    }
}

public class AlertRuleAlertMetricInput : Tea.TeaModel {
    public var filterValues: [AlertRuleAlertMetricInputFilterValue]?

    public var groupId: String?

    public var metricId: String?

    public var paramValues: [AlertRuleAlertMetricInputParamValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterValues != nil {
            var tmp : [Any] = []
            for k in self.filterValues! {
                tmp.append(k.toMap())
            }
            map["filterValues"] = tmp
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.metricId != nil {
            map["metricId"] = self.metricId!
        }
        if self.paramValues != nil {
            var tmp : [Any] = []
            for k in self.paramValues! {
                tmp.append(k.toMap())
            }
            map["paramValues"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterValues") {
            var tmp : [AlertRuleAlertMetricInputFilterValue] = []
            for v in dict["filterValues"] as! [Any] {
                var model = AlertRuleAlertMetricInputFilterValue()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filterValues = tmp
        }
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
        }
        if dict.keys.contains("metricId") {
            self.metricId = dict["metricId"] as! String
        }
        if dict.keys.contains("paramValues") {
            var tmp : [AlertRuleAlertMetricInputParamValue] = []
            for v in dict["paramValues"] as! [Any] {
                var model = AlertRuleAlertMetricInputParamValue()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.paramValues = tmp
        }
    }
}

public class AlertRuleAlertMetricInputFilterValue : Tea.TeaModel {
    public var dim: String?

    public var opt: String?

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
        if self.dim != nil {
            map["dim"] = self.dim!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dim") {
            self.dim = dict["dim"] as! String
        }
        if dict.keys.contains("opt") {
            self.opt = dict["opt"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class AlertRuleAlertMetricInputParamValue : Tea.TeaModel {
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
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class AlertRuleAlertMetricParamDef : Tea.TeaModel {
    public class Values : Tea.TeaModel {
        public var labelCn: String?

        public var labelEn: String?

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
            if self.labelCn != nil {
                map["labelCn"] = self.labelCn!
            }
            if self.labelEn != nil {
                map["labelEn"] = self.labelEn!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("labelCn") {
                self.labelCn = dict["labelCn"] as! String
            }
            if dict.keys.contains("labelEn") {
                self.labelEn = dict["labelEn"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var maxWidth: Int32?

    public var minWidth: Int32?

    public var name: String?

    public var placeholderCn: String?

    public var placeholderEn: String?

    public var type: String?

    public var value: String?

    public var values: [AlertRuleAlertMetricParamDef.Values]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxWidth != nil {
            map["maxWidth"] = self.maxWidth!
        }
        if self.minWidth != nil {
            map["minWidth"] = self.minWidth!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.placeholderCn != nil {
            map["placeholderCn"] = self.placeholderCn!
        }
        if self.placeholderEn != nil {
            map["placeholderEn"] = self.placeholderEn!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxWidth") {
            self.maxWidth = dict["maxWidth"] as! Int32
        }
        if dict.keys.contains("minWidth") {
            self.minWidth = dict["minWidth"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("placeholderCn") {
            self.placeholderCn = dict["placeholderCn"] as! String
        }
        if dict.keys.contains("placeholderEn") {
            self.placeholderEn = dict["placeholderEn"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("values") {
            var tmp : [AlertRuleAlertMetricParamDef.Values] = []
            for v in dict["values"] as! [Any] {
                var model = AlertRuleAlertMetricParamDef.Values()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.values = tmp
        }
    }
}

public class AlertRuleCondition : Tea.TeaModel {
    public class CaseList : Tea.TeaModel {
        public var condition: String?

        public var countCondition: String?

        public var level: String?

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
            if self.countCondition != nil {
                map["countCondition"] = self.countCondition!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("condition") {
                self.condition = dict["condition"] as! String
            }
            if dict.keys.contains("countCondition") {
                self.countCondition = dict["countCondition"] as! String
            }
            if dict.keys.contains("level") {
                self.level = dict["level"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public class CompareList : Tea.TeaModel {
        public class ValueLevelList : Tea.TeaModel {
            public var level: String?

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
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("level") {
                    self.level = dict["level"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Double
                }
            }
        }
        public var aggregate: String?

        public var oper: String?

        public var value: Double?

        public var valueLevelList: [AlertRuleCondition.CompareList.ValueLevelList]?

        public var yoyTimeUnit: String?

        public var yoyTimeValue: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggregate != nil {
                map["aggregate"] = self.aggregate!
            }
            if self.oper != nil {
                map["oper"] = self.oper!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueLevelList != nil {
                var tmp : [Any] = []
                for k in self.valueLevelList! {
                    tmp.append(k.toMap())
                }
                map["valueLevelList"] = tmp
            }
            if self.yoyTimeUnit != nil {
                map["yoyTimeUnit"] = self.yoyTimeUnit!
            }
            if self.yoyTimeValue != nil {
                map["yoyTimeValue"] = self.yoyTimeValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aggregate") {
                self.aggregate = dict["aggregate"] as! String
            }
            if dict.keys.contains("oper") {
                self.oper = dict["oper"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Double
            }
            if dict.keys.contains("valueLevelList") {
                var tmp : [AlertRuleCondition.CompareList.ValueLevelList] = []
                for v in dict["valueLevelList"] as! [Any] {
                    var model = AlertRuleCondition.CompareList.ValueLevelList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.valueLevelList = tmp
            }
            if dict.keys.contains("yoyTimeUnit") {
                self.yoyTimeUnit = dict["yoyTimeUnit"] as! String
            }
            if dict.keys.contains("yoyTimeValue") {
                self.yoyTimeValue = dict["yoyTimeValue"] as! Int32
            }
        }
    }
    public var alertCount: Int32?

    public var caseList: [AlertRuleCondition.CaseList]?

    public var compareList: [AlertRuleCondition.CompareList]?

    public var noDataAppendValue: String?

    public var nodataAlertLevel: String?

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
        if self.alertCount != nil {
            map["alertCount"] = self.alertCount!
        }
        if self.caseList != nil {
            var tmp : [Any] = []
            for k in self.caseList! {
                tmp.append(k.toMap())
            }
            map["caseList"] = tmp
        }
        if self.compareList != nil {
            var tmp : [Any] = []
            for k in self.compareList! {
                tmp.append(k.toMap())
            }
            map["compareList"] = tmp
        }
        if self.noDataAppendValue != nil {
            map["noDataAppendValue"] = self.noDataAppendValue!
        }
        if self.nodataAlertLevel != nil {
            map["nodataAlertLevel"] = self.nodataAlertLevel!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertCount") {
            self.alertCount = dict["alertCount"] as! Int32
        }
        if dict.keys.contains("caseList") {
            var tmp : [AlertRuleCondition.CaseList] = []
            for v in dict["caseList"] as! [Any] {
                var model = AlertRuleCondition.CaseList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.caseList = tmp
        }
        if dict.keys.contains("compareList") {
            var tmp : [AlertRuleCondition.CompareList] = []
            for v in dict["compareList"] as! [Any] {
                var model = AlertRuleCondition.CompareList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.compareList = tmp
        }
        if dict.keys.contains("noDataAppendValue") {
            self.noDataAppendValue = dict["noDataAppendValue"] as! String
        }
        if dict.keys.contains("nodataAlertLevel") {
            self.nodataAlertLevel = dict["nodataAlertLevel"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class AlertRuleDataSource : Tea.TeaModel {
    public class DsList : Tea.TeaModel {
        public var project: String?

        public var regionId: String?

        public var store: String?

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
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.store != nil {
                map["store"] = self.store!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("store") {
                self.store = dict["store"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var dsList: [AlertRuleDataSource.DsList]?

    public var instanceId: String?

    public var namespace: String?

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
        if self.dsList != nil {
            var tmp : [Any] = []
            for k in self.dsList! {
                tmp.append(k.toMap())
            }
            map["dsList"] = tmp
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dsList") {
            var tmp : [AlertRuleDataSource.DsList] = []
            for v in dict["dsList"] as! [Any] {
                var model = AlertRuleDataSource.DsList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dsList = tmp
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class AlertRuleLabelFilter : Tea.TeaModel {
    public var labels: [String: String]?

    public var opt: String?

    public override init() {
        super.init()
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
            map["labels"] = self.labels!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("opt") {
            self.opt = dict["opt"] as! String
        }
    }
}

public class AlertRuleNotification : Tea.TeaModel {
    public var contacts: [String]?

    public var customWebhooks: [String]?

    public var dingWebhooks: [String]?

    public var fsWebhooks: [String]?

    public var groups: [String]?

    public var notifyTime: AlertRuleTimeSpan?

    public var silenceTime: Int64?

    public var slackWebhooks: [String]?

    public var wxWebhooks: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.notifyTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            map["contacts"] = self.contacts!
        }
        if self.customWebhooks != nil {
            map["customWebhooks"] = self.customWebhooks!
        }
        if self.dingWebhooks != nil {
            map["dingWebhooks"] = self.dingWebhooks!
        }
        if self.fsWebhooks != nil {
            map["fsWebhooks"] = self.fsWebhooks!
        }
        if self.groups != nil {
            map["groups"] = self.groups!
        }
        if self.notifyTime != nil {
            map["notifyTime"] = self.notifyTime?.toMap()
        }
        if self.silenceTime != nil {
            map["silenceTime"] = self.silenceTime!
        }
        if self.slackWebhooks != nil {
            map["slackWebhooks"] = self.slackWebhooks!
        }
        if self.wxWebhooks != nil {
            map["wxWebhooks"] = self.wxWebhooks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contacts") {
            self.contacts = dict["contacts"] as! [String]
        }
        if dict.keys.contains("customWebhooks") {
            self.customWebhooks = dict["customWebhooks"] as! [String]
        }
        if dict.keys.contains("dingWebhooks") {
            self.dingWebhooks = dict["dingWebhooks"] as! [String]
        }
        if dict.keys.contains("fsWebhooks") {
            self.fsWebhooks = dict["fsWebhooks"] as! [String]
        }
        if dict.keys.contains("groups") {
            self.groups = dict["groups"] as! [String]
        }
        if dict.keys.contains("notifyTime") {
            var model = AlertRuleTimeSpan()
            model.fromMap(dict["notifyTime"] as! [String: Any])
            self.notifyTime = model
        }
        if dict.keys.contains("silenceTime") {
            self.silenceTime = dict["silenceTime"] as! Int64
        }
        if dict.keys.contains("slackWebhooks") {
            self.slackWebhooks = dict["slackWebhooks"] as! [String]
        }
        if dict.keys.contains("wxWebhooks") {
            self.wxWebhooks = dict["wxWebhooks"] as! [String]
        }
    }
}

public class AlertRuleNotificationFilter : Tea.TeaModel {
    public var contacts: [String]?

    public var customWebhooks: [String]?

    public var dingWebhooks: [String]?

    public var fsWebhooks: [String]?

    public var groups: [String]?

    public var slackWebhooks: [String]?

    public var wxWebhooks: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            map["contacts"] = self.contacts!
        }
        if self.customWebhooks != nil {
            map["customWebhooks"] = self.customWebhooks!
        }
        if self.dingWebhooks != nil {
            map["dingWebhooks"] = self.dingWebhooks!
        }
        if self.fsWebhooks != nil {
            map["fsWebhooks"] = self.fsWebhooks!
        }
        if self.groups != nil {
            map["groups"] = self.groups!
        }
        if self.slackWebhooks != nil {
            map["slackWebhooks"] = self.slackWebhooks!
        }
        if self.wxWebhooks != nil {
            map["wxWebhooks"] = self.wxWebhooks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contacts") {
            self.contacts = dict["contacts"] as! [String]
        }
        if dict.keys.contains("customWebhooks") {
            self.customWebhooks = dict["customWebhooks"] as! [String]
        }
        if dict.keys.contains("dingWebhooks") {
            self.dingWebhooks = dict["dingWebhooks"] as! [String]
        }
        if dict.keys.contains("fsWebhooks") {
            self.fsWebhooks = dict["fsWebhooks"] as! [String]
        }
        if dict.keys.contains("groups") {
            self.groups = dict["groups"] as! [String]
        }
        if dict.keys.contains("slackWebhooks") {
            self.slackWebhooks = dict["slackWebhooks"] as! [String]
        }
        if dict.keys.contains("wxWebhooks") {
            self.wxWebhooks = dict["wxWebhooks"] as! [String]
        }
    }
}

public class AlertRuleQuery : Tea.TeaModel {
    public class Queries : Tea.TeaModel {
        public var duration: Int64?

        public var end: Int64?

        public var expr: String?

        public var start: Int64?

        public var timeUnit: String?

        public var window: String?

        public override init() {
            super.init()
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
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.expr != nil {
                map["expr"] = self.expr!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            if self.timeUnit != nil {
                map["timeUnit"] = self.timeUnit!
            }
            if self.window != nil {
                map["window"] = self.window!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("duration") {
                self.duration = dict["duration"] as! Int64
            }
            if dict.keys.contains("end") {
                self.end = dict["end"] as! Int64
            }
            if dict.keys.contains("expr") {
                self.expr = dict["expr"] as! String
            }
            if dict.keys.contains("start") {
                self.start = dict["start"] as! Int64
            }
            if dict.keys.contains("timeUnit") {
                self.timeUnit = dict["timeUnit"] as! String
            }
            if dict.keys.contains("window") {
                self.window = dict["window"] as! String
            }
        }
    }
    public var duration: Int64?

    public var expr: String?

    public var firstJoin: AlertRuleSlsQueryJoin?

    public var groupFieldList: [String]?

    public var groupType: String?

    public var queries: [AlertRuleQuery.Queries]?

    public var secondJoin: AlertRuleSlsQueryJoin?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.firstJoin?.validate()
        try self.secondJoin?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.expr != nil {
            map["expr"] = self.expr!
        }
        if self.firstJoin != nil {
            map["firstJoin"] = self.firstJoin?.toMap()
        }
        if self.groupFieldList != nil {
            map["groupFieldList"] = self.groupFieldList!
        }
        if self.groupType != nil {
            map["groupType"] = self.groupType!
        }
        if self.queries != nil {
            var tmp : [Any] = []
            for k in self.queries! {
                tmp.append(k.toMap())
            }
            map["queries"] = tmp
        }
        if self.secondJoin != nil {
            map["secondJoin"] = self.secondJoin?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("duration") {
            self.duration = dict["duration"] as! Int64
        }
        if dict.keys.contains("expr") {
            self.expr = dict["expr"] as! String
        }
        if dict.keys.contains("firstJoin") {
            var model = AlertRuleSlsQueryJoin()
            model.fromMap(dict["firstJoin"] as! [String: Any])
            self.firstJoin = model
        }
        if dict.keys.contains("groupFieldList") {
            self.groupFieldList = dict["groupFieldList"] as! [String]
        }
        if dict.keys.contains("groupType") {
            self.groupType = dict["groupType"] as! String
        }
        if dict.keys.contains("queries") {
            var tmp : [AlertRuleQuery.Queries] = []
            for v in dict["queries"] as! [Any] {
                var model = AlertRuleQuery.Queries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queries = tmp
        }
        if dict.keys.contains("secondJoin") {
            var model = AlertRuleSlsQueryJoin()
            model.fromMap(dict["secondJoin"] as! [String: Any])
            self.secondJoin = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class AlertRuleSend : Tea.TeaModel {
    public var action: AlertRuleAction?

    public var notification: AlertRuleNotification?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.action?.validate()
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action?.toMap()
        }
        if self.notification != nil {
            map["notification"] = self.notification?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") {
            var model = AlertRuleAction()
            model.fromMap(dict["action"] as! [String: Any])
            self.action = model
        }
        if dict.keys.contains("notification") {
            var model = AlertRuleNotification()
            model.fromMap(dict["notification"] as! [String: Any])
            self.notification = model
        }
    }
}

public class AlertRuleSlsQueryJoin : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var firstField: String?

        public var oper: String?

        public var secondField: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firstField != nil {
                map["firstField"] = self.firstField!
            }
            if self.oper != nil {
                map["oper"] = self.oper!
            }
            if self.secondField != nil {
                map["secondField"] = self.secondField!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("firstField") {
                self.firstField = dict["firstField"] as! String
            }
            if dict.keys.contains("oper") {
                self.oper = dict["oper"] as! String
            }
            if dict.keys.contains("secondField") {
                self.secondField = dict["secondField"] as! String
            }
        }
    }
    public var conditions: [AlertRuleSlsQueryJoin.Conditions]?

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
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conditions") {
            var tmp : [AlertRuleSlsQueryJoin.Conditions] = []
            for v in dict["conditions"] as! [Any] {
                var model = AlertRuleSlsQueryJoin.Conditions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditions = tmp
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class AlertRuleTimeSpan : Tea.TeaModel {
    public var dayOfWeek: [Int32]?

    public var endTime: String?

    public var gmtOffset: String?

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
        if self.dayOfWeek != nil {
            map["dayOfWeek"] = self.dayOfWeek!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.gmtOffset != nil {
            map["gmtOffset"] = self.gmtOffset!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dayOfWeek") {
            self.dayOfWeek = dict["dayOfWeek"] as! [Int32]
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("gmtOffset") {
            self.gmtOffset = dict["gmtOffset"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
    }
}

public class FilterSetting : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var field: String?

        public var op: String?

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
            if self.field != nil {
                map["field"] = self.field!
            }
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("field") {
                self.field = dict["field"] as! String
            }
            if dict.keys.contains("op") {
                self.op = dict["op"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var conditions: [FilterSetting.Conditions]?

    public var expression: String?

    public var relation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.expression != nil {
            map["expression"] = self.expression!
        }
        if self.relation != nil {
            map["relation"] = self.relation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conditions") {
            var tmp : [FilterSetting.Conditions] = []
            for v in dict["conditions"] as! [Any] {
                var model = FilterSetting.Conditions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditions = tmp
        }
        if dict.keys.contains("expression") {
            self.expression = dict["expression"] as! String
        }
        if dict.keys.contains("relation") {
            self.relation = dict["relation"] as! String
        }
    }
}

public class MaintainWindowForModify : Tea.TeaModel {
    public var description_: String?

    public var effective: String?

    public var endTime: String?

    public var filterSetting: FilterSetting?

    public var maintainWindowName: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effective != nil {
            map["effective"] = self.effective!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.maintainWindowName != nil {
            map["maintainWindowName"] = self.maintainWindowName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("effective") {
            self.effective = dict["effective"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("maintainWindowName") {
            self.maintainWindowName = dict["maintainWindowName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
    }
}

public class MaintainWindowForView : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var effective: String?

    public var enable: Bool?

    public var endTime: String?

    public var filterSetting: FilterSetting?

    public var maintainWindowId: String?

    public var maintainWindowName: String?

    public var startTime: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effective != nil {
            map["effective"] = self.effective!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.maintainWindowId != nil {
            map["maintainWindowId"] = self.maintainWindowId!
        }
        if self.maintainWindowName != nil {
            map["maintainWindowName"] = self.maintainWindowName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("effective") {
            self.effective = dict["effective"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("maintainWindowId") {
            self.maintainWindowId = dict["maintainWindowId"] as! String
        }
        if dict.keys.contains("maintainWindowName") {
            self.maintainWindowName = dict["maintainWindowName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class NotifyStrategyForModify : Tea.TeaModel {
    public class CustomTemplateEntries : Tea.TeaModel {
        public var targetType: String?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("templateUuid") {
                self.templateUuid = dict["templateUuid"] as! String
            }
        }
    }
    public class GroupingSetting : Tea.TeaModel {
        public var groupingKeys: [String]?

        public var periodMin: Int32?

        public var silenceSec: Int32?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupingKeys != nil {
                map["groupingKeys"] = self.groupingKeys!
            }
            if self.periodMin != nil {
                map["periodMin"] = self.periodMin!
            }
            if self.silenceSec != nil {
                map["silenceSec"] = self.silenceSec!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupingKeys") {
                self.groupingKeys = dict["groupingKeys"] as! [String]
            }
            if dict.keys.contains("periodMin") {
                self.periodMin = dict["periodMin"] as! Int32
            }
            if dict.keys.contains("silenceSec") {
                self.silenceSec = dict["silenceSec"] as! Int32
            }
            if dict.keys.contains("times") {
                self.times = dict["times"] as! Int32
            }
        }
    }
    public class Routes : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public var channelType: String?

            public var enabledSubChannels: [String]?

            public var receivers: [String]?

            public override init() {
                super.init()
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
                if self.enabledSubChannels != nil {
                    map["enabledSubChannels"] = self.enabledSubChannels!
                }
                if self.receivers != nil {
                    map["receivers"] = self.receivers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("channelType") {
                    self.channelType = dict["channelType"] as! String
                }
                if dict.keys.contains("enabledSubChannels") {
                    self.enabledSubChannels = dict["enabledSubChannels"] as! [String]
                }
                if dict.keys.contains("receivers") {
                    self.receivers = dict["receivers"] as! [String]
                }
            }
        }
        public class EffectTimeRange : Tea.TeaModel {
            public var dayInWeek: [Int32]?

            public var endTimeInMinute: Int32?

            public var startTimeInMinute: Int32?

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
                if self.dayInWeek != nil {
                    map["dayInWeek"] = self.dayInWeek!
                }
                if self.endTimeInMinute != nil {
                    map["endTimeInMinute"] = self.endTimeInMinute!
                }
                if self.startTimeInMinute != nil {
                    map["startTimeInMinute"] = self.startTimeInMinute!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dayInWeek") {
                    self.dayInWeek = dict["dayInWeek"] as! [Int32]
                }
                if dict.keys.contains("endTimeInMinute") {
                    self.endTimeInMinute = dict["endTimeInMinute"] as! Int32
                }
                if dict.keys.contains("startTimeInMinute") {
                    self.startTimeInMinute = dict["startTimeInMinute"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
                }
            }
        }
        public var channels: [NotifyStrategyForModify.Routes.Channels]?

        public var effectTimeRange: NotifyStrategyForModify.Routes.EffectTimeRange?

        public var filterSetting: FilterSetting?

        public var severities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectTimeRange?.validate()
            try self.filterSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["channels"] = tmp
            }
            if self.effectTimeRange != nil {
                map["effectTimeRange"] = self.effectTimeRange?.toMap()
            }
            if self.filterSetting != nil {
                map["filterSetting"] = self.filterSetting?.toMap()
            }
            if self.severities != nil {
                map["severities"] = self.severities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("channels") {
                var tmp : [NotifyStrategyForModify.Routes.Channels] = []
                for v in dict["channels"] as! [Any] {
                    var model = NotifyStrategyForModify.Routes.Channels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.channels = tmp
            }
            if dict.keys.contains("effectTimeRange") {
                var model = NotifyStrategyForModify.Routes.EffectTimeRange()
                model.fromMap(dict["effectTimeRange"] as! [String: Any])
                self.effectTimeRange = model
            }
            if dict.keys.contains("filterSetting") {
                var model = FilterSetting()
                model.fromMap(dict["filterSetting"] as! [String: Any])
                self.filterSetting = model
            }
            if dict.keys.contains("severities") {
                self.severities = dict["severities"] as! [String]
            }
        }
    }
    public var customTemplateEntries: [NotifyStrategyForModify.CustomTemplateEntries]?

    public var description_: String?

    public var groupingSetting: NotifyStrategyForModify.GroupingSetting?

    public var ignoreRestoredNotification: Bool?

    public var notifyStrategyName: String?

    public var routes: [NotifyStrategyForModify.Routes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customTemplateEntries != nil {
            var tmp : [Any] = []
            for k in self.customTemplateEntries! {
                tmp.append(k.toMap())
            }
            map["customTemplateEntries"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupingSetting != nil {
            map["groupingSetting"] = self.groupingSetting?.toMap()
        }
        if self.ignoreRestoredNotification != nil {
            map["ignoreRestoredNotification"] = self.ignoreRestoredNotification!
        }
        if self.notifyStrategyName != nil {
            map["notifyStrategyName"] = self.notifyStrategyName!
        }
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["routes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customTemplateEntries") {
            var tmp : [NotifyStrategyForModify.CustomTemplateEntries] = []
            for v in dict["customTemplateEntries"] as! [Any] {
                var model = NotifyStrategyForModify.CustomTemplateEntries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customTemplateEntries = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("groupingSetting") {
            var model = NotifyStrategyForModify.GroupingSetting()
            model.fromMap(dict["groupingSetting"] as! [String: Any])
            self.groupingSetting = model
        }
        if dict.keys.contains("ignoreRestoredNotification") {
            self.ignoreRestoredNotification = dict["ignoreRestoredNotification"] as! Bool
        }
        if dict.keys.contains("notifyStrategyName") {
            self.notifyStrategyName = dict["notifyStrategyName"] as! String
        }
        if dict.keys.contains("routes") {
            var tmp : [NotifyStrategyForModify.Routes] = []
            for v in dict["routes"] as! [Any] {
                var model = NotifyStrategyForModify.Routes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.routes = tmp
        }
    }
}

public class NotifyStrategyForView : Tea.TeaModel {
    public class CustomTemplateEntries : Tea.TeaModel {
        public var targetType: String?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("templateUuid") {
                self.templateUuid = dict["templateUuid"] as! String
            }
        }
    }
    public class GroupingSetting : Tea.TeaModel {
        public var groupingKeys: [String]?

        public var periodMin: Int32?

        public var silenceSec: Int32?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupingKeys != nil {
                map["groupingKeys"] = self.groupingKeys!
            }
            if self.periodMin != nil {
                map["periodMin"] = self.periodMin!
            }
            if self.silenceSec != nil {
                map["silenceSec"] = self.silenceSec!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupingKeys") {
                self.groupingKeys = dict["groupingKeys"] as! [String]
            }
            if dict.keys.contains("periodMin") {
                self.periodMin = dict["periodMin"] as! Int32
            }
            if dict.keys.contains("silenceSec") {
                self.silenceSec = dict["silenceSec"] as! Int32
            }
            if dict.keys.contains("times") {
                self.times = dict["times"] as! Int32
            }
        }
    }
    public class Routes : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public var channelType: String?

            public var enabledSubChannels: [String]?

            public var receivers: [String]?

            public override init() {
                super.init()
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
                if self.enabledSubChannels != nil {
                    map["enabledSubChannels"] = self.enabledSubChannels!
                }
                if self.receivers != nil {
                    map["receivers"] = self.receivers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("channelType") {
                    self.channelType = dict["channelType"] as! String
                }
                if dict.keys.contains("enabledSubChannels") {
                    self.enabledSubChannels = dict["enabledSubChannels"] as! [String]
                }
                if dict.keys.contains("receivers") {
                    self.receivers = dict["receivers"] as! [String]
                }
            }
        }
        public class EffectTimeRange : Tea.TeaModel {
            public var dayInWeek: [Int32]?

            public var endTimeInMinute: Int32?

            public var startTimeInMinute: Int32?

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
                if self.dayInWeek != nil {
                    map["dayInWeek"] = self.dayInWeek!
                }
                if self.endTimeInMinute != nil {
                    map["endTimeInMinute"] = self.endTimeInMinute!
                }
                if self.startTimeInMinute != nil {
                    map["startTimeInMinute"] = self.startTimeInMinute!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dayInWeek") {
                    self.dayInWeek = dict["dayInWeek"] as! [Int32]
                }
                if dict.keys.contains("endTimeInMinute") {
                    self.endTimeInMinute = dict["endTimeInMinute"] as! Int32
                }
                if dict.keys.contains("startTimeInMinute") {
                    self.startTimeInMinute = dict["startTimeInMinute"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
                }
            }
        }
        public var channels: [NotifyStrategyForView.Routes.Channels]?

        public var effectTimeRange: NotifyStrategyForView.Routes.EffectTimeRange?

        public var filterSetting: FilterSetting?

        public var severities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectTimeRange?.validate()
            try self.filterSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["channels"] = tmp
            }
            if self.effectTimeRange != nil {
                map["effectTimeRange"] = self.effectTimeRange?.toMap()
            }
            if self.filterSetting != nil {
                map["filterSetting"] = self.filterSetting?.toMap()
            }
            if self.severities != nil {
                map["severities"] = self.severities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("channels") {
                var tmp : [NotifyStrategyForView.Routes.Channels] = []
                for v in dict["channels"] as! [Any] {
                    var model = NotifyStrategyForView.Routes.Channels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.channels = tmp
            }
            if dict.keys.contains("effectTimeRange") {
                var model = NotifyStrategyForView.Routes.EffectTimeRange()
                model.fromMap(dict["effectTimeRange"] as! [String: Any])
                self.effectTimeRange = model
            }
            if dict.keys.contains("filterSetting") {
                var model = FilterSetting()
                model.fromMap(dict["filterSetting"] as! [String: Any])
                self.filterSetting = model
            }
            if dict.keys.contains("severities") {
                self.severities = dict["severities"] as! [String]
            }
        }
    }
    public var createTime: String?

    public var customTemplateEntries: [NotifyStrategyForView.CustomTemplateEntries]?

    public var description_: String?

    public var enable: Bool?

    public var groupingSetting: NotifyStrategyForView.GroupingSetting?

    public var ignoreRestoredNotification: Bool?

    public var notifyStrategyId: String?

    public var notifyStrategyName: String?

    public var routes: [NotifyStrategyForView.Routes]?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.customTemplateEntries != nil {
            var tmp : [Any] = []
            for k in self.customTemplateEntries! {
                tmp.append(k.toMap())
            }
            map["customTemplateEntries"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.groupingSetting != nil {
            map["groupingSetting"] = self.groupingSetting?.toMap()
        }
        if self.ignoreRestoredNotification != nil {
            map["ignoreRestoredNotification"] = self.ignoreRestoredNotification!
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.notifyStrategyName != nil {
            map["notifyStrategyName"] = self.notifyStrategyName!
        }
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["routes"] = tmp
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("customTemplateEntries") {
            var tmp : [NotifyStrategyForView.CustomTemplateEntries] = []
            for v in dict["customTemplateEntries"] as! [Any] {
                var model = NotifyStrategyForView.CustomTemplateEntries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customTemplateEntries = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("groupingSetting") {
            var model = NotifyStrategyForView.GroupingSetting()
            model.fromMap(dict["groupingSetting"] as! [String: Any])
            self.groupingSetting = model
        }
        if dict.keys.contains("ignoreRestoredNotification") {
            self.ignoreRestoredNotification = dict["ignoreRestoredNotification"] as! Bool
        }
        if dict.keys.contains("notifyStrategyId") {
            self.notifyStrategyId = dict["notifyStrategyId"] as! String
        }
        if dict.keys.contains("notifyStrategyName") {
            self.notifyStrategyName = dict["notifyStrategyName"] as! String
        }
        if dict.keys.contains("routes") {
            var tmp : [NotifyStrategyForView.Routes] = []
            for v in dict["routes"] as! [Any] {
                var model = NotifyStrategyForView.Routes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.routes = tmp
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class SubscriptionForModify : Tea.TeaModel {
    public class PushingSetting : Tea.TeaModel {
        public var alertActionIds: [String]?

        public var responsePlanId: String?

        public var restoreActionIds: [String]?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionIds != nil {
                map["alertActionIds"] = self.alertActionIds!
            }
            if self.responsePlanId != nil {
                map["responsePlanId"] = self.responsePlanId!
            }
            if self.restoreActionIds != nil {
                map["restoreActionIds"] = self.restoreActionIds!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertActionIds") {
                self.alertActionIds = dict["alertActionIds"] as! [String]
            }
            if dict.keys.contains("responsePlanId") {
                self.responsePlanId = dict["responsePlanId"] as! String
            }
            if dict.keys.contains("restoreActionIds") {
                self.restoreActionIds = dict["restoreActionIds"] as! [String]
            }
            if dict.keys.contains("templateUuid") {
                self.templateUuid = dict["templateUuid"] as! String
            }
        }
    }
    public var description_: String?

    public var filterSetting: FilterSetting?

    public var notifyStrategyId: String?

    public var pushingSetting: SubscriptionForModify.PushingSetting?

    public var subscriptionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
        try self.pushingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.pushingSetting != nil {
            map["pushingSetting"] = self.pushingSetting?.toMap()
        }
        if self.subscriptionName != nil {
            map["subscriptionName"] = self.subscriptionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("notifyStrategyId") {
            self.notifyStrategyId = dict["notifyStrategyId"] as! String
        }
        if dict.keys.contains("pushingSetting") {
            var model = SubscriptionForModify.PushingSetting()
            model.fromMap(dict["pushingSetting"] as! [String: Any])
            self.pushingSetting = model
        }
        if dict.keys.contains("subscriptionName") {
            self.subscriptionName = dict["subscriptionName"] as! String
        }
    }
}

public class SubscriptionForView : Tea.TeaModel {
    public class PushingSetting : Tea.TeaModel {
        public var alertActionIds: [String]?

        public var responsePlanId: String?

        public var restoreActionIds: [String]?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionIds != nil {
                map["alertActionIds"] = self.alertActionIds!
            }
            if self.responsePlanId != nil {
                map["responsePlanId"] = self.responsePlanId!
            }
            if self.restoreActionIds != nil {
                map["restoreActionIds"] = self.restoreActionIds!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertActionIds") {
                self.alertActionIds = dict["alertActionIds"] as! [String]
            }
            if dict.keys.contains("responsePlanId") {
                self.responsePlanId = dict["responsePlanId"] as! String
            }
            if dict.keys.contains("restoreActionIds") {
                self.restoreActionIds = dict["restoreActionIds"] as! [String]
            }
            if dict.keys.contains("templateUuid") {
                self.templateUuid = dict["templateUuid"] as! String
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var notifyStrategyId: String?

    public var pushingSetting: SubscriptionForView.PushingSetting?

    public var subscriptionId: String?

    public var subscriptionName: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
        try self.pushingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.pushingSetting != nil {
            map["pushingSetting"] = self.pushingSetting?.toMap()
        }
        if self.subscriptionId != nil {
            map["subscriptionId"] = self.subscriptionId!
        }
        if self.subscriptionName != nil {
            map["subscriptionName"] = self.subscriptionName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("notifyStrategyId") {
            self.notifyStrategyId = dict["notifyStrategyId"] as! String
        }
        if dict.keys.contains("pushingSetting") {
            var model = SubscriptionForView.PushingSetting()
            model.fromMap(dict["pushingSetting"] as! [String: Any])
            self.pushingSetting = model
        }
        if dict.keys.contains("subscriptionId") {
            self.subscriptionId = dict["subscriptionId"] as! String
        }
        if dict.keys.contains("subscriptionName") {
            self.subscriptionName = dict["subscriptionName"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class TransformAction : Tea.TeaModel {
    public var filterSetting: FilterSetting?

    public var labelKey: String?

    public var mapping: [String: String]?

    public var regExp: String?

    public var source: String?

    public var target: String?

    public var type: String?

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
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.labelKey != nil {
            map["labelKey"] = self.labelKey!
        }
        if self.mapping != nil {
            map["mapping"] = self.mapping!
        }
        if self.regExp != nil {
            map["regExp"] = self.regExp!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.variable != nil {
            map["variable"] = self.variable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("labelKey") {
            self.labelKey = dict["labelKey"] as! String
        }
        if dict.keys.contains("mapping") {
            self.mapping = dict["mapping"] as! [String: String]
        }
        if dict.keys.contains("regExp") {
            self.regExp = dict["regExp"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("target") {
            self.target = dict["target"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("variable") {
            self.variable = dict["variable"] as! String
        }
    }
}

public class TransformerForModify : Tea.TeaModel {
    public var actions: [TransformAction]?

    public var description_: String?

    public var filterSetting: FilterSetting?

    public var quitAfterMatch: Bool?

    public var sortId: Int32?

    public var transformerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["actions"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.quitAfterMatch != nil {
            map["quitAfterMatch"] = self.quitAfterMatch!
        }
        if self.sortId != nil {
            map["sortId"] = self.sortId!
        }
        if self.transformerName != nil {
            map["transformerName"] = self.transformerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actions") {
            var tmp : [TransformAction] = []
            for v in dict["actions"] as! [Any] {
                var model = TransformAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.actions = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("quitAfterMatch") {
            self.quitAfterMatch = dict["quitAfterMatch"] as! Bool
        }
        if dict.keys.contains("sortId") {
            self.sortId = dict["sortId"] as! Int32
        }
        if dict.keys.contains("transformerName") {
            self.transformerName = dict["transformerName"] as! String
        }
    }
}

public class TransformerForView : Tea.TeaModel {
    public var actions: [TransformAction]?

    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var quitAfterMatch: Bool?

    public var sortId: Int32?

    public var transformerId: String?

    public var transformerName: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["actions"] = tmp
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.quitAfterMatch != nil {
            map["quitAfterMatch"] = self.quitAfterMatch!
        }
        if self.sortId != nil {
            map["sortId"] = self.sortId!
        }
        if self.transformerId != nil {
            map["transformerId"] = self.transformerId!
        }
        if self.transformerName != nil {
            map["transformerName"] = self.transformerName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actions") {
            var tmp : [TransformAction] = []
            for v in dict["actions"] as! [Any] {
                var model = TransformAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.actions = tmp
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("filterSetting") {
            var model = FilterSetting()
            model.fromMap(dict["filterSetting"] as! [String: Any])
            self.filterSetting = model
        }
        if dict.keys.contains("quitAfterMatch") {
            self.quitAfterMatch = dict["quitAfterMatch"] as! Bool
        }
        if dict.keys.contains("sortId") {
            self.sortId = dict["sortId"] as! Int32
        }
        if dict.keys.contains("transformerId") {
            self.transformerId = dict["transformerId"] as! String
        }
        if dict.keys.contains("transformerName") {
            self.transformerName = dict["transformerName"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListAlertActionsRequest : Tea.TeaModel {
    public var alertActionIds: [String]?

    public var alertActionName: String?

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
        if self.alertActionIds != nil {
            map["alertActionIds"] = self.alertActionIds!
        }
        if self.alertActionName != nil {
            map["alertActionName"] = self.alertActionName!
        }
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
        if dict.keys.contains("alertActionIds") {
            self.alertActionIds = dict["alertActionIds"] as! [String]
        }
        if dict.keys.contains("alertActionName") {
            self.alertActionName = dict["alertActionName"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListAlertActionsShrinkRequest : Tea.TeaModel {
    public var alertActionIdsShrink: String?

    public var alertActionName: String?

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
        if self.alertActionIdsShrink != nil {
            map["alertActionIds"] = self.alertActionIdsShrink!
        }
        if self.alertActionName != nil {
            map["alertActionName"] = self.alertActionName!
        }
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
        if dict.keys.contains("alertActionIds") {
            self.alertActionIdsShrink = dict["alertActionIds"] as! String
        }
        if dict.keys.contains("alertActionName") {
            self.alertActionName = dict["alertActionName"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListAlertActionsResponseBody : Tea.TeaModel {
    public class AlertActions : Tea.TeaModel {
        public class EssParam : Tea.TeaModel {
            public var essGroupId: String?

            public var essRuleId: String?

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
                if self.essGroupId != nil {
                    map["essGroupId"] = self.essGroupId!
                }
                if self.essRuleId != nil {
                    map["essRuleId"] = self.essRuleId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("essGroupId") {
                    self.essGroupId = dict["essGroupId"] as! String
                }
                if dict.keys.contains("essRuleId") {
                    self.essRuleId = dict["essRuleId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
            }
        }
        public class FcParam : Tea.TeaModel {
            public var function: String?

            public var regionId: String?

            public var service: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    map["function"] = self.function!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.service != nil {
                    map["service"] = self.service!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("function") {
                    self.function = dict["function"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("service") {
                    self.service = dict["service"] as! String
                }
            }
        }
        public class MnsParam : Tea.TeaModel {
            public var mnsType: String?

            public var name: String?

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
                if self.mnsType != nil {
                    map["mnsType"] = self.mnsType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("mnsType") {
                    self.mnsType = dict["mnsType"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
            }
        }
        public class PagerDutyParam : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class SlsParam : Tea.TeaModel {
            public var logstore: String?

            public var project: String?

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
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("logstore") {
                    self.logstore = dict["logstore"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
            }
        }
        public class WebhookParam : Tea.TeaModel {
            public var contentType: String?

            public var headers: [String: String]?

            public var method: String?

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
                if self.contentType != nil {
                    map["contentType"] = self.contentType!
                }
                if self.headers != nil {
                    map["headers"] = self.headers!
                }
                if self.method != nil {
                    map["method"] = self.method!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("contentType") {
                    self.contentType = dict["contentType"] as! String
                }
                if dict.keys.contains("headers") {
                    self.headers = dict["headers"] as! [String: String]
                }
                if dict.keys.contains("method") {
                    self.method = dict["method"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var alertActionId: String?

        public var alertActionName: String?

        public var essParam: ListAlertActionsResponseBody.AlertActions.EssParam?

        public var fcParam: ListAlertActionsResponseBody.AlertActions.FcParam?

        public var mnsParam: ListAlertActionsResponseBody.AlertActions.MnsParam?

        public var pagerDutyParam: ListAlertActionsResponseBody.AlertActions.PagerDutyParam?

        public var slsParam: ListAlertActionsResponseBody.AlertActions.SlsParam?

        public var type: String?

        public var webhookParam: ListAlertActionsResponseBody.AlertActions.WebhookParam?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.essParam?.validate()
            try self.fcParam?.validate()
            try self.mnsParam?.validate()
            try self.pagerDutyParam?.validate()
            try self.slsParam?.validate()
            try self.webhookParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionId != nil {
                map["alertActionId"] = self.alertActionId!
            }
            if self.alertActionName != nil {
                map["alertActionName"] = self.alertActionName!
            }
            if self.essParam != nil {
                map["essParam"] = self.essParam?.toMap()
            }
            if self.fcParam != nil {
                map["fcParam"] = self.fcParam?.toMap()
            }
            if self.mnsParam != nil {
                map["mnsParam"] = self.mnsParam?.toMap()
            }
            if self.pagerDutyParam != nil {
                map["pagerDutyParam"] = self.pagerDutyParam?.toMap()
            }
            if self.slsParam != nil {
                map["slsParam"] = self.slsParam?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.webhookParam != nil {
                map["webhookParam"] = self.webhookParam?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertActionId") {
                self.alertActionId = dict["alertActionId"] as! String
            }
            if dict.keys.contains("alertActionName") {
                self.alertActionName = dict["alertActionName"] as! String
            }
            if dict.keys.contains("essParam") {
                var model = ListAlertActionsResponseBody.AlertActions.EssParam()
                model.fromMap(dict["essParam"] as! [String: Any])
                self.essParam = model
            }
            if dict.keys.contains("fcParam") {
                var model = ListAlertActionsResponseBody.AlertActions.FcParam()
                model.fromMap(dict["fcParam"] as! [String: Any])
                self.fcParam = model
            }
            if dict.keys.contains("mnsParam") {
                var model = ListAlertActionsResponseBody.AlertActions.MnsParam()
                model.fromMap(dict["mnsParam"] as! [String: Any])
                self.mnsParam = model
            }
            if dict.keys.contains("pagerDutyParam") {
                var model = ListAlertActionsResponseBody.AlertActions.PagerDutyParam()
                model.fromMap(dict["pagerDutyParam"] as! [String: Any])
                self.pagerDutyParam = model
            }
            if dict.keys.contains("slsParam") {
                var model = ListAlertActionsResponseBody.AlertActions.SlsParam()
                model.fromMap(dict["slsParam"] as! [String: Any])
                self.slsParam = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("webhookParam") {
                var model = ListAlertActionsResponseBody.AlertActions.WebhookParam()
                model.fromMap(dict["webhookParam"] as! [String: Any])
                self.webhookParam = model
            }
        }
    }
    public var alertActions: [ListAlertActionsResponseBody.AlertActions]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.alertActions != nil {
            var tmp : [Any] = []
            for k in self.alertActions! {
                tmp.append(k.toMap())
            }
            map["alertActions"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertActions") {
            var tmp : [ListAlertActionsResponseBody.AlertActions] = []
            for v in dict["alertActions"] as! [Any] {
                var model = ListAlertActionsResponseBody.AlertActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.alertActions = tmp
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
    }
}

public class ListAlertActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertActionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAlertActionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
