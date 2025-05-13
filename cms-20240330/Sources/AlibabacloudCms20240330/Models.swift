import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddonMeta : Tea.TeaModel {
    public class Dashboards : Tea.TeaModel {
        public var description_: String?

        public var name: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public class Environments : Tea.TeaModel {
        public class Dependencies : Tea.TeaModel {
            public var clusterTypes: [String]?

            public var features: [String: Bool]?

            public var services: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterTypes != nil {
                    map["clusterTypes"] = self.clusterTypes!
                }
                if self.features != nil {
                    map["features"] = self.features!
                }
                if self.services != nil {
                    map["services"] = self.services!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterTypes") {
                    self.clusterTypes = dict["clusterTypes"] as! [String]
                }
                if dict.keys.contains("features") {
                    self.features = dict["features"] as! [String: Bool]
                }
                if dict.keys.contains("services") {
                    self.services = dict["services"] as! [String]
                }
            }
        }
        public class Policies : Tea.TeaModel {
            public class BindEntity : Tea.TeaModel {
                public var entityGroupMode: Bool?

                public var entityType: String?

                public var singleEntityMode: Bool?

                public var vpcIdFieldKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.entityGroupMode != nil {
                        map["entityGroupMode"] = self.entityGroupMode!
                    }
                    if self.entityType != nil {
                        map["entityType"] = self.entityType!
                    }
                    if self.singleEntityMode != nil {
                        map["singleEntityMode"] = self.singleEntityMode!
                    }
                    if self.vpcIdFieldKey != nil {
                        map["vpcIdFieldKey"] = self.vpcIdFieldKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("entityGroupMode") {
                        self.entityGroupMode = dict["entityGroupMode"] as! Bool
                    }
                    if dict.keys.contains("entityType") {
                        self.entityType = dict["entityType"] as! String
                    }
                    if dict.keys.contains("singleEntityMode") {
                        self.singleEntityMode = dict["singleEntityMode"] as! Bool
                    }
                    if dict.keys.contains("vpcIdFieldKey") {
                        self.vpcIdFieldKey = dict["vpcIdFieldKey"] as! String
                    }
                }
            }
            public class MetricCheckRule : Tea.TeaModel {
                public var promQL: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promQL != nil {
                        map["promQL"] = self.promQL!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("promQL") {
                        self.promQL = dict["promQL"] as! [String]
                    }
                }
            }
            public class Protocols : Tea.TeaModel {
                public var description_: String?

                public var icon: String?

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
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.icon != nil {
                        map["icon"] = self.icon!
                    }
                    if self.label != nil {
                        map["label"] = self.label!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("description") {
                        self.description_ = dict["description"] as! String
                    }
                    if dict.keys.contains("icon") {
                        self.icon = dict["icon"] as! String
                    }
                    if dict.keys.contains("label") {
                        self.label = dict["label"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var alertDefaultStatus: String?

            public var bindDefaultPolicy: Bool?

            public var bindEntity: AddonMeta.Environments.Policies.BindEntity?

            public var defaultInstall: Bool?

            public var enableServiceAccount: Bool?

            public var metricCheckRule: AddonMeta.Environments.Policies.MetricCheckRule?

            public var needRestartAfterIntegration: Bool?

            public var protocols: [AddonMeta.Environments.Policies.Protocols]?

            public var targetAddonName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bindEntity?.validate()
                try self.metricCheckRule?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDefaultStatus != nil {
                    map["alertDefaultStatus"] = self.alertDefaultStatus!
                }
                if self.bindDefaultPolicy != nil {
                    map["bindDefaultPolicy"] = self.bindDefaultPolicy!
                }
                if self.bindEntity != nil {
                    map["bindEntity"] = self.bindEntity?.toMap()
                }
                if self.defaultInstall != nil {
                    map["defaultInstall"] = self.defaultInstall!
                }
                if self.enableServiceAccount != nil {
                    map["enableServiceAccount"] = self.enableServiceAccount!
                }
                if self.metricCheckRule != nil {
                    map["metricCheckRule"] = self.metricCheckRule?.toMap()
                }
                if self.needRestartAfterIntegration != nil {
                    map["needRestartAfterIntegration"] = self.needRestartAfterIntegration!
                }
                if self.protocols != nil {
                    var tmp : [Any] = []
                    for k in self.protocols! {
                        tmp.append(k.toMap())
                    }
                    map["protocols"] = tmp
                }
                if self.targetAddonName != nil {
                    map["targetAddonName"] = self.targetAddonName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alertDefaultStatus") {
                    self.alertDefaultStatus = dict["alertDefaultStatus"] as! String
                }
                if dict.keys.contains("bindDefaultPolicy") {
                    self.bindDefaultPolicy = dict["bindDefaultPolicy"] as! Bool
                }
                if dict.keys.contains("bindEntity") {
                    var model = AddonMeta.Environments.Policies.BindEntity()
                    model.fromMap(dict["bindEntity"] as! [String: Any])
                    self.bindEntity = model
                }
                if dict.keys.contains("defaultInstall") {
                    self.defaultInstall = dict["defaultInstall"] as! Bool
                }
                if dict.keys.contains("enableServiceAccount") {
                    self.enableServiceAccount = dict["enableServiceAccount"] as! Bool
                }
                if dict.keys.contains("metricCheckRule") {
                    var model = AddonMeta.Environments.Policies.MetricCheckRule()
                    model.fromMap(dict["metricCheckRule"] as! [String: Any])
                    self.metricCheckRule = model
                }
                if dict.keys.contains("needRestartAfterIntegration") {
                    self.needRestartAfterIntegration = dict["needRestartAfterIntegration"] as! Bool
                }
                if dict.keys.contains("protocols") {
                    var tmp : [AddonMeta.Environments.Policies.Protocols] = []
                    for v in dict["protocols"] as! [Any] {
                        var model = AddonMeta.Environments.Policies.Protocols()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.protocols = tmp
                }
                if dict.keys.contains("targetAddonName") {
                    self.targetAddonName = dict["targetAddonName"] as! String
                }
            }
        }
        public var dependencies: AddonMeta.Environments.Dependencies?

        public var description_: String?

        public var enable: Bool?

        public var label: String?

        public var name: String?

        public var policies: AddonMeta.Environments.Policies?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dependencies?.validate()
            try self.policies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dependencies != nil {
                map["dependencies"] = self.dependencies?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.policies != nil {
                map["policies"] = self.policies?.toMap()
            }
            if self.policyType != nil {
                map["policyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dependencies") {
                var model = AddonMeta.Environments.Dependencies()
                model.fromMap(dict["dependencies"] as! [String: Any])
                self.dependencies = model
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("label") {
                self.label = dict["label"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("policies") {
                var model = AddonMeta.Environments.Policies()
                model.fromMap(dict["policies"] as! [String: Any])
                self.policies = model
            }
            if dict.keys.contains("policyType") {
                self.policyType = dict["policyType"] as! String
            }
        }
    }
    public var alias: String?

    public var categories: [String]?

    public var dashboards: [AddonMeta.Dashboards]?

    public var description_: String?

    public var environments: [AddonMeta.Environments]?

    public var icon: String?

    public var keywords: [String]?

    public var language: String?

    public var latestReleaseCreateTime: String?

    public var name: String?

    public var once: Bool?

    public var scene: String?

    public var version: String?

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
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.categories != nil {
            map["categories"] = self.categories!
        }
        if self.dashboards != nil {
            var tmp : [Any] = []
            for k in self.dashboards! {
                tmp.append(k.toMap())
            }
            map["dashboards"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environments != nil {
            var tmp : [Any] = []
            for k in self.environments! {
                tmp.append(k.toMap())
            }
            map["environments"] = tmp
        }
        if self.icon != nil {
            map["icon"] = self.icon!
        }
        if self.keywords != nil {
            map["keywords"] = self.keywords!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.latestReleaseCreateTime != nil {
            map["latestReleaseCreateTime"] = self.latestReleaseCreateTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.once != nil {
            map["once"] = self.once!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.weight != nil {
            map["weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("categories") {
            self.categories = dict["categories"] as! [String]
        }
        if dict.keys.contains("dashboards") {
            var tmp : [AddonMeta.Dashboards] = []
            for v in dict["dashboards"] as! [Any] {
                var model = AddonMeta.Dashboards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dashboards = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environments") {
            var tmp : [AddonMeta.Environments] = []
            for v in dict["environments"] as! [Any] {
                var model = AddonMeta.Environments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.environments = tmp
        }
        if dict.keys.contains("icon") {
            self.icon = dict["icon"] as! String
        }
        if dict.keys.contains("keywords") {
            self.keywords = dict["keywords"] as! [String]
        }
        if dict.keys.contains("language") {
            self.language = dict["language"] as! String
        }
        if dict.keys.contains("latestReleaseCreateTime") {
            self.latestReleaseCreateTime = dict["latestReleaseCreateTime"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("once") {
            self.once = dict["once"] as! Bool
        }
        if dict.keys.contains("scene") {
            self.scene = dict["scene"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("weight") {
            self.weight = dict["weight"] as! Int32
        }
    }
}

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

    public var token: String?

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
        if self.token != nil {
            map["token"] = self.token!
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
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
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

    public var dimDisabled: Bool?

    public var displayNameCn: String?

    public var displayNameEn: String?

    public var hidden: Bool?

    public var labelDisabled: Bool?

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
        if self.dimDisabled != nil {
            map["dimDisabled"] = self.dimDisabled!
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
        if self.labelDisabled != nil {
            map["labelDisabled"] = self.labelDisabled!
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
        if dict.keys.contains("dimDisabled") {
            self.dimDisabled = dict["dimDisabled"] as! Bool
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
        if dict.keys.contains("labelDisabled") {
            self.labelDisabled = dict["labelDisabled"] as! Bool
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

    public var relation: String?

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
        if self.relation != nil {
            map["relation"] = self.relation!
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
        if dict.keys.contains("relation") {
            self.relation = dict["relation"] as! String
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
    public var appType: String?

    public var dsList: [AlertRuleDataSource.DsList]?

    public var instanceId: String?

    public var namespace: String?

    public var regionId: String?

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
        if self.appType != nil {
            map["appType"] = self.appType!
        }
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appType") {
            self.appType = dict["appType"] as! String
        }
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
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
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
        public class ApmFilters : Tea.TeaModel {
            public var dim: String?

            public var type: String?

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
                if self.type != nil {
                    map["type"] = self.type!
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
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var apmAlertMetricId: String?

        public var apmFilters: [AlertRuleQuery.Queries.ApmFilters]?

        public var apmGroupBy: [String]?

        public var duration: Int64?

        public var end: Int64?

        public var expr: String?

        public var start: Int64?

        public var timeUnit: String?

        public var window: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apmAlertMetricId != nil {
                map["apmAlertMetricId"] = self.apmAlertMetricId!
            }
            if self.apmFilters != nil {
                var tmp : [Any] = []
                for k in self.apmFilters! {
                    tmp.append(k.toMap())
                }
                map["apmFilters"] = tmp
            }
            if self.apmGroupBy != nil {
                map["apmGroupBy"] = self.apmGroupBy!
            }
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
            if dict.keys.contains("apmAlertMetricId") {
                self.apmAlertMetricId = dict["apmAlertMetricId"] as! String
            }
            if dict.keys.contains("apmFilters") {
                var tmp : [AlertRuleQuery.Queries.ApmFilters] = []
                for v in dict["apmFilters"] as! [Any] {
                    var model = AlertRuleQuery.Queries.ApmFilters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apmFilters = tmp
            }
            if dict.keys.contains("apmGroupBy") {
                self.apmGroupBy = dict["apmGroupBy"] as! [String]
            }
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
                self.window = dict["window"] as! Int64
            }
        }
    }
    public var checkAfterDataComplete: Bool?

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
        if self.checkAfterDataComplete != nil {
            map["checkAfterDataComplete"] = self.checkAfterDataComplete!
        }
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
        if dict.keys.contains("checkAfterDataComplete") {
            self.checkAfterDataComplete = dict["checkAfterDataComplete"] as! Bool
        }
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

public class BizTraceConfig : Tea.TeaModel {
    public var advancedConfig: String?

    public var bizTraceCode: String?

    public var bizTraceId: String?

    public var bizTraceName: String?

    public var createTime: String?

    public var regionId: String?

    public var ruleConfig: String?

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
        if self.advancedConfig != nil {
            map["advancedConfig"] = self.advancedConfig!
        }
        if self.bizTraceCode != nil {
            map["bizTraceCode"] = self.bizTraceCode!
        }
        if self.bizTraceId != nil {
            map["bizTraceId"] = self.bizTraceId!
        }
        if self.bizTraceName != nil {
            map["bizTraceName"] = self.bizTraceName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.ruleConfig != nil {
            map["ruleConfig"] = self.ruleConfig!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("advancedConfig") {
            self.advancedConfig = dict["advancedConfig"] as! String
        }
        if dict.keys.contains("bizTraceCode") {
            self.bizTraceCode = dict["bizTraceCode"] as! String
        }
        if dict.keys.contains("bizTraceId") {
            self.bizTraceId = dict["bizTraceId"] as! String
        }
        if dict.keys.contains("bizTraceName") {
            self.bizTraceName = dict["bizTraceName"] as! String
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("ruleConfig") {
            self.ruleConfig = dict["ruleConfig"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DataStorageItem : Tea.TeaModel {
    public var dataType: String?

    public var project: String?

    public var regionId: String?

    public var storeName: String?

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
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.storeName != nil {
            map["storeName"] = self.storeName!
        }
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("project") {
            self.project = dict["project"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("storeName") {
            self.storeName = dict["storeName"] as! String
        }
        if dict.keys.contains("storeType") {
            self.storeType = dict["storeType"] as! String
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

public class IncidentContactStruct : Tea.TeaModel {
    public var channel: [String]?

    public var contactId: String?

    public var contactType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.contactId != nil {
            map["contactId"] = self.contactId!
        }
        if self.contactType != nil {
            map["contactType"] = self.contactType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! [String]
        }
        if dict.keys.contains("contactId") {
            self.contactId = dict["contactId"] as! String
        }
        if dict.keys.contains("contactType") {
            self.contactType = dict["contactType"] as! String
        }
    }
}

public class IncidentEscalationStageStruct : Tea.TeaModel {
    public var contact: [IncidentContactStruct]?

    public var cycleNotifyCount: Int32?

    public var cycleNotifyTime: Int32?

    public var description_: String?

    public var effectTime: String?

    public var name: String?

    public var stageIndex: Int32?

    public var timeZone: String?

    public var waitToNextStageTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contact != nil {
            var tmp : [Any] = []
            for k in self.contact! {
                tmp.append(k.toMap())
            }
            map["contact"] = tmp
        }
        if self.cycleNotifyCount != nil {
            map["cycleNotifyCount"] = self.cycleNotifyCount!
        }
        if self.cycleNotifyTime != nil {
            map["cycleNotifyTime"] = self.cycleNotifyTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effectTime != nil {
            map["effectTime"] = self.effectTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.stageIndex != nil {
            map["stageIndex"] = self.stageIndex!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.waitToNextStageTime != nil {
            map["waitToNextStageTime"] = self.waitToNextStageTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contact") {
            var tmp : [IncidentContactStruct] = []
            for v in dict["contact"] as! [Any] {
                var model = IncidentContactStruct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contact = tmp
        }
        if dict.keys.contains("cycleNotifyCount") {
            self.cycleNotifyCount = dict["cycleNotifyCount"] as! Int32
        }
        if dict.keys.contains("cycleNotifyTime") {
            self.cycleNotifyTime = dict["cycleNotifyTime"] as! Int32
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("effectTime") {
            self.effectTime = dict["effectTime"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("stageIndex") {
            self.stageIndex = dict["stageIndex"] as! Int32
        }
        if dict.keys.contains("timeZone") {
            self.timeZone = dict["timeZone"] as! String
        }
        if dict.keys.contains("waitToNextStageTime") {
            self.waitToNextStageTime = dict["waitToNextStageTime"] as! Int32
        }
    }
}

public class IncidentEscalationStruct : Tea.TeaModel {
    public var createTime: Int64?

    public var description_: String?

    public var incidentEscalationId: String?

    public var modifyTime: Int64?

    public var name: String?

    public var regionId: String?

    public var stage: [IncidentEscalationStageStruct]?

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
        if self.incidentEscalationId != nil {
            map["incidentEscalationId"] = self.incidentEscalationId!
        }
        if self.modifyTime != nil {
            map["modifyTime"] = self.modifyTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.stage != nil {
            var tmp : [Any] = []
            for k in self.stage! {
                tmp.append(k.toMap())
            }
            map["stage"] = tmp
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("incidentEscalationId") {
            self.incidentEscalationId = dict["incidentEscalationId"] as! String
        }
        if dict.keys.contains("modifyTime") {
            self.modifyTime = dict["modifyTime"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("stage") {
            var tmp : [IncidentEscalationStageStruct] = []
            for v in dict["stage"] as! [Any] {
                var model = IncidentEscalationStageStruct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stage = tmp
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class IncidentEventStruct : Tea.TeaModel {
    public var autoRecoverTime: Int64?

    public var content: String?

    public var count: Int32?

    public var dimension: [String: String]?

    public var groupBy: [String: String]?

    public var incidentEventId: String?

    public var incidentId: String?

    public var lastTime: Int64?

    public var recoverTime: Int64?

    public var resource: [String: String]?

    public var status: Int64?

    public var time: String?

    public var title: String?

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
        if self.autoRecoverTime != nil {
            map["autoRecoverTime"] = self.autoRecoverTime!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.dimension != nil {
            map["dimension"] = self.dimension!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.incidentEventId != nil {
            map["incidentEventId"] = self.incidentEventId!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.lastTime != nil {
            map["lastTime"] = self.lastTime!
        }
        if self.recoverTime != nil {
            map["recoverTime"] = self.recoverTime!
        }
        if self.resource != nil {
            map["resource"] = self.resource!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoRecoverTime") {
            self.autoRecoverTime = dict["autoRecoverTime"] as! Int64
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("count") {
            self.count = dict["count"] as! Int32
        }
        if dict.keys.contains("dimension") {
            self.dimension = dict["dimension"] as! [String: String]
        }
        if dict.keys.contains("groupBy") {
            self.groupBy = dict["groupBy"] as! [String: String]
        }
        if dict.keys.contains("incidentEventId") {
            self.incidentEventId = dict["incidentEventId"] as! String
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("lastTime") {
            self.lastTime = dict["lastTime"] as! Int64
        }
        if dict.keys.contains("recoverTime") {
            self.recoverTime = dict["recoverTime"] as! Int64
        }
        if dict.keys.contains("resource") {
            self.resource = dict["resource"] as! [String: String]
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int64
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class IncidentMemberStruct : Tea.TeaModel {
    public class Acknowledge : Tea.TeaModel {
        public var breakLevel: String?

        public var verifyTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.breakLevel != nil {
                map["breakLevel"] = self.breakLevel!
            }
            if self.verifyTime != nil {
                map["verifyTime"] = self.verifyTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("breakLevel") {
                self.breakLevel = dict["breakLevel"] as! String
            }
            if dict.keys.contains("verifyTime") {
                self.verifyTime = dict["verifyTime"] as! Int64
            }
        }
    }
    public class Contacts : Tea.TeaModel {
        public var channel: String?

        public var contactMask: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["channel"] = self.channel!
            }
            if self.contactMask != nil {
                map["contactMask"] = self.contactMask!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("channel") {
                self.channel = dict["channel"] as! String
            }
            if dict.keys.contains("contactMask") {
                self.contactMask = dict["contactMask"] as! String
            }
        }
    }
    public class Escalation : Tea.TeaModel {
        public var description_: String?

        public var incidentEscalationId: String?

        public var name: String?

        public var stageIndex: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.incidentEscalationId != nil {
                map["incidentEscalationId"] = self.incidentEscalationId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.stageIndex != nil {
                map["stageIndex"] = self.stageIndex!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("incidentEscalationId") {
                self.incidentEscalationId = dict["incidentEscalationId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("stageIndex") {
                self.stageIndex = dict["stageIndex"] as! String
            }
            if dict.keys.contains("title") {
                self.title = dict["title"] as! String
            }
        }
    }
    public class ScheduleGroup : Tea.TeaModel {
        public var contactId: String?

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
            if self.contactId != nil {
                map["contactId"] = self.contactId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contactId") {
                self.contactId = dict["contactId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var acknowledge: IncidentMemberStruct.Acknowledge?

    public var contactId: String?

    public var contacts: [IncidentMemberStruct.Contacts]?

    public var escalation: IncidentMemberStruct.Escalation?

    public var incidentId: String?

    public var incidentMemberId: String?

    public var scheduleGroup: IncidentMemberStruct.ScheduleGroup?

    public var time: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.acknowledge?.validate()
        try self.escalation?.validate()
        try self.scheduleGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acknowledge != nil {
            map["acknowledge"] = self.acknowledge?.toMap()
        }
        if self.contactId != nil {
            map["contactId"] = self.contactId!
        }
        if self.contacts != nil {
            var tmp : [Any] = []
            for k in self.contacts! {
                tmp.append(k.toMap())
            }
            map["contacts"] = tmp
        }
        if self.escalation != nil {
            map["escalation"] = self.escalation?.toMap()
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentMemberId != nil {
            map["incidentMemberId"] = self.incidentMemberId!
        }
        if self.scheduleGroup != nil {
            map["scheduleGroup"] = self.scheduleGroup?.toMap()
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acknowledge") {
            var model = IncidentMemberStruct.Acknowledge()
            model.fromMap(dict["acknowledge"] as! [String: Any])
            self.acknowledge = model
        }
        if dict.keys.contains("contactId") {
            self.contactId = dict["contactId"] as! String
        }
        if dict.keys.contains("contacts") {
            var tmp : [IncidentMemberStruct.Contacts] = []
            for v in dict["contacts"] as! [Any] {
                var model = IncidentMemberStruct.Contacts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contacts = tmp
        }
        if dict.keys.contains("escalation") {
            var model = IncidentMemberStruct.Escalation()
            model.fromMap(dict["escalation"] as! [String: Any])
            self.escalation = model
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("incidentMemberId") {
            self.incidentMemberId = dict["incidentMemberId"] as! String
        }
        if dict.keys.contains("scheduleGroup") {
            var model = IncidentMemberStruct.ScheduleGroup()
            model.fromMap(dict["scheduleGroup"] as! [String: Any])
            self.scheduleGroup = model
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! Int64
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! Int64
        }
    }
}

public class IncidentNoteStruct : Tea.TeaModel {
    public class Operator_ : Tea.TeaModel {
        public var contact: String?

        public var contactId: String?

        public var name: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contact != nil {
                map["contact"] = self.contact!
            }
            if self.contactId != nil {
                map["contactId"] = self.contactId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contact") {
                self.contact = dict["contact"] as! String
            }
            if dict.keys.contains("contactId") {
                self.contactId = dict["contactId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int64
            }
        }
    }
    public var content: String?

    public var format: String?

    public var incidentId: String?

    public var noteId: String?

    public var operator_: IncidentNoteStruct.Operator_?

    public var time: Int64?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operator_?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.noteId != nil {
            map["noteId"] = self.noteId!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_?.toMap()
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("format") {
            self.format = dict["format"] as! String
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("noteId") {
            self.noteId = dict["noteId"] as! String
        }
        if dict.keys.contains("operator") {
            var model = IncidentNoteStruct.Operator_()
            model.fromMap(dict["operator"] as! [String: Any])
            self.operator_ = model
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! Int64
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class IncidentPlanCorporationStruct : Tea.TeaModel {
    public var channel: String?

    public var robotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.robotId != nil {
            map["robotId"] = self.robotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("robotId") {
            self.robotId = dict["robotId"] as! String
        }
    }
}

public class IncidentPlanFieldPath : Tea.TeaModel {
    public var fieldAlias: String?

    public var fieldPath: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fieldAlias != nil {
            map["fieldAlias"] = self.fieldAlias!
        }
        if self.fieldPath != nil {
            map["fieldPath"] = self.fieldPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fieldAlias") {
            self.fieldAlias = dict["fieldAlias"] as! String
        }
        if dict.keys.contains("fieldPath") {
            self.fieldPath = dict["fieldPath"] as! [String]
        }
    }
}

public class IncidentPlanStruct : Tea.TeaModel {
    public var autoRecoverSeconds: Int32?

    public var closeExpire: Int64?

    public var corporation: [IncidentPlanCorporationStruct]?

    public var description_: String?

    public var escalationId: [String]?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var groupBy: [IncidentPlanFieldPath]?

    public var incidentPlanId: String?

    public var name: String?

    public var resourceFiled: [IncidentPlanFieldPath]?

    public var status: String?

    public var userId: Int64?

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
        if self.autoRecoverSeconds != nil {
            map["autoRecoverSeconds"] = self.autoRecoverSeconds!
        }
        if self.closeExpire != nil {
            map["closeExpire"] = self.closeExpire!
        }
        if self.corporation != nil {
            var tmp : [Any] = []
            for k in self.corporation! {
                tmp.append(k.toMap())
            }
            map["corporation"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.escalationId != nil {
            map["escalationId"] = self.escalationId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.groupBy != nil {
            var tmp : [Any] = []
            for k in self.groupBy! {
                tmp.append(k.toMap())
            }
            map["groupBy"] = tmp
        }
        if self.incidentPlanId != nil {
            map["incidentPlanId"] = self.incidentPlanId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceFiled != nil {
            var tmp : [Any] = []
            for k in self.resourceFiled! {
                tmp.append(k.toMap())
            }
            map["resourceFiled"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
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
        if dict.keys.contains("autoRecoverSeconds") {
            self.autoRecoverSeconds = dict["autoRecoverSeconds"] as! Int32
        }
        if dict.keys.contains("closeExpire") {
            self.closeExpire = dict["closeExpire"] as! Int64
        }
        if dict.keys.contains("corporation") {
            var tmp : [IncidentPlanCorporationStruct] = []
            for v in dict["corporation"] as! [Any] {
                var model = IncidentPlanCorporationStruct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.corporation = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("escalationId") {
            self.escalationId = dict["escalationId"] as! [String]
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! Int64
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! Int64
        }
        if dict.keys.contains("groupBy") {
            var tmp : [IncidentPlanFieldPath] = []
            for v in dict["groupBy"] as! [Any] {
                var model = IncidentPlanFieldPath()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groupBy = tmp
        }
        if dict.keys.contains("incidentPlanId") {
            self.incidentPlanId = dict["incidentPlanId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceFiled") {
            var tmp : [IncidentPlanFieldPath] = []
            for v in dict["resourceFiled"] as! [Any] {
                var model = IncidentPlanFieldPath()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceFiled = tmp
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! Int64
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class IncidentResourceDetail : Tea.TeaModel {
    public var extraId: String?

    public var resourceId: [String: Any]?

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
        if self.extraId != nil {
            map["extraId"] = self.extraId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("extraId") {
            self.extraId = dict["extraId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! [String: Any]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class IncidentResourceStruct : Tea.TeaModel {
    public var description_: String?

    public var incidentId: String?

    public var incidentResourceId: String?

    public var resource: IncidentResourceDetail?

    public var source: String?

    public var time: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentResourceId != nil {
            map["incidentResourceId"] = self.incidentResourceId!
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("incidentResourceId") {
            self.incidentResourceId = dict["incidentResourceId"] as! String
        }
        if dict.keys.contains("resource") {
            var model = IncidentResourceDetail()
            model.fromMap(dict["resource"] as! [String: Any])
            self.resource = model
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! Int64
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! Int64
        }
    }
}

public class IncidentStruct : Tea.TeaModel {
    public var content: String?

    public var escalations: [IncidentEscalationStruct]?

    public var incidentId: String?

    public var incidentPlan: IncidentPlanStruct?

    public var resource: IncidentResourceDetail?

    public var severity: String?

    public var status: String?

    public var time: Int64?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.incidentPlan?.validate()
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.escalations != nil {
            var tmp : [Any] = []
            for k in self.escalations! {
                tmp.append(k.toMap())
            }
            map["escalations"] = tmp
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentPlan != nil {
            map["incidentPlan"] = self.incidentPlan?.toMap()
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.severity != nil {
            map["severity"] = self.severity!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("escalations") {
            var tmp : [IncidentEscalationStruct] = []
            for v in dict["escalations"] as! [Any] {
                var model = IncidentEscalationStruct()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.escalations = tmp
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("incidentPlan") {
            var model = IncidentPlanStruct()
            model.fromMap(dict["incidentPlan"] as! [String: Any])
            self.incidentPlan = model
        }
        if dict.keys.contains("resource") {
            var model = IncidentResourceDetail()
            model.fromMap(dict["resource"] as! [String: Any])
            self.resource = model
        }
        if dict.keys.contains("severity") {
            self.severity = dict["severity"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! Int64
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class IncidentTimeline : Tea.TeaModel {
    public var childType: String?

    public var content: String?

    public var incidentId: String?

    public var incidentTimelineId: String?

    public var time: Int64?

    public var timelineId: String?

    public var title: String?

    public var type: String?

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
        if self.childType != nil {
            map["childType"] = self.childType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentTimelineId != nil {
            map["incidentTimelineId"] = self.incidentTimelineId!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.timelineId != nil {
            map["timelineId"] = self.timelineId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("childType") {
            self.childType = dict["childType"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("incidentId") {
            self.incidentId = dict["incidentId"] as! String
        }
        if dict.keys.contains("incidentTimelineId") {
            self.incidentTimelineId = dict["incidentTimelineId"] as! String
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! Int64
        }
        if dict.keys.contains("timelineId") {
            self.timelineId = dict["timelineId"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class MaintainWindowForModify : Tea.TeaModel {
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
    public var description_: String?

    public var effectTimeRange: MaintainWindowForModify.EffectTimeRange?

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
        try self.effectTimeRange?.validate()
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effectTimeRange != nil {
            map["effectTimeRange"] = self.effectTimeRange?.toMap()
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
        if dict.keys.contains("effectTimeRange") {
            var model = MaintainWindowForModify.EffectTimeRange()
            model.fromMap(dict["effectTimeRange"] as! [String: Any])
            self.effectTimeRange = model
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
    public var createTime: String?

    public var description_: String?

    public var effectTimeRange: MaintainWindowForView.EffectTimeRange?

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
        try self.effectTimeRange?.validate()
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
        if self.effectTimeRange != nil {
            map["effectTimeRange"] = self.effectTimeRange?.toMap()
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
        if dict.keys.contains("effectTimeRange") {
            var model = MaintainWindowForView.EffectTimeRange()
            model.fromMap(dict["effectTimeRange"] as! [String: Any])
            self.effectTimeRange = model
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

public class PrometheusManagedInstance : Tea.TeaModel {
    public var createTime: String?

    public var instanceType: String?

    public var prometheusInstanceId: String?

    public var prometheusInstanceName: String?

    public var regionId: String?

    public var status: String?

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
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.prometheusInstanceId != nil {
            map["prometheusInstanceId"] = self.prometheusInstanceId!
        }
        if self.prometheusInstanceName != nil {
            map["prometheusInstanceName"] = self.prometheusInstanceName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.status != nil {
            map["status"] = self.status!
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
        if dict.keys.contains("instanceType") {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("prometheusInstanceId") {
            self.prometheusInstanceId = dict["prometheusInstanceId"] as! String
        }
        if dict.keys.contains("prometheusInstanceName") {
            self.prometheusInstanceName = dict["prometheusInstanceName"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class RumDnsResponse : Tea.TeaModel {
    public var domain: String?

    public var message: String?

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
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Bool
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

public class CreateEntityStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

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
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
    }
}

public class CreateEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateEntityStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrometheusInstanceRequest : Tea.TeaModel {
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
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var archiveDuration: Int32?

    public var authFreeReadPolicy: String?

    public var authFreeWritePolicy: String?

    public var enableAuthFreeRead: Bool?

    public var enableAuthFreeWrite: Bool?

    public var enableAuthToken: Bool?

    public var paymentType: String?

    public var prometheusInstanceName: String?

    public var status: String?

    public var storageDuration: Int32?

    public var tags: [CreatePrometheusInstanceRequest.Tags]?

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
        if self.archiveDuration != nil {
            map["archiveDuration"] = self.archiveDuration!
        }
        if self.authFreeReadPolicy != nil {
            map["authFreeReadPolicy"] = self.authFreeReadPolicy!
        }
        if self.authFreeWritePolicy != nil {
            map["authFreeWritePolicy"] = self.authFreeWritePolicy!
        }
        if self.enableAuthFreeRead != nil {
            map["enableAuthFreeRead"] = self.enableAuthFreeRead!
        }
        if self.enableAuthFreeWrite != nil {
            map["enableAuthFreeWrite"] = self.enableAuthFreeWrite!
        }
        if self.enableAuthToken != nil {
            map["enableAuthToken"] = self.enableAuthToken!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.prometheusInstanceName != nil {
            map["prometheusInstanceName"] = self.prometheusInstanceName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.storageDuration != nil {
            map["storageDuration"] = self.storageDuration!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("archiveDuration") {
            self.archiveDuration = dict["archiveDuration"] as! Int32
        }
        if dict.keys.contains("authFreeReadPolicy") {
            self.authFreeReadPolicy = dict["authFreeReadPolicy"] as! String
        }
        if dict.keys.contains("authFreeWritePolicy") {
            self.authFreeWritePolicy = dict["authFreeWritePolicy"] as! String
        }
        if dict.keys.contains("enableAuthFreeRead") {
            self.enableAuthFreeRead = dict["enableAuthFreeRead"] as! Bool
        }
        if dict.keys.contains("enableAuthFreeWrite") {
            self.enableAuthFreeWrite = dict["enableAuthFreeWrite"] as! Bool
        }
        if dict.keys.contains("enableAuthToken") {
            self.enableAuthToken = dict["enableAuthToken"] as! Bool
        }
        if dict.keys.contains("paymentType") {
            self.paymentType = dict["paymentType"] as! String
        }
        if dict.keys.contains("prometheusInstanceName") {
            self.prometheusInstanceName = dict["prometheusInstanceName"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("storageDuration") {
            self.storageDuration = dict["storageDuration"] as! Int32
        }
        if dict.keys.contains("tags") {
            var tmp : [CreatePrometheusInstanceRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = CreatePrometheusInstanceRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreatePrometheusInstanceResponseBody : Tea.TeaModel {
    public var prometheusInstanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prometheusInstanceId != nil {
            map["prometheusInstanceId"] = self.prometheusInstanceId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("prometheusInstanceId") {
            self.prometheusInstanceId = dict["prometheusInstanceId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreatePrometheusInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrometheusInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePrometheusInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUmodelRequest : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

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
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("group") {
                self.group = dict["group"] as! String
            }
            if dict.keys.contains("items") {
                self.items = dict["items"] as! [String]
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var commonSchemaRef: [CreateUmodelRequest.CommonSchemaRef]?

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
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonSchemaRef") {
            var tmp : [CreateUmodelRequest.CommonSchemaRef] = []
            for v in dict["commonSchemaRef"] as! [Any] {
                var model = CreateUmodelRequest.CommonSchemaRef()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.commonSchemaRef = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class CreateUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreateUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateUmodelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEntityStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteEntityStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUmodelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUmodelDataRequest : Tea.TeaModel {
    public var domain: String?

    public var kind: String?

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
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class DeleteUmodelDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUmodelDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEntityStoreResponseBody : Tea.TeaModel {
    public var regionId: String?

    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
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
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
    }
}

public class GetEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEntityStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEntityStoreDataHeaders : Tea.TeaModel {
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
            map["acceptEncoding"] = self.acceptEncoding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("acceptEncoding") {
            self.acceptEncoding = dict["acceptEncoding"] as! String
        }
    }
}

public class GetEntityStoreDataRequest : Tea.TeaModel {
    public var from: Int32?

    public var query: String?

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
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int32
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int32
        }
    }
}

public class GetEntityStoreDataResponseBody : Tea.TeaModel {
    public var data: [[String]]?

    public var header: [String]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.header != nil {
            map["header"] = self.header!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [[String]]
        }
        if dict.keys.contains("header") {
            self.header = dict["header"] as! [String]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEntityStoreDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEntityStoreDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEntityStoreDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUmodelResponseBody : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

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
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("group") {
                self.group = dict["group"] as! String
            }
            if dict.keys.contains("items") {
                self.items = dict["items"] as! [String]
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var commonSchemaRef: [GetUmodelResponseBody.CommonSchemaRef]?

    public var description_: String?

    public var regionId: String?

    public var requestId: String?

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
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
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
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonSchemaRef") {
            var tmp : [GetUmodelResponseBody.CommonSchemaRef] = []
            for v in dict["commonSchemaRef"] as! [Any] {
                var model = GetUmodelResponseBody.CommonSchemaRef()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.commonSchemaRef = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUmodelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUmodelDataRequest : Tea.TeaModel {
    public var content: Any?

    public var method: String?

    public override init() {
        super.init()
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
        if self.method != nil {
            map["method"] = self.method!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! Any
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
    }
}

public class GetUmodelDataResponseBody : Tea.TeaModel {
    public class Errors : Tea.TeaModel {
        public var message: String?

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
                map["message"] = self.message!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("message") {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var errors: [GetUmodelDataResponseBody.Errors]?

    public var links: [Any]?

    public var nodes: [Any]?

    public var requestId: String?

    public var totalLinksCount: Int32?

    public var totalNodesCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["errors"] = tmp
        }
        if self.links != nil {
            map["links"] = self.links!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalLinksCount != nil {
            map["totalLinksCount"] = self.totalLinksCount!
        }
        if self.totalNodesCount != nil {
            map["totalNodesCount"] = self.totalNodesCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errors") {
            var tmp : [GetUmodelDataResponseBody.Errors] = []
            for v in dict["errors"] as! [Any] {
                var model = GetUmodelDataResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("links") {
            self.links = dict["links"] as! [Any]
        }
        if dict.keys.contains("nodes") {
            self.nodes = dict["nodes"] as! [Any]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalLinksCount") {
            self.totalLinksCount = dict["totalLinksCount"] as! Int32
        }
        if dict.keys.contains("totalNodesCount") {
            self.totalNodesCount = dict["totalNodesCount"] as! Int32
        }
    }
}

public class GetUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUmodelDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var displayName: String?

    public var lastModifyTime: String?

    public var regionId: String?

    public var requestId: String?

    public var slsProject: String?

    public var workspaceName: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
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
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
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
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("lastModifyTime") {
            self.lastModifyTime = dict["lastModifyTime"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var workspaceName: String?

    public var workspaceNameList: [String]?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        if self.workspaceNameList != nil {
            map["workspaceNameList"] = self.workspaceNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
        if dict.keys.contains("workspaceNameList") {
            self.workspaceNameList = dict["workspaceNameList"] as! [String]
        }
    }
}

public class ListWorkspacesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var workspaceName: String?

    public var workspaceNameListShrink: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        if self.workspaceNameListShrink != nil {
            map["workspaceNameList"] = self.workspaceNameListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
        if dict.keys.contains("workspaceNameList") {
            self.workspaceNameListShrink = dict["workspaceNameList"] as! String
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var lastModifyTime: String?

        public var regionId: String?

        public var slsProject: String?

        public var workspaceName: String?

        public override init() {
            super.init()
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
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.lastModifyTime != nil {
                map["lastModifyTime"] = self.lastModifyTime!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.slsProject != nil {
                map["slsProject"] = self.slsProject!
            }
            if self.workspaceName != nil {
                map["workspaceName"] = self.workspaceName!
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
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("lastModifyTime") {
                self.lastModifyTime = dict["lastModifyTime"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("slsProject") {
                self.slsProject = dict["slsProject"] as! String
            }
            if dict.keys.contains("workspaceName") {
                self.workspaceName = dict["workspaceName"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var total: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
        if dict.keys.contains("workspaces") {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in dict["workspaces"] as! [Any] {
                var model = ListWorkspacesResponseBody.Workspaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWorkspacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var slsProject: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
    }
}

public class PutWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

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
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspaceName") {
            self.workspaceName = dict["workspaceName"] as! String
        }
    }
}

public class PutWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PutWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUmodelRequest : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

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
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("group") {
                self.group = dict["group"] as! String
            }
            if dict.keys.contains("items") {
                self.items = dict["items"] as! [String]
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var commonSchemaRef: [UpdateUmodelRequest.CommonSchemaRef]?

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
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonSchemaRef") {
            var tmp : [UpdateUmodelRequest.CommonSchemaRef] = []
            for v in dict["commonSchemaRef"] as! [Any] {
                var model = UpdateUmodelRequest.CommonSchemaRef()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.commonSchemaRef = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class UpdateUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class UpdateUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUmodelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpsertUmodelDataRequest : Tea.TeaModel {
    public var elements: [Any]?

    public var method: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elements != nil {
            map["elements"] = self.elements!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("elements") {
            self.elements = dict["elements"] as! [Any]
        }
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
    }
}

public class UpsertUmodelDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpsertUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpsertUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpsertUmodelDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
