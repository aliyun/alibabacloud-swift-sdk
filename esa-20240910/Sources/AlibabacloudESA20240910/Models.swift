import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class WafBatchRuleShared : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var code: Int32?

            public var id: Int64?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
            }
        }
        public var response: WafBatchRuleShared.Actions.Response?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Response") {
                var model = WafBatchRuleShared.Actions.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
        }
    }
    public var action: String?

    public var actions: WafBatchRuleShared.Actions?

    public var crossSiteId: Int64?

    public var expression: String?

    public var match: WafRuleMatch2?

    public var mode: String?

    public var name: String?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.actions?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actions != nil {
            map["Actions"] = self.actions?.toMap()
        }
        if self.crossSiteId != nil {
            map["CrossSiteId"] = self.crossSiteId!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.match != nil {
            map["Match"] = self.match?.toMap()
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("Actions") {
            var model = WafBatchRuleShared.Actions()
            model.fromMap(dict["Actions"] as! [String: Any])
            self.actions = model
        }
        if dict.keys.contains("CrossSiteId") {
            self.crossSiteId = dict["CrossSiteId"] as! Int64
        }
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("Match") {
            var model = WafRuleMatch2()
            model.fromMap(dict["Match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
    }
}

public class WafQuotaInteger : Tea.TeaModel {
    public var equal: Int32?

    public var greaterThan: Int32?

    public var greaterThanOrEqual: Int32?

    public var lessThan: Int32?

    public var lessThanOrEqual: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.equal != nil {
            map["Equal"] = self.equal!
        }
        if self.greaterThan != nil {
            map["GreaterThan"] = self.greaterThan!
        }
        if self.greaterThanOrEqual != nil {
            map["GreaterThanOrEqual"] = self.greaterThanOrEqual!
        }
        if self.lessThan != nil {
            map["LessThan"] = self.lessThan!
        }
        if self.lessThanOrEqual != nil {
            map["LessThanOrEqual"] = self.lessThanOrEqual!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Equal") {
            self.equal = dict["Equal"] as! Int32
        }
        if dict.keys.contains("GreaterThan") {
            self.greaterThan = dict["GreaterThan"] as! Int32
        }
        if dict.keys.contains("GreaterThanOrEqual") {
            self.greaterThanOrEqual = dict["GreaterThanOrEqual"] as! Int32
        }
        if dict.keys.contains("LessThan") {
            self.lessThan = dict["LessThan"] as! Int32
        }
        if dict.keys.contains("LessThanOrEqual") {
            self.lessThanOrEqual = dict["LessThanOrEqual"] as! Int32
        }
    }
}

public class WafQuotaString : Tea.TeaModel {
    public var regexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regexp != nil {
            map["Regexp"] = self.regexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regexp") {
            self.regexp = dict["Regexp"] as! String
        }
    }
}

public class WafRuleConfig : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public class Bypass : Tea.TeaModel {
            public var regularRules: [Int64]?

            public var regularTypes: [String]?

            public var skip: String?

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
                if self.regularRules != nil {
                    map["RegularRules"] = self.regularRules!
                }
                if self.regularTypes != nil {
                    map["RegularTypes"] = self.regularTypes!
                }
                if self.skip != nil {
                    map["Skip"] = self.skip!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegularRules") {
                    self.regularRules = dict["RegularRules"] as! [Int64]
                }
                if dict.keys.contains("RegularTypes") {
                    self.regularTypes = dict["RegularTypes"] as! [String]
                }
                if dict.keys.contains("Skip") {
                    self.skip = dict["Skip"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [String]
                }
            }
        }
        public class Response : Tea.TeaModel {
            public var code: Int32?

            public var id: Int64?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
            }
        }
        public var bypass: WafRuleConfig.Actions.Bypass?

        public var response: WafRuleConfig.Actions.Response?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bypass?.validate()
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bypass != nil {
                map["Bypass"] = self.bypass?.toMap()
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bypass") {
                var model = WafRuleConfig.Actions.Bypass()
                model.fromMap(dict["Bypass"] as! [String: Any])
                self.bypass = model
            }
            if dict.keys.contains("Response") {
                var model = WafRuleConfig.Actions.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
        }
    }
    public class AppPackage : Tea.TeaModel {
        public class PackageSigns : Tea.TeaModel {
            public var name: String?

            public var sign: String?

            public override init() {
                super.init()
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
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Sign") {
                    self.sign = dict["Sign"] as! String
                }
            }
        }
        public var packageSigns: [WafRuleConfig.AppPackage.PackageSigns]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.packageSigns != nil {
                var tmp : [Any] = []
                for k in self.packageSigns! {
                    tmp.append(k.toMap())
                }
                map["PackageSigns"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PackageSigns") {
                var tmp : [WafRuleConfig.AppPackage.PackageSigns] = []
                for v in dict["PackageSigns"] as! [Any] {
                    var model = WafRuleConfig.AppPackage.PackageSigns()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.packageSigns = tmp
            }
        }
    }
    public class AppSdk : Tea.TeaModel {
        public class CustomSign : Tea.TeaModel {
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
        public var customSign: WafRuleConfig.AppSdk.CustomSign?

        public var customSignStatus: String?

        public var featureAbnormal: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customSign?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customSign != nil {
                map["CustomSign"] = self.customSign?.toMap()
            }
            if self.customSignStatus != nil {
                map["CustomSignStatus"] = self.customSignStatus!
            }
            if self.featureAbnormal != nil {
                map["FeatureAbnormal"] = self.featureAbnormal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSign") {
                var model = WafRuleConfig.AppSdk.CustomSign()
                model.fromMap(dict["CustomSign"] as! [String: Any])
                self.customSign = model
            }
            if dict.keys.contains("CustomSignStatus") {
                self.customSignStatus = dict["CustomSignStatus"] as! String
            }
            if dict.keys.contains("FeatureAbnormal") {
                self.featureAbnormal = dict["FeatureAbnormal"] as! [String]
            }
        }
    }
    public class ManagedRulesets : Tea.TeaModel {
        public class ManagedRules : Tea.TeaModel {
            public var action: String?

            public var id: Int64?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var action: String?

        public var attackType: Int32?

        public var managedRules: [WafRuleConfig.ManagedRulesets.ManagedRules]?

        public var numberEnabled: Int32?

        public var numberTotal: Int32?

        public var protectionLevel: Int32?

        public override init() {
            super.init()
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
            if self.attackType != nil {
                map["AttackType"] = self.attackType!
            }
            if self.managedRules != nil {
                var tmp : [Any] = []
                for k in self.managedRules! {
                    tmp.append(k.toMap())
                }
                map["ManagedRules"] = tmp
            }
            if self.numberEnabled != nil {
                map["NumberEnabled"] = self.numberEnabled!
            }
            if self.numberTotal != nil {
                map["NumberTotal"] = self.numberTotal!
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("AttackType") {
                self.attackType = dict["AttackType"] as! Int32
            }
            if dict.keys.contains("ManagedRules") {
                var tmp : [WafRuleConfig.ManagedRulesets.ManagedRules] = []
                for v in dict["ManagedRules"] as! [Any] {
                    var model = WafRuleConfig.ManagedRulesets.ManagedRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.managedRules = tmp
            }
            if dict.keys.contains("NumberEnabled") {
                self.numberEnabled = dict["NumberEnabled"] as! Int32
            }
            if dict.keys.contains("NumberTotal") {
                self.numberTotal = dict["NumberTotal"] as! Int32
            }
            if dict.keys.contains("ProtectionLevel") {
                self.protectionLevel = dict["ProtectionLevel"] as! Int32
            }
        }
    }
    public class RateLimit : Tea.TeaModel {
        public class Threshold : Tea.TeaModel {
            public class ResponseStatus : Tea.TeaModel {
                public var code: Int32?

                public var count: Int32?

                public var ratio: Int32?

                public override init() {
                    super.init()
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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! Int32
                    }
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! Int32
                    }
                }
            }
            public var distinctManagedRules: Int32?

            public var managedRulesBlocked: Int32?

            public var request: Int32?

            public var responseStatus: WafRuleConfig.RateLimit.Threshold.ResponseStatus?

            public var traffic: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.responseStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.distinctManagedRules != nil {
                    map["DistinctManagedRules"] = self.distinctManagedRules!
                }
                if self.managedRulesBlocked != nil {
                    map["ManagedRulesBlocked"] = self.managedRulesBlocked!
                }
                if self.request != nil {
                    map["Request"] = self.request!
                }
                if self.responseStatus != nil {
                    map["ResponseStatus"] = self.responseStatus?.toMap()
                }
                if self.traffic != nil {
                    map["Traffic"] = self.traffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DistinctManagedRules") {
                    self.distinctManagedRules = dict["DistinctManagedRules"] as! Int32
                }
                if dict.keys.contains("ManagedRulesBlocked") {
                    self.managedRulesBlocked = dict["ManagedRulesBlocked"] as! Int32
                }
                if dict.keys.contains("Request") {
                    self.request = dict["Request"] as! Int32
                }
                if dict.keys.contains("ResponseStatus") {
                    var model = WafRuleConfig.RateLimit.Threshold.ResponseStatus()
                    model.fromMap(dict["ResponseStatus"] as! [String: Any])
                    self.responseStatus = model
                }
                if dict.keys.contains("Traffic") {
                    self.traffic = dict["Traffic"] as! String
                }
            }
        }
        public var characteristics: WafRuleMatch2?

        public var interval: Int32?

        public var onHit: Bool?

        public var TTL: Int32?

        public var threshold: WafRuleConfig.RateLimit.Threshold?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.characteristics?.validate()
            try self.threshold?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.characteristics != nil {
                map["Characteristics"] = self.characteristics?.toMap()
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.onHit != nil {
                map["OnHit"] = self.onHit!
            }
            if self.TTL != nil {
                map["TTL"] = self.TTL!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Characteristics") {
                var model = WafRuleMatch2()
                model.fromMap(dict["Characteristics"] as! [String: Any])
                self.characteristics = model
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("OnHit") {
                self.onHit = dict["OnHit"] as! Bool
            }
            if dict.keys.contains("TTL") {
                self.TTL = dict["TTL"] as! Int32
            }
            if dict.keys.contains("Threshold") {
                var model = WafRuleConfig.RateLimit.Threshold()
                model.fromMap(dict["Threshold"] as! [String: Any])
                self.threshold = model
            }
        }
    }
    public var action: String?

    public var actions: WafRuleConfig.Actions?

    public var appPackage: WafRuleConfig.AppPackage?

    public var appSdk: WafRuleConfig.AppSdk?

    public var expression: String?

    public var id: Int64?

    public var managedGroupId: Int64?

    public var managedList: String?

    public var managedRulesets: [WafRuleConfig.ManagedRulesets]?

    public var match: WafRuleMatch?

    public var name: String?

    public var rateLimit: WafRuleConfig.RateLimit?

    public var sigchl: [String]?

    public var status: String?

    public var timer: WafTimer?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.actions?.validate()
        try self.appPackage?.validate()
        try self.appSdk?.validate()
        try self.match?.validate()
        try self.rateLimit?.validate()
        try self.timer?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actions != nil {
            map["Actions"] = self.actions?.toMap()
        }
        if self.appPackage != nil {
            map["AppPackage"] = self.appPackage?.toMap()
        }
        if self.appSdk != nil {
            map["AppSdk"] = self.appSdk?.toMap()
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.managedGroupId != nil {
            map["ManagedGroupId"] = self.managedGroupId!
        }
        if self.managedList != nil {
            map["ManagedList"] = self.managedList!
        }
        if self.managedRulesets != nil {
            var tmp : [Any] = []
            for k in self.managedRulesets! {
                tmp.append(k.toMap())
            }
            map["ManagedRulesets"] = tmp
        }
        if self.match != nil {
            map["Match"] = self.match?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.rateLimit != nil {
            map["RateLimit"] = self.rateLimit?.toMap()
        }
        if self.sigchl != nil {
            map["Sigchl"] = self.sigchl!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timer != nil {
            map["Timer"] = self.timer?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("Actions") {
            var model = WafRuleConfig.Actions()
            model.fromMap(dict["Actions"] as! [String: Any])
            self.actions = model
        }
        if dict.keys.contains("AppPackage") {
            var model = WafRuleConfig.AppPackage()
            model.fromMap(dict["AppPackage"] as! [String: Any])
            self.appPackage = model
        }
        if dict.keys.contains("AppSdk") {
            var model = WafRuleConfig.AppSdk()
            model.fromMap(dict["AppSdk"] as! [String: Any])
            self.appSdk = model
        }
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ManagedGroupId") {
            self.managedGroupId = dict["ManagedGroupId"] as! Int64
        }
        if dict.keys.contains("ManagedList") {
            self.managedList = dict["ManagedList"] as! String
        }
        if dict.keys.contains("ManagedRulesets") {
            var tmp : [WafRuleConfig.ManagedRulesets] = []
            for v in dict["ManagedRulesets"] as! [Any] {
                var model = WafRuleConfig.ManagedRulesets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.managedRulesets = tmp
        }
        if dict.keys.contains("Match") {
            var model = WafRuleMatch()
            model.fromMap(dict["Match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RateLimit") {
            var model = WafRuleConfig.RateLimit()
            model.fromMap(dict["RateLimit"] as! [String: Any])
            self.rateLimit = model
        }
        if dict.keys.contains("Sigchl") {
            self.sigchl = dict["Sigchl"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Timer") {
            var model = WafTimer()
            model.fromMap(dict["Timer"] as! [String: Any])
            self.timer = model
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class WafRuleMatch : Tea.TeaModel {
    public var convertToLower: Bool?

    public var criteria: [WafRuleMatch]?

    public var logic: String?

    public var matchOperator: String?

    public var matchType: String?

    public var matchValue: Any?

    public var negate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertToLower != nil {
            map["ConvertToLower"] = self.convertToLower!
        }
        if self.criteria != nil {
            var tmp : [Any] = []
            for k in self.criteria! {
                tmp.append(k.toMap())
            }
            map["Criteria"] = tmp
        }
        if self.logic != nil {
            map["Logic"] = self.logic!
        }
        if self.matchOperator != nil {
            map["MatchOperator"] = self.matchOperator!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.matchValue != nil {
            map["MatchValue"] = self.matchValue!
        }
        if self.negate != nil {
            map["Negate"] = self.negate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConvertToLower") {
            self.convertToLower = dict["ConvertToLower"] as! Bool
        }
        if dict.keys.contains("Criteria") {
            var tmp : [WafRuleMatch] = []
            for v in dict["Criteria"] as! [Any] {
                var model = WafRuleMatch()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.criteria = tmp
        }
        if dict.keys.contains("Logic") {
            self.logic = dict["Logic"] as! String
        }
        if dict.keys.contains("MatchOperator") {
            self.matchOperator = dict["MatchOperator"] as! String
        }
        if dict.keys.contains("MatchType") {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MatchValue") {
            self.matchValue = dict["MatchValue"] as! Any
        }
        if dict.keys.contains("Negate") {
            self.negate = dict["Negate"] as! Bool
        }
    }
}

public class WafRuleMatch2 : Tea.TeaModel {
    public class Criteria : Tea.TeaModel {
        public class Criteria : Tea.TeaModel {
            public class Criteria : Tea.TeaModel {
                public var convertToLower: Bool?

                public var matchOperator: String?

                public var matchType: String?

                public var matchValue: Any?

                public var negate: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.convertToLower != nil {
                        map["ConvertToLower"] = self.convertToLower!
                    }
                    if self.matchOperator != nil {
                        map["MatchOperator"] = self.matchOperator!
                    }
                    if self.matchType != nil {
                        map["MatchType"] = self.matchType!
                    }
                    if self.matchValue != nil {
                        map["MatchValue"] = self.matchValue!
                    }
                    if self.negate != nil {
                        map["Negate"] = self.negate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConvertToLower") {
                        self.convertToLower = dict["ConvertToLower"] as! Bool
                    }
                    if dict.keys.contains("MatchOperator") {
                        self.matchOperator = dict["MatchOperator"] as! String
                    }
                    if dict.keys.contains("MatchType") {
                        self.matchType = dict["MatchType"] as! String
                    }
                    if dict.keys.contains("MatchValue") {
                        self.matchValue = dict["MatchValue"] as! Any
                    }
                    if dict.keys.contains("Negate") {
                        self.negate = dict["Negate"] as! Bool
                    }
                }
            }
            public var convertToLower: Bool?

            public var criteria: [WafRuleMatch2.Criteria.Criteria.Criteria]?

            public var logic: String?

            public var matchOperator: String?

            public var matchType: String?

            public var matchValue: Any?

            public var negate: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.convertToLower != nil {
                    map["ConvertToLower"] = self.convertToLower!
                }
                if self.criteria != nil {
                    var tmp : [Any] = []
                    for k in self.criteria! {
                        tmp.append(k.toMap())
                    }
                    map["Criteria"] = tmp
                }
                if self.logic != nil {
                    map["Logic"] = self.logic!
                }
                if self.matchOperator != nil {
                    map["MatchOperator"] = self.matchOperator!
                }
                if self.matchType != nil {
                    map["MatchType"] = self.matchType!
                }
                if self.matchValue != nil {
                    map["MatchValue"] = self.matchValue!
                }
                if self.negate != nil {
                    map["Negate"] = self.negate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConvertToLower") {
                    self.convertToLower = dict["ConvertToLower"] as! Bool
                }
                if dict.keys.contains("Criteria") {
                    var tmp : [WafRuleMatch2.Criteria.Criteria.Criteria] = []
                    for v in dict["Criteria"] as! [Any] {
                        var model = WafRuleMatch2.Criteria.Criteria.Criteria()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.criteria = tmp
                }
                if dict.keys.contains("Logic") {
                    self.logic = dict["Logic"] as! String
                }
                if dict.keys.contains("MatchOperator") {
                    self.matchOperator = dict["MatchOperator"] as! String
                }
                if dict.keys.contains("MatchType") {
                    self.matchType = dict["MatchType"] as! String
                }
                if dict.keys.contains("MatchValue") {
                    self.matchValue = dict["MatchValue"] as! Any
                }
                if dict.keys.contains("Negate") {
                    self.negate = dict["Negate"] as! Bool
                }
            }
        }
        public var convertToLower: Bool?

        public var criteria: [WafRuleMatch2.Criteria.Criteria]?

        public var logic: String?

        public var matchOperator: String?

        public var matchType: String?

        public var matchValue: Any?

        public var negate: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.convertToLower != nil {
                map["ConvertToLower"] = self.convertToLower!
            }
            if self.criteria != nil {
                var tmp : [Any] = []
                for k in self.criteria! {
                    tmp.append(k.toMap())
                }
                map["Criteria"] = tmp
            }
            if self.logic != nil {
                map["Logic"] = self.logic!
            }
            if self.matchOperator != nil {
                map["MatchOperator"] = self.matchOperator!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.matchValue != nil {
                map["MatchValue"] = self.matchValue!
            }
            if self.negate != nil {
                map["Negate"] = self.negate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConvertToLower") {
                self.convertToLower = dict["ConvertToLower"] as! Bool
            }
            if dict.keys.contains("Criteria") {
                var tmp : [WafRuleMatch2.Criteria.Criteria] = []
                for v in dict["Criteria"] as! [Any] {
                    var model = WafRuleMatch2.Criteria.Criteria()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.criteria = tmp
            }
            if dict.keys.contains("Logic") {
                self.logic = dict["Logic"] as! String
            }
            if dict.keys.contains("MatchOperator") {
                self.matchOperator = dict["MatchOperator"] as! String
            }
            if dict.keys.contains("MatchType") {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("MatchValue") {
                self.matchValue = dict["MatchValue"] as! Any
            }
            if dict.keys.contains("Negate") {
                self.negate = dict["Negate"] as! Bool
            }
        }
    }
    public var convertToLower: Bool?

    public var criteria: [WafRuleMatch2.Criteria]?

    public var logic: String?

    public var matchOperator: String?

    public var matchType: String?

    public var matchValue: Any?

    public var negate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertToLower != nil {
            map["ConvertToLower"] = self.convertToLower!
        }
        if self.criteria != nil {
            var tmp : [Any] = []
            for k in self.criteria! {
                tmp.append(k.toMap())
            }
            map["Criteria"] = tmp
        }
        if self.logic != nil {
            map["Logic"] = self.logic!
        }
        if self.matchOperator != nil {
            map["MatchOperator"] = self.matchOperator!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.matchValue != nil {
            map["MatchValue"] = self.matchValue!
        }
        if self.negate != nil {
            map["Negate"] = self.negate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConvertToLower") {
            self.convertToLower = dict["ConvertToLower"] as! Bool
        }
        if dict.keys.contains("Criteria") {
            var tmp : [WafRuleMatch2.Criteria] = []
            for v in dict["Criteria"] as! [Any] {
                var model = WafRuleMatch2.Criteria()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.criteria = tmp
        }
        if dict.keys.contains("Logic") {
            self.logic = dict["Logic"] as! String
        }
        if dict.keys.contains("MatchOperator") {
            self.matchOperator = dict["MatchOperator"] as! String
        }
        if dict.keys.contains("MatchType") {
            self.matchType = dict["MatchType"] as! String
        }
        if dict.keys.contains("MatchValue") {
            self.matchValue = dict["MatchValue"] as! Any
        }
        if dict.keys.contains("Negate") {
            self.negate = dict["Negate"] as! Bool
        }
    }
}

public class WafSiteSettings : Tea.TeaModel {
    public class AddBotProtectionHeaders : Tea.TeaModel {
        public var enable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
        }
    }
    public class AddSecurityHeaders : Tea.TeaModel {
        public var enable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
        }
    }
    public class ClientIpIdentifier : Tea.TeaModel {
        public var headers: [String]?

        public var mode: String?

        public override init() {
            super.init()
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
                map["Headers"] = self.headers!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Headers") {
                self.headers = dict["Headers"] as! [String]
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
        }
    }
    public class SecurityLevel : Tea.TeaModel {
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var addBotProtectionHeaders: WafSiteSettings.AddBotProtectionHeaders?

    public var addSecurityHeaders: WafSiteSettings.AddSecurityHeaders?

    public var clientIpIdentifier: WafSiteSettings.ClientIpIdentifier?

    public var securityLevel: WafSiteSettings.SecurityLevel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addBotProtectionHeaders?.validate()
        try self.addSecurityHeaders?.validate()
        try self.clientIpIdentifier?.validate()
        try self.securityLevel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addBotProtectionHeaders != nil {
            map["AddBotProtectionHeaders"] = self.addBotProtectionHeaders?.toMap()
        }
        if self.addSecurityHeaders != nil {
            map["AddSecurityHeaders"] = self.addSecurityHeaders?.toMap()
        }
        if self.clientIpIdentifier != nil {
            map["ClientIpIdentifier"] = self.clientIpIdentifier?.toMap()
        }
        if self.securityLevel != nil {
            map["SecurityLevel"] = self.securityLevel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddBotProtectionHeaders") {
            var model = WafSiteSettings.AddBotProtectionHeaders()
            model.fromMap(dict["AddBotProtectionHeaders"] as! [String: Any])
            self.addBotProtectionHeaders = model
        }
        if dict.keys.contains("AddSecurityHeaders") {
            var model = WafSiteSettings.AddSecurityHeaders()
            model.fromMap(dict["AddSecurityHeaders"] as! [String: Any])
            self.addSecurityHeaders = model
        }
        if dict.keys.contains("ClientIpIdentifier") {
            var model = WafSiteSettings.ClientIpIdentifier()
            model.fromMap(dict["ClientIpIdentifier"] as! [String: Any])
            self.clientIpIdentifier = model
        }
        if dict.keys.contains("SecurityLevel") {
            var model = WafSiteSettings.SecurityLevel()
            model.fromMap(dict["SecurityLevel"] as! [String: Any])
            self.securityLevel = model
        }
    }
}

public class WafTimer : Tea.TeaModel {
    public class Periods : Tea.TeaModel {
        public var end: String?

        public var start: String?

        public override init() {
            super.init()
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
            if self.start != nil {
                map["Start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("End") {
                self.end = dict["End"] as! String
            }
            if dict.keys.contains("Start") {
                self.start = dict["Start"] as! String
            }
        }
    }
    public class WeeklyPeriods : Tea.TeaModel {
        public class DailyPeriods : Tea.TeaModel {
            public var end: String?

            public var start: String?

            public override init() {
                super.init()
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
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! String
                }
                if dict.keys.contains("Start") {
                    self.start = dict["Start"] as! String
                }
            }
        }
        public var dailyPeriods: [WafTimer.WeeklyPeriods.DailyPeriods]?

        public var days: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dailyPeriods != nil {
                var tmp : [Any] = []
                for k in self.dailyPeriods! {
                    tmp.append(k.toMap())
                }
                map["DailyPeriods"] = tmp
            }
            if self.days != nil {
                map["Days"] = self.days!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DailyPeriods") {
                var tmp : [WafTimer.WeeklyPeriods.DailyPeriods] = []
                for v in dict["DailyPeriods"] as! [Any] {
                    var model = WafTimer.WeeklyPeriods.DailyPeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dailyPeriods = tmp
            }
            if dict.keys.contains("Days") {
                self.days = dict["Days"] as! String
            }
        }
    }
    public var periods: [WafTimer.Periods]?

    public var scopes: String?

    public var weeklyPeriods: [WafTimer.WeeklyPeriods]?

    public var zone: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.periods != nil {
            var tmp : [Any] = []
            for k in self.periods! {
                tmp.append(k.toMap())
            }
            map["Periods"] = tmp
        }
        if self.scopes != nil {
            map["Scopes"] = self.scopes!
        }
        if self.weeklyPeriods != nil {
            var tmp : [Any] = []
            for k in self.weeklyPeriods! {
                tmp.append(k.toMap())
            }
            map["WeeklyPeriods"] = tmp
        }
        if self.zone != nil {
            map["Zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Periods") {
            var tmp : [WafTimer.Periods] = []
            for v in dict["Periods"] as! [Any] {
                var model = WafTimer.Periods()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.periods = tmp
        }
        if dict.keys.contains("Scopes") {
            self.scopes = dict["Scopes"] as! String
        }
        if dict.keys.contains("WeeklyPeriods") {
            var tmp : [WafTimer.WeeklyPeriods] = []
            for v in dict["WeeklyPeriods"] as! [Any] {
                var model = WafTimer.WeeklyPeriods()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.weeklyPeriods = tmp
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! Int32
        }
    }
}

public class HttpDeliveryHeaderParamValue : Tea.TeaModel {
    public var staticValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.staticValue != nil {
            map["StaticValue"] = self.staticValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("StaticValue") {
            self.staticValue = dict["StaticValue"] as! String
        }
    }
}

public class HttpDeliveryQueryParamValue : Tea.TeaModel {
    public var staticValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.staticValue != nil {
            map["StaticValue"] = self.staticValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("StaticValue") {
            self.staticValue = dict["StaticValue"] as! String
        }
    }
}

public class FieldContentValue : Tea.TeaModel {
    public class FieldList : Tea.TeaModel {
        public var fieldName: String?

        public var description_: String?

        public var descriptionCn: String?

        public var category: String?

        public var dataType: String?

        public var sortOrder: Int64?

        public var isDefault: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionCn != nil {
                map["DescriptionCn"] = self.descriptionCn!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.sortOrder != nil {
                map["SortOrder"] = self.sortOrder!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FieldName") {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DescriptionCn") {
                self.descriptionCn = dict["DescriptionCn"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("SortOrder") {
                self.sortOrder = dict["SortOrder"] as! Int64
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
        }
    }
    public var sortOrder: Int64?

    public var fieldList: [FieldContentValue.FieldList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.fieldList != nil {
            var tmp : [Any] = []
            for k in self.fieldList! {
                tmp.append(k.toMap())
            }
            map["FieldList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! Int64
        }
        if dict.keys.contains("FieldList") {
            var tmp : [FieldContentValue.FieldList] = []
            for v in dict["FieldList"] as! [Any] {
                var model = FieldContentValue.FieldList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fieldList = tmp
        }
    }
}

public class QuotaListItemsValue : Tea.TeaModel {
    public var enable: Bool?

    public var value: WafQuotaString?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Value") {
            var model = WafQuotaString()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class QuotaPageContentTypesValue : Tea.TeaModel {
    public var enable: Bool?

    public var contentLength: WafQuotaInteger?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contentLength?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.contentLength != nil {
            map["ContentLength"] = self.contentLength?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("ContentLength") {
            var model = WafQuotaInteger()
            model.fromMap(dict["ContentLength"] as! [String: Any])
            self.contentLength = model
        }
    }
}

public class ActivateClientCertificateRequest : Tea.TeaModel {
    public var id: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ActivateClientCertificateResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public var siteId: Int64?

    public var siteName: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
    }
}

public class ActivateClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ActivateClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchCreateRecordsRequest : Tea.TeaModel {
    public class RecordList : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var algorithm: Int32?

            public var certificate: String?

            public var fingerprint: String?

            public var flag: Int32?

            public var keyTag: Int32?

            public var matchingType: Int32?

            public var port: Int32?

            public var priority: Int32?

            public var selector: Int32?

            public var tag: String?

            public var type: Int32?

            public var usage: Int32?

            public var value: String?

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
                if self.algorithm != nil {
                    map["Algorithm"] = self.algorithm!
                }
                if self.certificate != nil {
                    map["Certificate"] = self.certificate!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.flag != nil {
                    map["Flag"] = self.flag!
                }
                if self.keyTag != nil {
                    map["KeyTag"] = self.keyTag!
                }
                if self.matchingType != nil {
                    map["MatchingType"] = self.matchingType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.selector != nil {
                    map["Selector"] = self.selector!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Algorithm") {
                    self.algorithm = dict["Algorithm"] as! Int32
                }
                if dict.keys.contains("Certificate") {
                    self.certificate = dict["Certificate"] as! String
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("Flag") {
                    self.flag = dict["Flag"] as! Int32
                }
                if dict.keys.contains("KeyTag") {
                    self.keyTag = dict["KeyTag"] as! Int32
                }
                if dict.keys.contains("MatchingType") {
                    self.matchingType = dict["MatchingType"] as! Int32
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Selector") {
                    self.selector = dict["Selector"] as! Int32
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! Int32
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var bizName: String?

        public var data: BatchCreateRecordsRequest.RecordList.Data?

        public var proxied: Bool?

        public var recordName: String?

        public var sourceType: String?

        public var ttl: Int32?

        public var type: String?

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
            if self.bizName != nil {
                map["BizName"] = self.bizName!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.proxied != nil {
                map["Proxied"] = self.proxied!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizName") {
                self.bizName = dict["BizName"] as! String
            }
            if dict.keys.contains("Data") {
                var model = BatchCreateRecordsRequest.RecordList.Data()
                model.fromMap(dict["Data"] as! [String: Any])
                self.data = model
            }
            if dict.keys.contains("Proxied") {
                self.proxied = dict["Proxied"] as! Bool
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Ttl") {
                self.ttl = dict["Ttl"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var recordList: [BatchCreateRecordsRequest.RecordList]?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordList != nil {
            var tmp : [Any] = []
            for k in self.recordList! {
                tmp.append(k.toMap())
            }
            map["RecordList"] = tmp
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordList") {
            var tmp : [BatchCreateRecordsRequest.RecordList] = []
            for v in dict["RecordList"] as! [Any] {
                var model = BatchCreateRecordsRequest.RecordList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.recordList = tmp
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class BatchCreateRecordsShrinkRequest : Tea.TeaModel {
    public var recordListShrink: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordListShrink != nil {
            map["RecordList"] = self.recordListShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordList") {
            self.recordListShrink = dict["RecordList"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class BatchCreateRecordsResponseBody : Tea.TeaModel {
    public class RecordResultList : Tea.TeaModel {
        public class Failed : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var algorithm: Int32?

                public var certificate: String?

                public var fingerprint: String?

                public var flag: Int32?

                public var keyTag: Int32?

                public var matchingType: Int32?

                public var port: Int32?

                public var priority: Int32?

                public var selector: Int32?

                public var tag: String?

                public var type: Int32?

                public var usage: Int32?

                public var value: String?

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
                    if self.algorithm != nil {
                        map["Algorithm"] = self.algorithm!
                    }
                    if self.certificate != nil {
                        map["Certificate"] = self.certificate!
                    }
                    if self.fingerprint != nil {
                        map["Fingerprint"] = self.fingerprint!
                    }
                    if self.flag != nil {
                        map["Flag"] = self.flag!
                    }
                    if self.keyTag != nil {
                        map["KeyTag"] = self.keyTag!
                    }
                    if self.matchingType != nil {
                        map["MatchingType"] = self.matchingType!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    if self.selector != nil {
                        map["Selector"] = self.selector!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Algorithm") {
                        self.algorithm = dict["Algorithm"] as! Int32
                    }
                    if dict.keys.contains("Certificate") {
                        self.certificate = dict["Certificate"] as! String
                    }
                    if dict.keys.contains("Fingerprint") {
                        self.fingerprint = dict["Fingerprint"] as! String
                    }
                    if dict.keys.contains("Flag") {
                        self.flag = dict["Flag"] as! Int32
                    }
                    if dict.keys.contains("KeyTag") {
                        self.keyTag = dict["KeyTag"] as! Int32
                    }
                    if dict.keys.contains("MatchingType") {
                        self.matchingType = dict["MatchingType"] as! Int32
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Priority") {
                        self.priority = dict["Priority"] as! Int32
                    }
                    if dict.keys.contains("Selector") {
                        self.selector = dict["Selector"] as! Int32
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                    if dict.keys.contains("Usage") {
                        self.usage = dict["Usage"] as! Int32
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
                    }
                }
            }
            public var bizName: String?

            public var data: BatchCreateRecordsResponseBody.RecordResultList.Failed.Data?

            public var description_: String?

            public var proxied: Bool?

            public var recordId: Int64?

            public var recordName: String?

            public var recordType: String?

            public var sourceType: String?

            public var ttl: Int32?

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
                if self.bizName != nil {
                    map["BizName"] = self.bizName!
                }
                if self.data != nil {
                    map["Data"] = self.data?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.proxied != nil {
                    map["Proxied"] = self.proxied!
                }
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.recordName != nil {
                    map["RecordName"] = self.recordName!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizName") {
                    self.bizName = dict["BizName"] as! String
                }
                if dict.keys.contains("Data") {
                    var model = BatchCreateRecordsResponseBody.RecordResultList.Failed.Data()
                    model.fromMap(dict["Data"] as! [String: Any])
                    self.data = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Proxied") {
                    self.proxied = dict["Proxied"] as! Bool
                }
                if dict.keys.contains("RecordId") {
                    self.recordId = dict["RecordId"] as! Int64
                }
                if dict.keys.contains("RecordName") {
                    self.recordName = dict["RecordName"] as! String
                }
                if dict.keys.contains("RecordType") {
                    self.recordType = dict["RecordType"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("Ttl") {
                    self.ttl = dict["Ttl"] as! Int32
                }
            }
        }
        public class Success : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var algorithm: Int32?

                public var certificate: String?

                public var fingerprint: String?

                public var flag: Int32?

                public var keyTag: Int32?

                public var matchingType: Int32?

                public var port: Int32?

                public var priority: Int32?

                public var selector: Int32?

                public var tag: String?

                public var type: Int32?

                public var usage: Int32?

                public var value: String?

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
                    if self.algorithm != nil {
                        map["Algorithm"] = self.algorithm!
                    }
                    if self.certificate != nil {
                        map["Certificate"] = self.certificate!
                    }
                    if self.fingerprint != nil {
                        map["Fingerprint"] = self.fingerprint!
                    }
                    if self.flag != nil {
                        map["Flag"] = self.flag!
                    }
                    if self.keyTag != nil {
                        map["KeyTag"] = self.keyTag!
                    }
                    if self.matchingType != nil {
                        map["MatchingType"] = self.matchingType!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    if self.selector != nil {
                        map["Selector"] = self.selector!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Algorithm") {
                        self.algorithm = dict["Algorithm"] as! Int32
                    }
                    if dict.keys.contains("Certificate") {
                        self.certificate = dict["Certificate"] as! String
                    }
                    if dict.keys.contains("Fingerprint") {
                        self.fingerprint = dict["Fingerprint"] as! String
                    }
                    if dict.keys.contains("Flag") {
                        self.flag = dict["Flag"] as! Int32
                    }
                    if dict.keys.contains("KeyTag") {
                        self.keyTag = dict["KeyTag"] as! Int32
                    }
                    if dict.keys.contains("MatchingType") {
                        self.matchingType = dict["MatchingType"] as! Int32
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Priority") {
                        self.priority = dict["Priority"] as! Int32
                    }
                    if dict.keys.contains("Selector") {
                        self.selector = dict["Selector"] as! Int32
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                    if dict.keys.contains("Usage") {
                        self.usage = dict["Usage"] as! Int32
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
                    }
                }
            }
            public var bizName: String?

            public var data: BatchCreateRecordsResponseBody.RecordResultList.Success.Data?

            public var description_: String?

            public var proxied: Bool?

            public var recordId: Int64?

            public var recordName: String?

            public var recordType: String?

            public var sourceType: String?

            public var ttl: Int32?

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
                if self.bizName != nil {
                    map["BizName"] = self.bizName!
                }
                if self.data != nil {
                    map["Data"] = self.data?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.proxied != nil {
                    map["Proxied"] = self.proxied!
                }
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.recordName != nil {
                    map["RecordName"] = self.recordName!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizName") {
                    self.bizName = dict["BizName"] as! String
                }
                if dict.keys.contains("Data") {
                    var model = BatchCreateRecordsResponseBody.RecordResultList.Success.Data()
                    model.fromMap(dict["Data"] as! [String: Any])
                    self.data = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Proxied") {
                    self.proxied = dict["Proxied"] as! Bool
                }
                if dict.keys.contains("RecordId") {
                    self.recordId = dict["RecordId"] as! Int64
                }
                if dict.keys.contains("RecordName") {
                    self.recordName = dict["RecordName"] as! String
                }
                if dict.keys.contains("RecordType") {
                    self.recordType = dict["RecordType"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("Ttl") {
                    self.ttl = dict["Ttl"] as! Int32
                }
            }
        }
        public var failed: [BatchCreateRecordsResponseBody.RecordResultList.Failed]?

        public var success: [BatchCreateRecordsResponseBody.RecordResultList.Success]?

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
            if self.failed != nil {
                var tmp : [Any] = []
                for k in self.failed! {
                    tmp.append(k.toMap())
                }
                map["Failed"] = tmp
            }
            if self.success != nil {
                var tmp : [Any] = []
                for k in self.success! {
                    tmp.append(k.toMap())
                }
                map["Success"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Failed") {
                var tmp : [BatchCreateRecordsResponseBody.RecordResultList.Failed] = []
                for v in dict["Failed"] as! [Any] {
                    var model = BatchCreateRecordsResponseBody.RecordResultList.Failed()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failed = tmp
            }
            if dict.keys.contains("Success") {
                var tmp : [BatchCreateRecordsResponseBody.RecordResultList.Success] = []
                for v in dict["Success"] as! [Any] {
                    var model = BatchCreateRecordsResponseBody.RecordResultList.Success()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.success = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var recordResultList: BatchCreateRecordsResponseBody.RecordResultList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recordResultList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordResultList != nil {
            map["RecordResultList"] = self.recordResultList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordResultList") {
            var model = BatchCreateRecordsResponseBody.RecordResultList()
            model.fromMap(dict["RecordResultList"] as! [String: Any])
            self.recordResultList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchCreateRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchCreateRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchCreateWafRulesRequest : Tea.TeaModel {
    public var configs: [WafRuleConfig]?

    public var phase: String?

    public var shared: WafBatchRuleShared?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.shared?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.shared != nil {
            map["Shared"] = self.shared?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") {
            var tmp : [WafRuleConfig] = []
            for v in dict["Configs"] as! [Any] {
                var model = WafRuleConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("Shared") {
            var model = WafBatchRuleShared()
            model.fromMap(dict["Shared"] as! [String: Any])
            self.shared = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class BatchCreateWafRulesShrinkRequest : Tea.TeaModel {
    public var configsShrink: String?

    public var phase: String?

    public var sharedShrink: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configsShrink != nil {
            map["Configs"] = self.configsShrink!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.sharedShrink != nil {
            map["Shared"] = self.sharedShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") {
            self.configsShrink = dict["Configs"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("Shared") {
            self.sharedShrink = dict["Shared"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class BatchCreateWafRulesResponseBody : Tea.TeaModel {
    public var ids: [Int64]?

    public var requestId: String?

    public var rulesetId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rulesetId != nil {
            map["RulesetId"] = self.rulesetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! [Int64]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RulesetId") {
            self.rulesetId = dict["RulesetId"] as! Int64
        }
    }
}

public class BatchCreateWafRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateWafRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchCreateWafRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteKvRequest : Tea.TeaModel {
    public var keys: [String]?

    public var namespace: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [String]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class BatchDeleteKvShrinkRequest : Tea.TeaModel {
    public var keysShrink: String?

    public var namespace: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keysShrink = dict["Keys"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class BatchDeleteKvResponseBody : Tea.TeaModel {
    public var failKeys: [String]?

    public var requestId: String?

    public var successKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failKeys != nil {
            map["FailKeys"] = self.failKeys!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successKeys != nil {
            map["SuccessKeys"] = self.successKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailKeys") {
            self.failKeys = dict["FailKeys"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessKeys") {
            self.successKeys = dict["SuccessKeys"] as! [String]
        }
    }
}

public class BatchDeleteKvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteKvResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchDeleteKvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteKvWithHighCapacityRequest : Tea.TeaModel {
    public var namespace: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class BatchDeleteKvWithHighCapacityAdvanceRequest : Tea.TeaModel {
    public var namespace: String?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.urlObject = dict["Url"] as! InputStream
        }
    }
}

public class BatchDeleteKvWithHighCapacityResponseBody : Tea.TeaModel {
    public var failKeys: [String]?

    public var requestId: String?

    public var successKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failKeys != nil {
            map["FailKeys"] = self.failKeys!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successKeys != nil {
            map["SuccessKeys"] = self.successKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailKeys") {
            self.failKeys = dict["FailKeys"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessKeys") {
            self.successKeys = dict["SuccessKeys"] as! [String]
        }
    }
}

public class BatchDeleteKvWithHighCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteKvWithHighCapacityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchDeleteKvWithHighCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchGetExpressionFieldsRequest : Tea.TeaModel {
    public class Expressions : Tea.TeaModel {
        public var expression: String?

        public var id: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
        }
    }
    public var expressions: [BatchGetExpressionFieldsRequest.Expressions]?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expressions != nil {
            var tmp : [Any] = []
            for k in self.expressions! {
                tmp.append(k.toMap())
            }
            map["Expressions"] = tmp
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expressions") {
            var tmp : [BatchGetExpressionFieldsRequest.Expressions] = []
            for v in dict["Expressions"] as! [Any] {
                var model = BatchGetExpressionFieldsRequest.Expressions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.expressions = tmp
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class BatchGetExpressionFieldsShrinkRequest : Tea.TeaModel {
    public var expressionsShrink: String?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expressionsShrink != nil {
            map["Expressions"] = self.expressionsShrink!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expressions") {
            self.expressionsShrink = dict["Expressions"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class BatchGetExpressionFieldsResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var fields: [String]?

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
            if self.fields != nil {
                map["Fields"] = self.fields!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fields") {
                self.fields = dict["Fields"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var fields: [BatchGetExpressionFieldsResponseBody.Fields]?

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
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") {
            var tmp : [BatchGetExpressionFieldsResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = BatchGetExpressionFieldsResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchGetExpressionFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetExpressionFieldsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchGetExpressionFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchPutKvRequest : Tea.TeaModel {
    public class KvList : Tea.TeaModel {
        public var expiration: Int64?

        public var expirationTtl: Int64?

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
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.expirationTtl != nil {
                map["ExpirationTtl"] = self.expirationTtl!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Expiration") {
                self.expiration = dict["Expiration"] as! Int64
            }
            if dict.keys.contains("ExpirationTtl") {
                self.expirationTtl = dict["ExpirationTtl"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var kvList: [BatchPutKvRequest.KvList]?

    public var namespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kvList != nil {
            var tmp : [Any] = []
            for k in self.kvList! {
                tmp.append(k.toMap())
            }
            map["KvList"] = tmp
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KvList") {
            var tmp : [BatchPutKvRequest.KvList] = []
            for v in dict["KvList"] as! [Any] {
                var model = BatchPutKvRequest.KvList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.kvList = tmp
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class BatchPutKvShrinkRequest : Tea.TeaModel {
    public var kvListShrink: String?

    public var namespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kvListShrink != nil {
            map["KvList"] = self.kvListShrink!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KvList") {
            self.kvListShrink = dict["KvList"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class BatchPutKvResponseBody : Tea.TeaModel {
    public var failKeys: [String]?

    public var requestId: String?

    public var successKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failKeys != nil {
            map["FailKeys"] = self.failKeys!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successKeys != nil {
            map["SuccessKeys"] = self.successKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailKeys") {
            self.failKeys = dict["FailKeys"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessKeys") {
            self.successKeys = dict["SuccessKeys"] as! [String]
        }
    }
}

public class BatchPutKvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchPutKvResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchPutKvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchPutKvWithHighCapacityRequest : Tea.TeaModel {
    public var namespace: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class BatchPutKvWithHighCapacityAdvanceRequest : Tea.TeaModel {
    public var namespace: String?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.urlObject = dict["Url"] as! InputStream
        }
    }
}

public class BatchPutKvWithHighCapacityResponseBody : Tea.TeaModel {
    public var failKeys: [String]?

    public var requestId: String?

    public var successKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failKeys != nil {
            map["FailKeys"] = self.failKeys!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successKeys != nil {
            map["SuccessKeys"] = self.successKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailKeys") {
            self.failKeys = dict["FailKeys"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessKeys") {
            self.successKeys = dict["SuccessKeys"] as! [String]
        }
    }
}

public class BatchPutKvWithHighCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchPutKvWithHighCapacityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchPutKvWithHighCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUpdateWafRulesRequest : Tea.TeaModel {
    public var configs: [WafRuleConfig]?

    public var phase: String?

    public var rulesetId: Int64?

    public var shared: WafBatchRuleShared?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.shared?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.rulesetId != nil {
            map["RulesetId"] = self.rulesetId!
        }
        if self.shared != nil {
            map["Shared"] = self.shared?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") {
            var tmp : [WafRuleConfig] = []
            for v in dict["Configs"] as! [Any] {
                var model = WafRuleConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("RulesetId") {
            self.rulesetId = dict["RulesetId"] as! Int64
        }
        if dict.keys.contains("Shared") {
            var model = WafBatchRuleShared()
            model.fromMap(dict["Shared"] as! [String: Any])
            self.shared = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class BatchUpdateWafRulesShrinkRequest : Tea.TeaModel {
    public var configsShrink: String?

    public var phase: String?

    public var rulesetId: Int64?

    public var sharedShrink: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configsShrink != nil {
            map["Configs"] = self.configsShrink!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.rulesetId != nil {
            map["RulesetId"] = self.rulesetId!
        }
        if self.sharedShrink != nil {
            map["Shared"] = self.sharedShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") {
            self.configsShrink = dict["Configs"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("RulesetId") {
            self.rulesetId = dict["RulesetId"] as! Int64
        }
        if dict.keys.contains("Shared") {
            self.sharedShrink = dict["Shared"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class BatchUpdateWafRulesResponseBody : Tea.TeaModel {
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

public class BatchUpdateWafRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateWafRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchUpdateWafRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BlockObjectRequest : Tea.TeaModel {
    public var content: [String]?

    public var extension_: String?

    public var maxage: Int32?

    public var siteId: Int64?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.maxage != nil {
            map["Maxage"] = self.maxage!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! [String]
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! String
        }
        if dict.keys.contains("Maxage") {
            self.maxage = dict["Maxage"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class BlockObjectShrinkRequest : Tea.TeaModel {
    public var contentShrink: String?

    public var extension_: String?

    public var maxage: Int32?

    public var siteId: Int64?

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
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.maxage != nil {
            map["Maxage"] = self.maxage!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! String
        }
        if dict.keys.contains("Maxage") {
            self.maxage = dict["Maxage"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class BlockObjectResponseBody : Tea.TeaModel {
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

public class BlockObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BlockObjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BlockObjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceGroupId: String?

    public var securityToken: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSiteNameRequest : Tea.TeaModel {
    public var siteName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
    }
}

public class CheckSiteNameResponseBody : Tea.TeaModel {
    public var description_: String?

    public var isSubSite: Bool?

    public var messeage: String?

    public var passed: Bool?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.isSubSite != nil {
            map["IsSubSite"] = self.isSubSite!
        }
        if self.messeage != nil {
            map["Messeage"] = self.messeage!
        }
        if self.passed != nil {
            map["Passed"] = self.passed!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IsSubSite") {
            self.isSubSite = dict["IsSubSite"] as! Bool
        }
        if dict.keys.contains("Messeage") {
            self.messeage = dict["Messeage"] as! String
        }
        if dict.keys.contains("Passed") {
            self.passed = dict["Passed"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckSiteNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSiteNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckSiteNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSiteProjectNameRequest : Tea.TeaModel {
    public var projectName: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class CheckSiteProjectNameResponseBody : Tea.TeaModel {
    public var check: Bool?

    public var description_: String?

    public var projectName: String?

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
        if self.check != nil {
            map["Check"] = self.check!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Check") {
            self.check = dict["Check"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckSiteProjectNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSiteProjectNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckSiteProjectNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUserProjectNameRequest : Tea.TeaModel {
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class CheckUserProjectNameResponseBody : Tea.TeaModel {
    public var check: Bool?

    public var description_: String?

    public var projectName: String?

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
        if self.check != nil {
            map["Check"] = self.check!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Check") {
            self.check = dict["Check"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckUserProjectNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUserProjectNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckUserProjectNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomScenePolicyRequest : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var objects: String?

    public var startTime: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Objects") {
            self.objects = dict["Objects"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
    }
}

public class CreateCustomScenePolicyResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var objects: [String]?

    public var policyId: Int64?

    public var requestId: String?

    public var startTime: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Objects") {
            self.objects = dict["Objects"] as! [String]
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
    }
}

public class CreateCustomScenePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomScenePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCustomScenePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKvNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var namespace: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class CreateKvNamespaceResponseBody : Tea.TeaModel {
    public var description_: String?

    public var namespace: String?

    public var namespaceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class CreateKvNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKvNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateKvNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateListRequest : Tea.TeaModel {
    public var description_: String?

    public var items: [String]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.items != nil {
            map["Items"] = self.items!
        }
        if self.kind != nil {
            map["Kind"] = self.kind!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [String]
        }
        if dict.keys.contains("Kind") {
            self.kind = dict["Kind"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateListShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var itemsShrink: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.itemsShrink != nil {
            map["Items"] = self.itemsShrink!
        }
        if self.kind != nil {
            map["Kind"] = self.kind!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Items") {
            self.itemsShrink = dict["Items"] as! String
        }
        if dict.keys.contains("Kind") {
            self.kind = dict["Kind"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateListResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePageRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var description_: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreatePageResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRecordRequest : Tea.TeaModel {
    public class AuthConf : Tea.TeaModel {
        public var accessKey: String?

        public var authType: String?

        public var region: String?

        public var secretKey: String?

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
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("AuthType") {
                self.authType = dict["AuthType"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecretKey") {
                self.secretKey = dict["SecretKey"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var algorithm: Int32?

        public var certificate: String?

        public var fingerprint: String?

        public var flag: Int32?

        public var keyTag: Int32?

        public var matchingType: Int32?

        public var port: Int32?

        public var priority: Int32?

        public var selector: Int32?

        public var tag: String?

        public var type: Int32?

        public var usage: Int32?

        public var value: String?

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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.fingerprint != nil {
                map["Fingerprint"] = self.fingerprint!
            }
            if self.flag != nil {
                map["Flag"] = self.flag!
            }
            if self.keyTag != nil {
                map["KeyTag"] = self.keyTag!
            }
            if self.matchingType != nil {
                map["MatchingType"] = self.matchingType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.selector != nil {
                map["Selector"] = self.selector!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! Int32
            }
            if dict.keys.contains("Certificate") {
                self.certificate = dict["Certificate"] as! String
            }
            if dict.keys.contains("Fingerprint") {
                self.fingerprint = dict["Fingerprint"] as! String
            }
            if dict.keys.contains("Flag") {
                self.flag = dict["Flag"] as! Int32
            }
            if dict.keys.contains("KeyTag") {
                self.keyTag = dict["KeyTag"] as! Int32
            }
            if dict.keys.contains("MatchingType") {
                self.matchingType = dict["MatchingType"] as! Int32
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Selector") {
                self.selector = dict["Selector"] as! Int32
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("Usage") {
                self.usage = dict["Usage"] as! Int32
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public var authConf: CreateRecordRequest.AuthConf?

    public var bizName: String?

    public var comment: String?

    public var data: CreateRecordRequest.Data?

    public var hostPolicy: String?

    public var proxied: Bool?

    public var recordName: String?

    public var siteId: Int64?

    public var sourceType: String?

    public var ttl: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConf?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConf != nil {
            map["AuthConf"] = self.authConf?.toMap()
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.hostPolicy != nil {
            map["HostPolicy"] = self.hostPolicy!
        }
        if self.proxied != nil {
            map["Proxied"] = self.proxied!
        }
        if self.recordName != nil {
            map["RecordName"] = self.recordName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConf") {
            var model = CreateRecordRequest.AuthConf()
            model.fromMap(dict["AuthConf"] as! [String: Any])
            self.authConf = model
        }
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateRecordRequest.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HostPolicy") {
            self.hostPolicy = dict["HostPolicy"] as! String
        }
        if dict.keys.contains("Proxied") {
            self.proxied = dict["Proxied"] as! Bool
        }
        if dict.keys.contains("RecordName") {
            self.recordName = dict["RecordName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateRecordShrinkRequest : Tea.TeaModel {
    public var authConfShrink: String?

    public var bizName: String?

    public var comment: String?

    public var dataShrink: String?

    public var hostPolicy: String?

    public var proxied: Bool?

    public var recordName: String?

    public var siteId: Int64?

    public var sourceType: String?

    public var ttl: Int32?

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
        if self.authConfShrink != nil {
            map["AuthConf"] = self.authConfShrink!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.dataShrink != nil {
            map["Data"] = self.dataShrink!
        }
        if self.hostPolicy != nil {
            map["HostPolicy"] = self.hostPolicy!
        }
        if self.proxied != nil {
            map["Proxied"] = self.proxied!
        }
        if self.recordName != nil {
            map["RecordName"] = self.recordName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConf") {
            self.authConfShrink = dict["AuthConf"] as! String
        }
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Data") {
            self.dataShrink = dict["Data"] as! String
        }
        if dict.keys.contains("HostPolicy") {
            self.hostPolicy = dict["HostPolicy"] as! String
        }
        if dict.keys.contains("Proxied") {
            self.proxied = dict["Proxied"] as! Bool
        }
        if dict.keys.contains("RecordName") {
            self.recordName = dict["RecordName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateRecordResponseBody : Tea.TeaModel {
    public var recordId: Int64?

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
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScheduledPreloadExecutionsRequest : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public var endTime: String?

        public var interval: Int32?

        public var sliceLen: Int32?

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
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.sliceLen != nil {
                map["SliceLen"] = self.sliceLen!
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
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("SliceLen") {
                self.sliceLen = dict["SliceLen"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var executions: [CreateScheduledPreloadExecutionsRequest.Executions]?

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
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Executions") {
            var tmp : [CreateScheduledPreloadExecutionsRequest.Executions] = []
            for v in dict["Executions"] as! [Any] {
                var model = CreateScheduledPreloadExecutionsRequest.Executions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executions = tmp
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class CreateScheduledPreloadExecutionsShrinkRequest : Tea.TeaModel {
    public var executionsShrink: String?

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
        if self.executionsShrink != nil {
            map["Executions"] = self.executionsShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Executions") {
            self.executionsShrink = dict["Executions"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class CreateScheduledPreloadExecutionsResponseBody : Tea.TeaModel {
    public class FailedExecutions : Tea.TeaModel {
        public var aliUid: String?

        public var endTime: String?

        public var id: String?

        public var interval: Int32?

        public var jobId: String?

        public var sliceLen: Int32?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.sliceLen != nil {
                map["SliceLen"] = self.sliceLen!
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("SliceLen") {
                self.sliceLen = dict["SliceLen"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class SuccessExecutions : Tea.TeaModel {
        public var aliUid: String?

        public var endTime: String?

        public var id: String?

        public var interval: Int32?

        public var jobId: String?

        public var sliceLen: Int32?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.sliceLen != nil {
                map["SliceLen"] = self.sliceLen!
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("SliceLen") {
                self.sliceLen = dict["SliceLen"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var failedExecutions: [CreateScheduledPreloadExecutionsResponseBody.FailedExecutions]?

    public var failedMessages: [String]?

    public var requestId: String?

    public var successCount: Int32?

    public var successExecutions: [CreateScheduledPreloadExecutionsResponseBody.SuccessExecutions]?

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
        if self.failedExecutions != nil {
            var tmp : [Any] = []
            for k in self.failedExecutions! {
                tmp.append(k.toMap())
            }
            map["FailedExecutions"] = tmp
        }
        if self.failedMessages != nil {
            map["FailedMessages"] = self.failedMessages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.successExecutions != nil {
            var tmp : [Any] = []
            for k in self.successExecutions! {
                tmp.append(k.toMap())
            }
            map["SuccessExecutions"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedExecutions") {
            var tmp : [CreateScheduledPreloadExecutionsResponseBody.FailedExecutions] = []
            for v in dict["FailedExecutions"] as! [Any] {
                var model = CreateScheduledPreloadExecutionsResponseBody.FailedExecutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failedExecutions = tmp
        }
        if dict.keys.contains("FailedMessages") {
            self.failedMessages = dict["FailedMessages"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessCount") {
            self.successCount = dict["SuccessCount"] as! Int32
        }
        if dict.keys.contains("SuccessExecutions") {
            var tmp : [CreateScheduledPreloadExecutionsResponseBody.SuccessExecutions] = []
            for v in dict["SuccessExecutions"] as! [Any] {
                var model = CreateScheduledPreloadExecutionsResponseBody.SuccessExecutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.successExecutions = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class CreateScheduledPreloadExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledPreloadExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateScheduledPreloadExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScheduledPreloadJobRequest : Tea.TeaModel {
    public var insertWay: String?

    public var name: String?

    public var ossUrl: String?

    public var siteId: Int64?

    public var urlList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.insertWay != nil {
            map["InsertWay"] = self.insertWay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.urlList != nil {
            map["UrlList"] = self.urlList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InsertWay") {
            self.insertWay = dict["InsertWay"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssUrl") {
            self.ossUrl = dict["OssUrl"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("UrlList") {
            self.urlList = dict["UrlList"] as! String
        }
    }
}

public class CreateScheduledPreloadJobResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var createdAt: String?

    public var domains: String?

    public var errorInfo: String?

    public var failedFileOss: String?

    public var fileId: String?

    public var id: String?

    public var insertWay: String?

    public var name: String?

    public var requestId: String?

    public var siteId: Int64?

    public var taskSubmitted: Int32?

    public var taskType: String?

    public var urlCount: Int32?

    public var urlSubmitted: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.errorInfo != nil {
            map["ErrorInfo"] = self.errorInfo!
        }
        if self.failedFileOss != nil {
            map["FailedFileOss"] = self.failedFileOss!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.insertWay != nil {
            map["InsertWay"] = self.insertWay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskSubmitted != nil {
            map["TaskSubmitted"] = self.taskSubmitted!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.urlCount != nil {
            map["UrlCount"] = self.urlCount!
        }
        if self.urlSubmitted != nil {
            map["UrlSubmitted"] = self.urlSubmitted!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("CreatedAt") {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! String
        }
        if dict.keys.contains("ErrorInfo") {
            self.errorInfo = dict["ErrorInfo"] as! String
        }
        if dict.keys.contains("FailedFileOss") {
            self.failedFileOss = dict["FailedFileOss"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InsertWay") {
            self.insertWay = dict["InsertWay"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskSubmitted") {
            self.taskSubmitted = dict["TaskSubmitted"] as! Int32
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UrlCount") {
            self.urlCount = dict["UrlCount"] as! Int32
        }
        if dict.keys.contains("UrlSubmitted") {
            self.urlSubmitted = dict["UrlSubmitted"] as! Int32
        }
    }
}

public class CreateScheduledPreloadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledPreloadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateScheduledPreloadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSiteRequest : Tea.TeaModel {
    public var accessType: String?

    public var coverage: String?

    public var instanceId: String?

    public var resourceGroupId: String?

    public var siteName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.coverage != nil {
            map["Coverage"] = self.coverage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Coverage") {
            self.coverage = dict["Coverage"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
    }
}

public class CreateSiteResponseBody : Tea.TeaModel {
    public var nameServerList: String?

    public var requestId: String?

    public var siteId: Int64?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nameServerList != nil {
            map["NameServerList"] = self.nameServerList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NameServerList") {
            self.nameServerList = dict["NameServerList"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class CreateSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSiteCustomLogRequest : Tea.TeaModel {
    public var cookies: [String]?

    public var requestHeaders: [String]?

    public var responseHeaders: [String]?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders!
        }
        if self.responseHeaders != nil {
            map["ResponseHeaders"] = self.responseHeaders!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookies") {
            self.cookies = dict["Cookies"] as! [String]
        }
        if dict.keys.contains("RequestHeaders") {
            self.requestHeaders = dict["RequestHeaders"] as! [String]
        }
        if dict.keys.contains("ResponseHeaders") {
            self.responseHeaders = dict["ResponseHeaders"] as! [String]
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class CreateSiteCustomLogShrinkRequest : Tea.TeaModel {
    public var cookiesShrink: String?

    public var requestHeadersShrink: String?

    public var responseHeadersShrink: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookiesShrink != nil {
            map["Cookies"] = self.cookiesShrink!
        }
        if self.requestHeadersShrink != nil {
            map["RequestHeaders"] = self.requestHeadersShrink!
        }
        if self.responseHeadersShrink != nil {
            map["ResponseHeaders"] = self.responseHeadersShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookies") {
            self.cookiesShrink = dict["Cookies"] as! String
        }
        if dict.keys.contains("RequestHeaders") {
            self.requestHeadersShrink = dict["RequestHeaders"] as! String
        }
        if dict.keys.contains("ResponseHeaders") {
            self.responseHeadersShrink = dict["ResponseHeaders"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class CreateSiteCustomLogResponseBody : Tea.TeaModel {
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

public class CreateSiteCustomLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSiteCustomLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSiteCustomLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSiteDeliveryTaskRequest : Tea.TeaModel {
    public class HttpDelivery : Tea.TeaModel {
        public class StandardAuthParam : Tea.TeaModel {
            public var expiredTime: Int32?

            public var privateKey: String?

            public var urlPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.privateKey != nil {
                    map["PrivateKey"] = self.privateKey!
                }
                if self.urlPath != nil {
                    map["UrlPath"] = self.urlPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! Int32
                }
                if dict.keys.contains("PrivateKey") {
                    self.privateKey = dict["PrivateKey"] as! String
                }
                if dict.keys.contains("UrlPath") {
                    self.urlPath = dict["UrlPath"] as! String
                }
            }
        }
        public var compress: String?

        public var destUrl: String?

        public var headerParam: [String: HttpDeliveryHeaderParamValue]?

        public var logBodyPrefix: String?

        public var logBodySuffix: String?

        public var maxBatchMB: Int64?

        public var maxBatchSize: Int64?

        public var maxRetry: Int64?

        public var queryParam: [String: HttpDeliveryQueryParamValue]?

        public var standardAuthOn: Bool?

        public var standardAuthParam: CreateSiteDeliveryTaskRequest.HttpDelivery.StandardAuthParam?

        public var transformTimeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.standardAuthParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compress != nil {
                map["Compress"] = self.compress!
            }
            if self.destUrl != nil {
                map["DestUrl"] = self.destUrl!
            }
            if self.headerParam != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.headerParam! {
                    tmp[k] = v.toMap()
                }
                map["HeaderParam"] = tmp
            }
            if self.logBodyPrefix != nil {
                map["LogBodyPrefix"] = self.logBodyPrefix!
            }
            if self.logBodySuffix != nil {
                map["LogBodySuffix"] = self.logBodySuffix!
            }
            if self.maxBatchMB != nil {
                map["MaxBatchMB"] = self.maxBatchMB!
            }
            if self.maxBatchSize != nil {
                map["MaxBatchSize"] = self.maxBatchSize!
            }
            if self.maxRetry != nil {
                map["MaxRetry"] = self.maxRetry!
            }
            if self.queryParam != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.queryParam! {
                    tmp[k] = v.toMap()
                }
                map["QueryParam"] = tmp
            }
            if self.standardAuthOn != nil {
                map["StandardAuthOn"] = self.standardAuthOn!
            }
            if self.standardAuthParam != nil {
                map["StandardAuthParam"] = self.standardAuthParam?.toMap()
            }
            if self.transformTimeout != nil {
                map["TransformTimeout"] = self.transformTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compress") {
                self.compress = dict["Compress"] as! String
            }
            if dict.keys.contains("DestUrl") {
                self.destUrl = dict["DestUrl"] as! String
            }
            if dict.keys.contains("HeaderParam") {
                var tmp : [String: HttpDeliveryHeaderParamValue] = [:]
                for (k, v) in dict["HeaderParam"] as! [String: Any] {
                    if v != nil {
                        var model = HttpDeliveryHeaderParamValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.headerParam = tmp
            }
            if dict.keys.contains("LogBodyPrefix") {
                self.logBodyPrefix = dict["LogBodyPrefix"] as! String
            }
            if dict.keys.contains("LogBodySuffix") {
                self.logBodySuffix = dict["LogBodySuffix"] as! String
            }
            if dict.keys.contains("MaxBatchMB") {
                self.maxBatchMB = dict["MaxBatchMB"] as! Int64
            }
            if dict.keys.contains("MaxBatchSize") {
                self.maxBatchSize = dict["MaxBatchSize"] as! Int64
            }
            if dict.keys.contains("MaxRetry") {
                self.maxRetry = dict["MaxRetry"] as! Int64
            }
            if dict.keys.contains("QueryParam") {
                var tmp : [String: HttpDeliveryQueryParamValue] = [:]
                for (k, v) in dict["QueryParam"] as! [String: Any] {
                    if v != nil {
                        var model = HttpDeliveryQueryParamValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.queryParam = tmp
            }
            if dict.keys.contains("StandardAuthOn") {
                self.standardAuthOn = dict["StandardAuthOn"] as! Bool
            }
            if dict.keys.contains("StandardAuthParam") {
                var model = CreateSiteDeliveryTaskRequest.HttpDelivery.StandardAuthParam()
                model.fromMap(dict["StandardAuthParam"] as! [String: Any])
                self.standardAuthParam = model
            }
            if dict.keys.contains("TransformTimeout") {
                self.transformTimeout = dict["TransformTimeout"] as! Int64
            }
        }
    }
    public class KafkaDelivery : Tea.TeaModel {
        public var balancer: String?

        public var brokers: [String]?

        public var compress: String?

        public var machanismType: String?

        public var password: String?

        public var topic: String?

        public var userAuth: Bool?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.balancer != nil {
                map["Balancer"] = self.balancer!
            }
            if self.brokers != nil {
                map["Brokers"] = self.brokers!
            }
            if self.compress != nil {
                map["Compress"] = self.compress!
            }
            if self.machanismType != nil {
                map["MachanismType"] = self.machanismType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.userAuth != nil {
                map["UserAuth"] = self.userAuth!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Balancer") {
                self.balancer = dict["Balancer"] as! String
            }
            if dict.keys.contains("Brokers") {
                self.brokers = dict["Brokers"] as! [String]
            }
            if dict.keys.contains("Compress") {
                self.compress = dict["Compress"] as! String
            }
            if dict.keys.contains("MachanismType") {
                self.machanismType = dict["MachanismType"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("UserAuth") {
                self.userAuth = dict["UserAuth"] as! Bool
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class OssDelivery : Tea.TeaModel {
        public var aliuid: String?

        public var bucketName: String?

        public var prefixPath: String?

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
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.prefixPath != nil {
                map["PrefixPath"] = self.prefixPath!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("PrefixPath") {
                self.prefixPath = dict["PrefixPath"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
        }
    }
    public class S3Delivery : Tea.TeaModel {
        public var accessKey: String?

        public var bucketPath: String?

        public var endpoint: String?

        public var prefixPath: String?

        public var region: String?

        public var s3Cmpt: Bool?

        public var secretKey: String?

        public var serverSideEncryption: Bool?

        public var vertifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.bucketPath != nil {
                map["BucketPath"] = self.bucketPath!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.prefixPath != nil {
                map["PrefixPath"] = self.prefixPath!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.s3Cmpt != nil {
                map["S3Cmpt"] = self.s3Cmpt!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.serverSideEncryption != nil {
                map["ServerSideEncryption"] = self.serverSideEncryption!
            }
            if self.vertifyType != nil {
                map["VertifyType"] = self.vertifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("BucketPath") {
                self.bucketPath = dict["BucketPath"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("PrefixPath") {
                self.prefixPath = dict["PrefixPath"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("S3Cmpt") {
                self.s3Cmpt = dict["S3Cmpt"] as! Bool
            }
            if dict.keys.contains("SecretKey") {
                self.secretKey = dict["SecretKey"] as! String
            }
            if dict.keys.contains("ServerSideEncryption") {
                self.serverSideEncryption = dict["ServerSideEncryption"] as! Bool
            }
            if dict.keys.contains("VertifyType") {
                self.vertifyType = dict["VertifyType"] as! String
            }
        }
    }
    public class SlsDelivery : Tea.TeaModel {
        public var SLSLogStore: String?

        public var SLSProject: String?

        public var SLSRegion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SLSLogStore != nil {
                map["SLSLogStore"] = self.SLSLogStore!
            }
            if self.SLSProject != nil {
                map["SLSProject"] = self.SLSProject!
            }
            if self.SLSRegion != nil {
                map["SLSRegion"] = self.SLSRegion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SLSLogStore") {
                self.SLSLogStore = dict["SLSLogStore"] as! String
            }
            if dict.keys.contains("SLSProject") {
                self.SLSProject = dict["SLSProject"] as! String
            }
            if dict.keys.contains("SLSRegion") {
                self.SLSRegion = dict["SLSRegion"] as! String
            }
        }
    }
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldName: String?

    public var httpDelivery: CreateSiteDeliveryTaskRequest.HttpDelivery?

    public var kafkaDelivery: CreateSiteDeliveryTaskRequest.KafkaDelivery?

    public var ossDelivery: CreateSiteDeliveryTaskRequest.OssDelivery?

    public var s3Delivery: CreateSiteDeliveryTaskRequest.S3Delivery?

    public var siteId: Int64?

    public var slsDelivery: CreateSiteDeliveryTaskRequest.SlsDelivery?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpDelivery?.validate()
        try self.kafkaDelivery?.validate()
        try self.ossDelivery?.validate()
        try self.s3Delivery?.validate()
        try self.slsDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.httpDelivery != nil {
            map["HttpDelivery"] = self.httpDelivery?.toMap()
        }
        if self.kafkaDelivery != nil {
            map["KafkaDelivery"] = self.kafkaDelivery?.toMap()
        }
        if self.ossDelivery != nil {
            map["OssDelivery"] = self.ossDelivery?.toMap()
        }
        if self.s3Delivery != nil {
            map["S3Delivery"] = self.s3Delivery?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.slsDelivery != nil {
            map["SlsDelivery"] = self.slsDelivery?.toMap()
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("HttpDelivery") {
            var model = CreateSiteDeliveryTaskRequest.HttpDelivery()
            model.fromMap(dict["HttpDelivery"] as! [String: Any])
            self.httpDelivery = model
        }
        if dict.keys.contains("KafkaDelivery") {
            var model = CreateSiteDeliveryTaskRequest.KafkaDelivery()
            model.fromMap(dict["KafkaDelivery"] as! [String: Any])
            self.kafkaDelivery = model
        }
        if dict.keys.contains("OssDelivery") {
            var model = CreateSiteDeliveryTaskRequest.OssDelivery()
            model.fromMap(dict["OssDelivery"] as! [String: Any])
            self.ossDelivery = model
        }
        if dict.keys.contains("S3Delivery") {
            var model = CreateSiteDeliveryTaskRequest.S3Delivery()
            model.fromMap(dict["S3Delivery"] as! [String: Any])
            self.s3Delivery = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SlsDelivery") {
            var model = CreateSiteDeliveryTaskRequest.SlsDelivery()
            model.fromMap(dict["SlsDelivery"] as! [String: Any])
            self.slsDelivery = model
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateSiteDeliveryTaskShrinkRequest : Tea.TeaModel {
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldName: String?

    public var httpDeliveryShrink: String?

    public var kafkaDeliveryShrink: String?

    public var ossDeliveryShrink: String?

    public var s3DeliveryShrink: String?

    public var siteId: Int64?

    public var slsDeliveryShrink: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.httpDeliveryShrink != nil {
            map["HttpDelivery"] = self.httpDeliveryShrink!
        }
        if self.kafkaDeliveryShrink != nil {
            map["KafkaDelivery"] = self.kafkaDeliveryShrink!
        }
        if self.ossDeliveryShrink != nil {
            map["OssDelivery"] = self.ossDeliveryShrink!
        }
        if self.s3DeliveryShrink != nil {
            map["S3Delivery"] = self.s3DeliveryShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.slsDeliveryShrink != nil {
            map["SlsDelivery"] = self.slsDeliveryShrink!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("HttpDelivery") {
            self.httpDeliveryShrink = dict["HttpDelivery"] as! String
        }
        if dict.keys.contains("KafkaDelivery") {
            self.kafkaDeliveryShrink = dict["KafkaDelivery"] as! String
        }
        if dict.keys.contains("OssDelivery") {
            self.ossDeliveryShrink = dict["OssDelivery"] as! String
        }
        if dict.keys.contains("S3Delivery") {
            self.s3DeliveryShrink = dict["S3Delivery"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SlsDelivery") {
            self.slsDeliveryShrink = dict["SlsDelivery"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateSiteDeliveryTaskResponseBody : Tea.TeaModel {
    public var dataCenter: String?

    public var requestId: String?

    public var siteId: String?

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
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateSiteDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSiteDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSiteDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserDeliveryTaskRequest : Tea.TeaModel {
    public class HttpDelivery : Tea.TeaModel {
        public class StandardAuthParam : Tea.TeaModel {
            public var expiredTime: Int32?

            public var privateKey: String?

            public var urlPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.privateKey != nil {
                    map["PrivateKey"] = self.privateKey!
                }
                if self.urlPath != nil {
                    map["UrlPath"] = self.urlPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! Int32
                }
                if dict.keys.contains("PrivateKey") {
                    self.privateKey = dict["PrivateKey"] as! String
                }
                if dict.keys.contains("UrlPath") {
                    self.urlPath = dict["UrlPath"] as! String
                }
            }
        }
        public var compress: String?

        public var destUrl: String?

        public var headerParam: [String: HttpDeliveryHeaderParamValue]?

        public var lastLogSplit: String?

        public var logBodyPrefix: String?

        public var logBodySuffix: String?

        public var logSplit: String?

        public var logSplitWords: String?

        public var maxBackoffMS: Int64?

        public var maxBatchMB: Int64?

        public var maxBatchSize: Int64?

        public var maxRetry: Int64?

        public var minBackoffMS: Int64?

        public var queryParam: [String: HttpDeliveryQueryParamValue]?

        public var responseBodyKey: String?

        public var standardAuthOn: Bool?

        public var standardAuthParam: CreateUserDeliveryTaskRequest.HttpDelivery.StandardAuthParam?

        public var successCode: Int64?

        public var transformTimeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.standardAuthParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compress != nil {
                map["Compress"] = self.compress!
            }
            if self.destUrl != nil {
                map["DestUrl"] = self.destUrl!
            }
            if self.headerParam != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.headerParam! {
                    tmp[k] = v.toMap()
                }
                map["HeaderParam"] = tmp
            }
            if self.lastLogSplit != nil {
                map["LastLogSplit"] = self.lastLogSplit!
            }
            if self.logBodyPrefix != nil {
                map["LogBodyPrefix"] = self.logBodyPrefix!
            }
            if self.logBodySuffix != nil {
                map["LogBodySuffix"] = self.logBodySuffix!
            }
            if self.logSplit != nil {
                map["LogSplit"] = self.logSplit!
            }
            if self.logSplitWords != nil {
                map["LogSplitWords"] = self.logSplitWords!
            }
            if self.maxBackoffMS != nil {
                map["MaxBackoffMS"] = self.maxBackoffMS!
            }
            if self.maxBatchMB != nil {
                map["MaxBatchMB"] = self.maxBatchMB!
            }
            if self.maxBatchSize != nil {
                map["MaxBatchSize"] = self.maxBatchSize!
            }
            if self.maxRetry != nil {
                map["MaxRetry"] = self.maxRetry!
            }
            if self.minBackoffMS != nil {
                map["MinBackoffMS"] = self.minBackoffMS!
            }
            if self.queryParam != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.queryParam! {
                    tmp[k] = v.toMap()
                }
                map["QueryParam"] = tmp
            }
            if self.responseBodyKey != nil {
                map["ResponseBodyKey"] = self.responseBodyKey!
            }
            if self.standardAuthOn != nil {
                map["StandardAuthOn"] = self.standardAuthOn!
            }
            if self.standardAuthParam != nil {
                map["StandardAuthParam"] = self.standardAuthParam?.toMap()
            }
            if self.successCode != nil {
                map["SuccessCode"] = self.successCode!
            }
            if self.transformTimeout != nil {
                map["TransformTimeout"] = self.transformTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compress") {
                self.compress = dict["Compress"] as! String
            }
            if dict.keys.contains("DestUrl") {
                self.destUrl = dict["DestUrl"] as! String
            }
            if dict.keys.contains("HeaderParam") {
                var tmp : [String: HttpDeliveryHeaderParamValue] = [:]
                for (k, v) in dict["HeaderParam"] as! [String: Any] {
                    if v != nil {
                        var model = HttpDeliveryHeaderParamValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.headerParam = tmp
            }
            if dict.keys.contains("LastLogSplit") {
                self.lastLogSplit = dict["LastLogSplit"] as! String
            }
            if dict.keys.contains("LogBodyPrefix") {
                self.logBodyPrefix = dict["LogBodyPrefix"] as! String
            }
            if dict.keys.contains("LogBodySuffix") {
                self.logBodySuffix = dict["LogBodySuffix"] as! String
            }
            if dict.keys.contains("LogSplit") {
                self.logSplit = dict["LogSplit"] as! String
            }
            if dict.keys.contains("LogSplitWords") {
                self.logSplitWords = dict["LogSplitWords"] as! String
            }
            if dict.keys.contains("MaxBackoffMS") {
                self.maxBackoffMS = dict["MaxBackoffMS"] as! Int64
            }
            if dict.keys.contains("MaxBatchMB") {
                self.maxBatchMB = dict["MaxBatchMB"] as! Int64
            }
            if dict.keys.contains("MaxBatchSize") {
                self.maxBatchSize = dict["MaxBatchSize"] as! Int64
            }
            if dict.keys.contains("MaxRetry") {
                self.maxRetry = dict["MaxRetry"] as! Int64
            }
            if dict.keys.contains("MinBackoffMS") {
                self.minBackoffMS = dict["MinBackoffMS"] as! Int64
            }
            if dict.keys.contains("QueryParam") {
                var tmp : [String: HttpDeliveryQueryParamValue] = [:]
                for (k, v) in dict["QueryParam"] as! [String: Any] {
                    if v != nil {
                        var model = HttpDeliveryQueryParamValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.queryParam = tmp
            }
            if dict.keys.contains("ResponseBodyKey") {
                self.responseBodyKey = dict["ResponseBodyKey"] as! String
            }
            if dict.keys.contains("StandardAuthOn") {
                self.standardAuthOn = dict["StandardAuthOn"] as! Bool
            }
            if dict.keys.contains("StandardAuthParam") {
                var model = CreateUserDeliveryTaskRequest.HttpDelivery.StandardAuthParam()
                model.fromMap(dict["StandardAuthParam"] as! [String: Any])
                self.standardAuthParam = model
            }
            if dict.keys.contains("SuccessCode") {
                self.successCode = dict["SuccessCode"] as! Int64
            }
            if dict.keys.contains("TransformTimeout") {
                self.transformTimeout = dict["TransformTimeout"] as! Int64
            }
        }
    }
    public class KafkaDelivery : Tea.TeaModel {
        public var balancer: String?

        public var brokers: [String]?

        public var compress: String?

        public var machanismType: String?

        public var password: String?

        public var topic: String?

        public var userAuth: Bool?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.balancer != nil {
                map["Balancer"] = self.balancer!
            }
            if self.brokers != nil {
                map["Brokers"] = self.brokers!
            }
            if self.compress != nil {
                map["Compress"] = self.compress!
            }
            if self.machanismType != nil {
                map["MachanismType"] = self.machanismType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.userAuth != nil {
                map["UserAuth"] = self.userAuth!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Balancer") {
                self.balancer = dict["Balancer"] as! String
            }
            if dict.keys.contains("Brokers") {
                self.brokers = dict["Brokers"] as! [String]
            }
            if dict.keys.contains("Compress") {
                self.compress = dict["Compress"] as! String
            }
            if dict.keys.contains("MachanismType") {
                self.machanismType = dict["MachanismType"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("UserAuth") {
                self.userAuth = dict["UserAuth"] as! Bool
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class OssDelivery : Tea.TeaModel {
        public var aliuid: String?

        public var bucketName: String?

        public var prefixPath: String?

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
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.prefixPath != nil {
                map["PrefixPath"] = self.prefixPath!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("PrefixPath") {
                self.prefixPath = dict["PrefixPath"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
        }
    }
    public class S3Delivery : Tea.TeaModel {
        public var accessKey: String?

        public var bucketPath: String?

        public var endpoint: String?

        public var prefixPath: String?

        public var region: String?

        public var s3Cmpt: Bool?

        public var secretKey: String?

        public var serverSideEncryption: Bool?

        public var vertifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.bucketPath != nil {
                map["BucketPath"] = self.bucketPath!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.prefixPath != nil {
                map["PrefixPath"] = self.prefixPath!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.s3Cmpt != nil {
                map["S3Cmpt"] = self.s3Cmpt!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.serverSideEncryption != nil {
                map["ServerSideEncryption"] = self.serverSideEncryption!
            }
            if self.vertifyType != nil {
                map["VertifyType"] = self.vertifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("BucketPath") {
                self.bucketPath = dict["BucketPath"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("PrefixPath") {
                self.prefixPath = dict["PrefixPath"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("S3Cmpt") {
                self.s3Cmpt = dict["S3Cmpt"] as! Bool
            }
            if dict.keys.contains("SecretKey") {
                self.secretKey = dict["SecretKey"] as! String
            }
            if dict.keys.contains("ServerSideEncryption") {
                self.serverSideEncryption = dict["ServerSideEncryption"] as! Bool
            }
            if dict.keys.contains("VertifyType") {
                self.vertifyType = dict["VertifyType"] as! String
            }
        }
    }
    public class SlsDelivery : Tea.TeaModel {
        public var SLSLogStore: String?

        public var SLSProject: String?

        public var SLSRegion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SLSLogStore != nil {
                map["SLSLogStore"] = self.SLSLogStore!
            }
            if self.SLSProject != nil {
                map["SLSProject"] = self.SLSProject!
            }
            if self.SLSRegion != nil {
                map["SLSRegion"] = self.SLSRegion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SLSLogStore") {
                self.SLSLogStore = dict["SLSLogStore"] as! String
            }
            if dict.keys.contains("SLSProject") {
                self.SLSProject = dict["SLSProject"] as! String
            }
            if dict.keys.contains("SLSRegion") {
                self.SLSRegion = dict["SLSRegion"] as! String
            }
        }
    }
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldName: String?

    public var httpDelivery: CreateUserDeliveryTaskRequest.HttpDelivery?

    public var kafkaDelivery: CreateUserDeliveryTaskRequest.KafkaDelivery?

    public var ossDelivery: CreateUserDeliveryTaskRequest.OssDelivery?

    public var s3Delivery: CreateUserDeliveryTaskRequest.S3Delivery?

    public var slsDelivery: CreateUserDeliveryTaskRequest.SlsDelivery?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpDelivery?.validate()
        try self.kafkaDelivery?.validate()
        try self.ossDelivery?.validate()
        try self.s3Delivery?.validate()
        try self.slsDelivery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.httpDelivery != nil {
            map["HttpDelivery"] = self.httpDelivery?.toMap()
        }
        if self.kafkaDelivery != nil {
            map["KafkaDelivery"] = self.kafkaDelivery?.toMap()
        }
        if self.ossDelivery != nil {
            map["OssDelivery"] = self.ossDelivery?.toMap()
        }
        if self.s3Delivery != nil {
            map["S3Delivery"] = self.s3Delivery?.toMap()
        }
        if self.slsDelivery != nil {
            map["SlsDelivery"] = self.slsDelivery?.toMap()
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("HttpDelivery") {
            var model = CreateUserDeliveryTaskRequest.HttpDelivery()
            model.fromMap(dict["HttpDelivery"] as! [String: Any])
            self.httpDelivery = model
        }
        if dict.keys.contains("KafkaDelivery") {
            var model = CreateUserDeliveryTaskRequest.KafkaDelivery()
            model.fromMap(dict["KafkaDelivery"] as! [String: Any])
            self.kafkaDelivery = model
        }
        if dict.keys.contains("OssDelivery") {
            var model = CreateUserDeliveryTaskRequest.OssDelivery()
            model.fromMap(dict["OssDelivery"] as! [String: Any])
            self.ossDelivery = model
        }
        if dict.keys.contains("S3Delivery") {
            var model = CreateUserDeliveryTaskRequest.S3Delivery()
            model.fromMap(dict["S3Delivery"] as! [String: Any])
            self.s3Delivery = model
        }
        if dict.keys.contains("SlsDelivery") {
            var model = CreateUserDeliveryTaskRequest.SlsDelivery()
            model.fromMap(dict["SlsDelivery"] as! [String: Any])
            self.slsDelivery = model
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateUserDeliveryTaskShrinkRequest : Tea.TeaModel {
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldName: String?

    public var httpDeliveryShrink: String?

    public var kafkaDeliveryShrink: String?

    public var ossDeliveryShrink: String?

    public var s3DeliveryShrink: String?

    public var slsDeliveryShrink: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.httpDeliveryShrink != nil {
            map["HttpDelivery"] = self.httpDeliveryShrink!
        }
        if self.kafkaDeliveryShrink != nil {
            map["KafkaDelivery"] = self.kafkaDeliveryShrink!
        }
        if self.ossDeliveryShrink != nil {
            map["OssDelivery"] = self.ossDeliveryShrink!
        }
        if self.s3DeliveryShrink != nil {
            map["S3Delivery"] = self.s3DeliveryShrink!
        }
        if self.slsDeliveryShrink != nil {
            map["SlsDelivery"] = self.slsDeliveryShrink!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("HttpDelivery") {
            self.httpDeliveryShrink = dict["HttpDelivery"] as! String
        }
        if dict.keys.contains("KafkaDelivery") {
            self.kafkaDeliveryShrink = dict["KafkaDelivery"] as! String
        }
        if dict.keys.contains("OssDelivery") {
            self.ossDeliveryShrink = dict["OssDelivery"] as! String
        }
        if dict.keys.contains("S3Delivery") {
            self.s3DeliveryShrink = dict["S3Delivery"] as! String
        }
        if dict.keys.contains("SlsDelivery") {
            self.slsDeliveryShrink = dict["SlsDelivery"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateUserDeliveryTaskResponseBody : Tea.TeaModel {
    public var dataCenter: String?

    public var requestId: String?

    public var status: String?

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
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class CreateUserDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateUserDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWafRuleRequest : Tea.TeaModel {
    public var config: WafRuleConfig?

    public var phase: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

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
            map["Config"] = self.config?.toMap()
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            var model = WafRuleConfig()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class CreateWafRuleShrinkRequest : Tea.TeaModel {
    public var configShrink: String?

    public var phase: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configShrink != nil {
            map["Config"] = self.configShrink!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.configShrink = dict["Config"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class CreateWafRuleResponseBody : Tea.TeaModel {
    public var id: Int64?

    public var requestId: String?

    public var rulesetId: Int64?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rulesetId != nil {
            map["RulesetId"] = self.rulesetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RulesetId") {
            self.rulesetId = dict["RulesetId"] as! Int64
        }
    }
}

public class CreateWafRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWafRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWafRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWaitingRoomRequest : Tea.TeaModel {
    public class HostNameAndPath : Tea.TeaModel {
        public var domain: String?

        public var path: String?

        public var subdomain: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.subdomain != nil {
                map["Subdomain"] = self.subdomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Subdomain") {
                self.subdomain = dict["Subdomain"] as! String
            }
        }
    }
    public var cookieName: String?

    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var hostNameAndPath: [CreateWaitingRoomRequest.HostNameAndPath]?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var queueAllEnable: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var totalActiveUsers: String?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookieName != nil {
            map["CookieName"] = self.cookieName!
        }
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.hostNameAndPath != nil {
            var tmp : [Any] = []
            for k in self.hostNameAndPath! {
                tmp.append(k.toMap())
            }
            map["HostNameAndPath"] = tmp
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.queueAllEnable != nil {
            map["QueueAllEnable"] = self.queueAllEnable!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CookieName") {
            self.cookieName = dict["CookieName"] as! String
        }
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("HostNameAndPath") {
            var tmp : [CreateWaitingRoomRequest.HostNameAndPath] = []
            for v in dict["HostNameAndPath"] as! [Any] {
                var model = CreateWaitingRoomRequest.HostNameAndPath()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostNameAndPath = tmp
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("QueueAllEnable") {
            self.queueAllEnable = dict["QueueAllEnable"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class CreateWaitingRoomShrinkRequest : Tea.TeaModel {
    public var cookieName: String?

    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var hostNameAndPathShrink: String?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var queueAllEnable: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var totalActiveUsers: String?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookieName != nil {
            map["CookieName"] = self.cookieName!
        }
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.hostNameAndPathShrink != nil {
            map["HostNameAndPath"] = self.hostNameAndPathShrink!
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.queueAllEnable != nil {
            map["QueueAllEnable"] = self.queueAllEnable!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CookieName") {
            self.cookieName = dict["CookieName"] as! String
        }
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("HostNameAndPath") {
            self.hostNameAndPathShrink = dict["HostNameAndPath"] as! String
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("QueueAllEnable") {
            self.queueAllEnable = dict["QueueAllEnable"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class CreateWaitingRoomResponseBody : Tea.TeaModel {
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

public class CreateWaitingRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWaitingRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWaitingRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWaitingRoomEventRequest : Tea.TeaModel {
    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var endTime: String?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var preQueueEnable: String?

    public var preQueueStartTime: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var randomPreQueueEnable: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var startTime: String?

    public var totalActiveUsers: String?

    public var waitingRoomId: String?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.preQueueEnable != nil {
            map["PreQueueEnable"] = self.preQueueEnable!
        }
        if self.preQueueStartTime != nil {
            map["PreQueueStartTime"] = self.preQueueStartTime!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.randomPreQueueEnable != nil {
            map["RandomPreQueueEnable"] = self.randomPreQueueEnable!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("PreQueueEnable") {
            self.preQueueEnable = dict["PreQueueEnable"] as! String
        }
        if dict.keys.contains("PreQueueStartTime") {
            self.preQueueStartTime = dict["PreQueueStartTime"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("RandomPreQueueEnable") {
            self.randomPreQueueEnable = dict["RandomPreQueueEnable"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class CreateWaitingRoomEventResponseBody : Tea.TeaModel {
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

public class CreateWaitingRoomEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWaitingRoomEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWaitingRoomEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWaitingRoomRuleRequest : Tea.TeaModel {
    public var rule: String?

    public var ruleEnable: String?

    public var ruleName: String?

    public var siteId: Int64?

    public var waitingRoomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.ruleEnable != nil {
            map["RuleEnable"] = self.ruleEnable!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("RuleEnable") {
            self.ruleEnable = dict["RuleEnable"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
    }
}

public class CreateWaitingRoomRuleResponseBody : Tea.TeaModel {
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

public class CreateWaitingRoomRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWaitingRoomRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWaitingRoomRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomScenePolicyRequest : Tea.TeaModel {
    public var policyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
    }
}

public class DeleteCustomScenePolicyResponseBody : Tea.TeaModel {
    public var policyId: Int64?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomScenePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomScenePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCustomScenePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteListRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteListResponseBody : Tea.TeaModel {
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

public class DeleteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePageRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeletePageResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeletePageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRecordRequest : Tea.TeaModel {
    public var recordId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") {
            self.recordId = dict["RecordId"] as! Int64
        }
    }
}

public class DeleteRecordResponseBody : Tea.TeaModel {
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

public class DeleteRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScheduledPreloadExecutionRequest : Tea.TeaModel {
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

public class DeleteScheduledPreloadExecutionResponseBody : Tea.TeaModel {
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

public class DeleteScheduledPreloadExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledPreloadExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteScheduledPreloadExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScheduledPreloadJobRequest : Tea.TeaModel {
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

public class DeleteScheduledPreloadJobResponseBody : Tea.TeaModel {
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

public class DeleteScheduledPreloadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledPreloadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteScheduledPreloadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSiteRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class DeleteSiteResponseBody : Tea.TeaModel {
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

public class DeleteSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSiteDeliveryTaskRequest : Tea.TeaModel {
    public var siteId: Int64?

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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class DeleteSiteDeliveryTaskResponseBody : Tea.TeaModel {
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

public class DeleteSiteDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSiteDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSiteDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserDeliveryTaskRequest : Tea.TeaModel {
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
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class DeleteUserDeliveryTaskResponseBody : Tea.TeaModel {
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

public class DeleteUserDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWafRuleRequest : Tea.TeaModel {
    public var id: Int64?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class DeleteWafRuleResponseBody : Tea.TeaModel {
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

public class DeleteWafRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWafRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWafRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWafRulesetRequest : Tea.TeaModel {
    public var id: Int64?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class DeleteWafRulesetResponseBody : Tea.TeaModel {
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

public class DeleteWafRulesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWafRulesetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWafRulesetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWaitingRoomRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var waitingRoomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
    }
}

public class DeleteWaitingRoomResponseBody : Tea.TeaModel {
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

public class DeleteWaitingRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWaitingRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWaitingRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWaitingRoomEventRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var waitingRoomEventId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomEventId != nil {
            map["WaitingRoomEventId"] = self.waitingRoomEventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomEventId") {
            self.waitingRoomEventId = dict["WaitingRoomEventId"] as! Int64
        }
    }
}

public class DeleteWaitingRoomEventResponseBody : Tea.TeaModel {
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

public class DeleteWaitingRoomEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWaitingRoomEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWaitingRoomEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWaitingRoomRuleRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var waitingRoomRuleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomRuleId != nil {
            map["WaitingRoomRuleId"] = self.waitingRoomRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomRuleId") {
            self.waitingRoomRuleId = dict["WaitingRoomRuleId"] as! Int64
        }
    }
}

public class DeleteWaitingRoomRuleResponseBody : Tea.TeaModel {
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

public class DeleteWaitingRoomRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWaitingRoomRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWaitingRoomRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomScenePoliciesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyId: Int64?

    public override init() {
        super.init()
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
    }
}

public class DescribeCustomScenePoliciesResponseBody : Tea.TeaModel {
    public class DataModule : Tea.TeaModel {
        public var endTime: String?

        public var name: String?

        public var objects: [String]?

        public var policyId: Int64?

        public var startTime: String?

        public var status: String?

        public var template: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objects != nil {
                map["Objects"] = self.objects!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Objects") {
                self.objects = dict["Objects"] as! [String]
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Template") {
                self.template = dict["Template"] as! String
            }
        }
    }
    public var dataModule: [DescribeCustomScenePoliciesResponseBody.DataModule]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var quota: Int32?

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
        if self.dataModule != nil {
            var tmp : [Any] = []
            for k in self.dataModule! {
                tmp.append(k.toMap())
            }
            map["DataModule"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
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
        if dict.keys.contains("DataModule") {
            var tmp : [DescribeCustomScenePoliciesResponseBody.DataModule] = []
            for v in dict["DataModule"] as! [Any] {
                var model = DescribeCustomScenePoliciesResponseBody.DataModule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataModule = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Quota") {
            self.quota = dict["Quota"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCustomScenePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomScenePoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCustomScenePoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDDoSAllEventListRequest : Tea.TeaModel {
    public var endTime: String?

    public var eventType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var siteId: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDDoSAllEventListResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var bps: Int64?

        public var cps: Int64?

        public var endTime: String?

        public var eventId: String?

        public var eventType: String?

        public var pps: Int64?

        public var qps: Int64?

        public var startTime: String?

        public var target: String?

        public var targetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bps != nil {
                map["Bps"] = self.bps!
            }
            if self.cps != nil {
                map["Cps"] = self.cps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.qps != nil {
                map["Qps"] = self.qps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bps") {
                self.bps = dict["Bps"] as! Int64
            }
            if dict.keys.contains("Cps") {
                self.cps = dict["Cps"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("Pps") {
                self.pps = dict["Pps"] as! Int64
            }
            if dict.keys.contains("Qps") {
                self.qps = dict["Qps"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
        }
    }
    public var dataList: [DescribeDDoSAllEventListResponseBody.DataList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var siteId: Int64?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") {
            var tmp : [DescribeDDoSAllEventListResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeDDoSAllEventListResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
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
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDDoSAllEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDoSAllEventListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDDoSAllEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHttpDDoSAttackIntelligentProtectionRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class DescribeHttpDDoSAttackIntelligentProtectionResponseBody : Tea.TeaModel {
    public var aiMode: String?

    public var aiTemplate: String?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiMode != nil {
            map["AiMode"] = self.aiMode!
        }
        if self.aiTemplate != nil {
            map["AiTemplate"] = self.aiTemplate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiMode") {
            self.aiMode = dict["AiMode"] as! String
        }
        if dict.keys.contains("AiTemplate") {
            self.aiTemplate = dict["AiTemplate"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class DescribeHttpDDoSAttackIntelligentProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHttpDDoSAttackIntelligentProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHttpDDoSAttackIntelligentProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHttpDDoSAttackProtectionRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class DescribeHttpDDoSAttackProtectionResponseBody : Tea.TeaModel {
    public var globalMode: String?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.globalMode != nil {
            map["GlobalMode"] = self.globalMode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GlobalMode") {
            self.globalMode = dict["GlobalMode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class DescribeHttpDDoSAttackProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHttpDDoSAttackProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHttpDDoSAttackProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIPRangeListResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var cidr: String?

        public var ipType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.ipType != nil {
                map["IpType"] = self.ipType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! String
            }
            if dict.keys.contains("IpType") {
                self.ipType = dict["IpType"] as! String
            }
        }
    }
    public var content: [DescribeIPRangeListResponseBody.Content]?

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
        if self.content != nil {
            var tmp : [Any] = []
            for k in self.content! {
                tmp.append(k.toMap())
            }
            map["Content"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            var tmp : [DescribeIPRangeListResponseBody.Content] = []
            for v in dict["Content"] as! [Any] {
                var model = DescribeIPRangeListResponseBody.Content()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.content = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIPRangeListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIPRangeListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeIPRangeListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePreloadTasksRequest : Tea.TeaModel {
    public var content: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var siteId: Int64?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
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
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribePreloadTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var description_: String?

        public var process: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Process") {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var tasks: [DescribePreloadTasksResponseBody.Tasks]?

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
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [DescribePreloadTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = DescribePreloadTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePreloadTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePreloadTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePreloadTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurgeTasksRequest : Tea.TeaModel {
    public var content: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var siteId: Int64?

    public var startTime: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribePurgeTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var description_: String?

        public var process: String?

        public var status: String?

        public var taskId: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Process") {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var tasks: [DescribePurgeTasksResponseBody.Tasks]?

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
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [DescribePurgeTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = DescribePurgeTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePurgeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurgeTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePurgeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableCustomScenePolicyRequest : Tea.TeaModel {
    public var policyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
    }
}

public class DisableCustomScenePolicyResponseBody : Tea.TeaModel {
    public var policyId: Int64?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableCustomScenePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableCustomScenePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableCustomScenePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditSiteWafSettingsRequest : Tea.TeaModel {
    public var settings: WafSiteSettings?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.settings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Settings") {
            var model = WafSiteSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class EditSiteWafSettingsShrinkRequest : Tea.TeaModel {
    public var settingsShrink: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.settingsShrink != nil {
            map["Settings"] = self.settingsShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Settings") {
            self.settingsShrink = dict["Settings"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class EditSiteWafSettingsResponseBody : Tea.TeaModel {
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

public class EditSiteWafSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditSiteWafSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EditSiteWafSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableCustomScenePolicyRequest : Tea.TeaModel {
    public var policyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
    }
}

public class EnableCustomScenePolicyResponseBody : Tea.TeaModel {
    public var policyId: Int64?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableCustomScenePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableCustomScenePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableCustomScenePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportRecordsRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ExportRecordsResponseBody : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExportRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCacheReserveSpecificationResponseBody : Tea.TeaModel {
    public var cacheReserveCapacity: [String]?

    public var cacheReserveRegion: [String]?

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
        if self.cacheReserveCapacity != nil {
            map["CacheReserveCapacity"] = self.cacheReserveCapacity!
        }
        if self.cacheReserveRegion != nil {
            map["CacheReserveRegion"] = self.cacheReserveRegion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheReserveCapacity") {
            self.cacheReserveCapacity = dict["CacheReserveCapacity"] as! [String]
        }
        if dict.keys.contains("CacheReserveRegion") {
            self.cacheReserveRegion = dict["CacheReserveRegion"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCacheReserveSpecificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCacheReserveSpecificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCacheReserveSpecificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetKvNamespaceRequest : Tea.TeaModel {
    public var namespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
    }
}

public class GetKvNamespaceResponseBody : Tea.TeaModel {
    public var capacity: Int64?

    public var capacityString: String?

    public var capacityUsed: Int64?

    public var capacityUsedString: String?

    public var description_: String?

    public var namespace: String?

    public var namespaceId: String?

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
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.capacityString != nil {
            map["CapacityString"] = self.capacityString!
        }
        if self.capacityUsed != nil {
            map["CapacityUsed"] = self.capacityUsed!
        }
        if self.capacityUsedString != nil {
            map["CapacityUsedString"] = self.capacityUsedString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
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
        if dict.keys.contains("Capacity") {
            self.capacity = dict["Capacity"] as! Int64
        }
        if dict.keys.contains("CapacityString") {
            self.capacityString = dict["CapacityString"] as! String
        }
        if dict.keys.contains("CapacityUsed") {
            self.capacityUsed = dict["CapacityUsed"] as! Int64
        }
        if dict.keys.contains("CapacityUsedString") {
            self.capacityUsedString = dict["CapacityUsedString"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class GetKvNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKvNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetKvNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetListRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetListResponseBody : Tea.TeaModel {
    public var description_: String?

    public var id: Int64?

    public var items: [String]?

    public var kind: String?

    public var name: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.items != nil {
            map["Items"] = self.items!
        }
        if self.kind != nil {
            map["Kind"] = self.kind!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [String]
        }
        if dict.keys.contains("Kind") {
            self.kind = dict["Kind"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPageRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetPageResponseBody : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var description_: String?

    public var id: Int64?

    public var kind: String?

    public var name: String?

    public var requestId: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.kind != nil {
            map["Kind"] = self.kind!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Kind") {
            self.kind = dict["Kind"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPurgeQuotaRequest : Tea.TeaModel {
    public var siteId: Int64?

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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetPurgeQuotaResponseBody : Tea.TeaModel {
    public var quota: String?

    public var requestId: String?

    public var usage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.usage != nil {
            map["Usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quota") {
            self.quota = dict["Quota"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Usage") {
            self.usage = dict["Usage"] as! String
        }
    }
}

public class GetPurgeQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPurgeQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPurgeQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRealtimeDeliveryFieldRequest : Tea.TeaModel {
    public var businessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
    }
}

public class GetRealtimeDeliveryFieldResponseBody : Tea.TeaModel {
    public var fieldContent: [String: FieldContentValue]?

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
        if self.fieldContent != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.fieldContent! {
                tmp[k] = v.toMap()
            }
            map["FieldContent"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FieldContent") {
            var tmp : [String: FieldContentValue] = [:]
            for (k, v) in dict["FieldContent"] as! [String: Any] {
                if v != nil {
                    var model = FieldContentValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.fieldContent = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRealtimeDeliveryFieldResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealtimeDeliveryFieldResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetRealtimeDeliveryFieldResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRecordRequest : Tea.TeaModel {
    public var recordId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordId") {
            self.recordId = dict["RecordId"] as! Int64
        }
    }
}

public class GetRecordResponseBody : Tea.TeaModel {
    public class RecordModel : Tea.TeaModel {
        public class AuthConf : Tea.TeaModel {
            public var accessKey: String?

            public var authType: String?

            public var region: String?

            public var secretKey: String?

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
                if self.accessKey != nil {
                    map["AccessKey"] = self.accessKey!
                }
                if self.authType != nil {
                    map["AuthType"] = self.authType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.secretKey != nil {
                    map["SecretKey"] = self.secretKey!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessKey") {
                    self.accessKey = dict["AccessKey"] as! String
                }
                if dict.keys.contains("AuthType") {
                    self.authType = dict["AuthType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SecretKey") {
                    self.secretKey = dict["SecretKey"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Data : Tea.TeaModel {
            public var algorithm: Int32?

            public var certificate: String?

            public var fingerprint: String?

            public var flag: Int32?

            public var keyTag: Int32?

            public var matchingType: Int32?

            public var port: Int32?

            public var priority: Int32?

            public var selector: Int32?

            public var tag: String?

            public var type: Int32?

            public var usage: Int32?

            public var value: String?

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
                if self.algorithm != nil {
                    map["Algorithm"] = self.algorithm!
                }
                if self.certificate != nil {
                    map["Certificate"] = self.certificate!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.flag != nil {
                    map["Flag"] = self.flag!
                }
                if self.keyTag != nil {
                    map["KeyTag"] = self.keyTag!
                }
                if self.matchingType != nil {
                    map["MatchingType"] = self.matchingType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.selector != nil {
                    map["Selector"] = self.selector!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Algorithm") {
                    self.algorithm = dict["Algorithm"] as! Int32
                }
                if dict.keys.contains("Certificate") {
                    self.certificate = dict["Certificate"] as! String
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("Flag") {
                    self.flag = dict["Flag"] as! Int32
                }
                if dict.keys.contains("KeyTag") {
                    self.keyTag = dict["KeyTag"] as! Int32
                }
                if dict.keys.contains("MatchingType") {
                    self.matchingType = dict["MatchingType"] as! Int32
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Selector") {
                    self.selector = dict["Selector"] as! Int32
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! Int32
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var authConf: GetRecordResponseBody.RecordModel.AuthConf?

        public var bizName: String?

        public var comment: String?

        public var createTime: String?

        public var data: GetRecordResponseBody.RecordModel.Data?

        public var hostPolicy: String?

        public var proxied: Bool?

        public var recordCname: String?

        public var recordId: Int64?

        public var recordName: String?

        public var recordSourceType: String?

        public var recordType: String?

        public var siteId: Int64?

        public var siteName: String?

        public var ttl: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authConf?.validate()
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConf != nil {
                map["AuthConf"] = self.authConf?.toMap()
            }
            if self.bizName != nil {
                map["BizName"] = self.bizName!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.hostPolicy != nil {
                map["HostPolicy"] = self.hostPolicy!
            }
            if self.proxied != nil {
                map["Proxied"] = self.proxied!
            }
            if self.recordCname != nil {
                map["RecordCname"] = self.recordCname!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.recordSourceType != nil {
                map["RecordSourceType"] = self.recordSourceType!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConf") {
                var model = GetRecordResponseBody.RecordModel.AuthConf()
                model.fromMap(dict["AuthConf"] as! [String: Any])
                self.authConf = model
            }
            if dict.keys.contains("BizName") {
                self.bizName = dict["BizName"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Data") {
                var model = GetRecordResponseBody.RecordModel.Data()
                model.fromMap(dict["Data"] as! [String: Any])
                self.data = model
            }
            if dict.keys.contains("HostPolicy") {
                self.hostPolicy = dict["HostPolicy"] as! String
            }
            if dict.keys.contains("Proxied") {
                self.proxied = dict["Proxied"] as! Bool
            }
            if dict.keys.contains("RecordCname") {
                self.recordCname = dict["RecordCname"] as! String
            }
            if dict.keys.contains("RecordId") {
                self.recordId = dict["RecordId"] as! Int64
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("RecordSourceType") {
                self.recordSourceType = dict["RecordSourceType"] as! String
            }
            if dict.keys.contains("RecordType") {
                self.recordType = dict["RecordType"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("Ttl") {
                self.ttl = dict["Ttl"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var recordModel: GetRecordResponseBody.RecordModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recordModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordModel != nil {
            map["RecordModel"] = self.recordModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordModel") {
            var model = GetRecordResponseBody.RecordModel()
            model.fromMap(dict["RecordModel"] as! [String: Any])
            self.recordModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScheduledPreloadJobRequest : Tea.TeaModel {
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

public class GetScheduledPreloadJobResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var createdAt: String?

    public var domains: String?

    public var errorInfo: String?

    public var failedFileOss: String?

    public var fileId: String?

    public var id: String?

    public var insertWay: String?

    public var name: String?

    public var requestId: String?

    public var siteId: Int64?

    public var taskSubmitted: Int32?

    public var taskType: String?

    public var urlCount: Int32?

    public var urlSubmitted: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.errorInfo != nil {
            map["ErrorInfo"] = self.errorInfo!
        }
        if self.failedFileOss != nil {
            map["FailedFileOss"] = self.failedFileOss!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.insertWay != nil {
            map["InsertWay"] = self.insertWay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskSubmitted != nil {
            map["TaskSubmitted"] = self.taskSubmitted!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.urlCount != nil {
            map["UrlCount"] = self.urlCount!
        }
        if self.urlSubmitted != nil {
            map["UrlSubmitted"] = self.urlSubmitted!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("CreatedAt") {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! String
        }
        if dict.keys.contains("ErrorInfo") {
            self.errorInfo = dict["ErrorInfo"] as! String
        }
        if dict.keys.contains("FailedFileOss") {
            self.failedFileOss = dict["FailedFileOss"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InsertWay") {
            self.insertWay = dict["InsertWay"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskSubmitted") {
            self.taskSubmitted = dict["TaskSubmitted"] as! Int32
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UrlCount") {
            self.urlCount = dict["UrlCount"] as! Int32
        }
        if dict.keys.contains("UrlSubmitted") {
            self.urlSubmitted = dict["UrlSubmitted"] as! Int32
        }
    }
}

public class GetScheduledPreloadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledPreloadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetScheduledPreloadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteResponseBody : Tea.TeaModel {
    public class SiteModel : Tea.TeaModel {
        public var accessType: String?

        public var cnameZone: String?

        public var coverage: String?

        public var createTime: String?

        public var instanceId: String?

        public var nameServerList: String?

        public var planName: String?

        public var planSpecName: String?

        public var resourceGroupId: String?

        public var siteId: Int64?

        public var siteName: String?

        public var status: String?

        public var tags: [String: Any]?

        public var updateTime: String?

        public var vanityNSList: [String: String]?

        public var verifyCode: String?

        public var versionManagement: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.cnameZone != nil {
                map["CnameZone"] = self.cnameZone!
            }
            if self.coverage != nil {
                map["Coverage"] = self.coverage!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.nameServerList != nil {
                map["NameServerList"] = self.nameServerList!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planSpecName != nil {
                map["PlanSpecName"] = self.planSpecName!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vanityNSList != nil {
                map["VanityNSList"] = self.vanityNSList!
            }
            if self.verifyCode != nil {
                map["VerifyCode"] = self.verifyCode!
            }
            if self.versionManagement != nil {
                map["VersionManagement"] = self.versionManagement!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("CnameZone") {
                self.cnameZone = dict["CnameZone"] as! String
            }
            if dict.keys.contains("Coverage") {
                self.coverage = dict["Coverage"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NameServerList") {
                self.nameServerList = dict["NameServerList"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanSpecName") {
                self.planSpecName = dict["PlanSpecName"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VanityNSList") {
                self.vanityNSList = dict["VanityNSList"] as! [String: String]
            }
            if dict.keys.contains("VerifyCode") {
                self.verifyCode = dict["VerifyCode"] as! String
            }
            if dict.keys.contains("VersionManagement") {
                self.versionManagement = dict["VersionManagement"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var siteModel: GetSiteResponseBody.SiteModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.siteModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteModel != nil {
            map["SiteModel"] = self.siteModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteModel") {
            var model = GetSiteResponseBody.SiteModel()
            model.fromMap(dict["SiteModel"] as! [String: Any])
            self.siteModel = model
        }
    }
}

public class GetSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteCurrentNSRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteCurrentNSResponseBody : Tea.TeaModel {
    public var NSList: [String]?

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
        if self.NSList != nil {
            map["NSList"] = self.NSList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NSList") {
            self.NSList = dict["NSList"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSiteCurrentNSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteCurrentNSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteCurrentNSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteCustomLogRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteCustomLogResponseBody : Tea.TeaModel {
    public class LogCustomField : Tea.TeaModel {
        public var cookies: [String]?

        public var requestHeaders: [String]?

        public var responseHeaders: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cookies != nil {
                map["Cookies"] = self.cookies!
            }
            if self.requestHeaders != nil {
                map["RequestHeaders"] = self.requestHeaders!
            }
            if self.responseHeaders != nil {
                map["ResponseHeaders"] = self.responseHeaders!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cookies") {
                self.cookies = dict["Cookies"] as! [String]
            }
            if dict.keys.contains("RequestHeaders") {
                self.requestHeaders = dict["RequestHeaders"] as! [String]
            }
            if dict.keys.contains("ResponseHeaders") {
                self.responseHeaders = dict["ResponseHeaders"] as! [String]
            }
        }
    }
    public var configId: Int64?

    public var isExist: Bool?

    public var logCustomField: GetSiteCustomLogResponseBody.LogCustomField?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logCustomField?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
        if self.isExist != nil {
            map["IsExist"] = self.isExist!
        }
        if self.logCustomField != nil {
            map["LogCustomField"] = self.logCustomField?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigId") {
            self.configId = dict["ConfigId"] as! Int64
        }
        if dict.keys.contains("IsExist") {
            self.isExist = dict["IsExist"] as! Bool
        }
        if dict.keys.contains("LogCustomField") {
            var model = GetSiteCustomLogResponseBody.LogCustomField()
            model.fromMap(dict["LogCustomField"] as! [String: Any])
            self.logCustomField = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteCustomLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteCustomLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteCustomLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteDeliveryTaskRequest : Tea.TeaModel {
    public var siteId: Int64?

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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class GetSiteDeliveryTaskResponseBody : Tea.TeaModel {
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldList: String?

    public var filterRules: String?

    public var requestId: String?

    public var sinkConfig: Any?

    public var siteId: Int64?

    public var siteName: String?

    public var status: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldList != nil {
            map["FieldList"] = self.fieldList!
        }
        if self.filterRules != nil {
            map["FilterRules"] = self.filterRules!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sinkConfig != nil {
            map["SinkConfig"] = self.sinkConfig!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldList") {
            self.fieldList = dict["FieldList"] as! String
        }
        if dict.keys.contains("FilterRules") {
            self.filterRules = dict["FilterRules"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SinkConfig") {
            self.sinkConfig = dict["SinkConfig"] as! Any
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class GetSiteDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteLogDeliveryQuotaRequest : Tea.TeaModel {
    public var businessType: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteLogDeliveryQuotaResponseBody : Tea.TeaModel {
    public var businessType: String?

    public var freeQuota: Int64?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.freeQuota != nil {
            map["FreeQuota"] = self.freeQuota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("FreeQuota") {
            self.freeQuota = dict["FreeQuota"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetSiteLogDeliveryQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteLogDeliveryQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteLogDeliveryQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSiteWafSettingsRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class GetSiteWafSettingsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var settings: WafSiteSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.settings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Settings") {
            var model = WafSiteSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
    }
}

public class GetSiteWafSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSiteWafSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSiteWafSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUploadTaskRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var uploadId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.uploadId != nil {
            map["UploadId"] = self.uploadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("UploadId") {
            self.uploadId = dict["UploadId"] as! Int64
        }
    }
}

public class GetUploadTaskResponseBody : Tea.TeaModel {
    public var description_: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class GetUploadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUploadTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserDeliveryTaskRequest : Tea.TeaModel {
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
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class GetUserDeliveryTaskResponseBody : Tea.TeaModel {
    public var businessType: String?

    public var dataCenter: String?

    public var deliveryType: String?

    public var discardRate: Double?

    public var fieldList: String?

    public var filterRules: String?

    public var requestId: String?

    public var sinkConfig: Any?

    public var status: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.dataCenter != nil {
            map["DataCenter"] = self.dataCenter!
        }
        if self.deliveryType != nil {
            map["DeliveryType"] = self.deliveryType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldList != nil {
            map["FieldList"] = self.fieldList!
        }
        if self.filterRules != nil {
            map["FilterRules"] = self.filterRules!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sinkConfig != nil {
            map["SinkConfig"] = self.sinkConfig!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DataCenter") {
            self.dataCenter = dict["DataCenter"] as! String
        }
        if dict.keys.contains("DeliveryType") {
            self.deliveryType = dict["DeliveryType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldList") {
            self.fieldList = dict["FieldList"] as! String
        }
        if dict.keys.contains("FilterRules") {
            self.filterRules = dict["FilterRules"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SinkConfig") {
            self.sinkConfig = dict["SinkConfig"] as! Any
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class GetUserDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserLogDeliveryQuotaRequest : Tea.TeaModel {
    public var businessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
    }
}

public class GetUserLogDeliveryQuotaResponseBody : Tea.TeaModel {
    public var businessType: String?

    public var freeQuota: Int64?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.freeQuota != nil {
            map["FreeQuota"] = self.freeQuota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("FreeQuota") {
            self.freeQuota = dict["FreeQuota"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserLogDeliveryQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserLogDeliveryQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserLogDeliveryQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWafBotAppKeyResponseBody : Tea.TeaModel {
    public var appKey: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWafBotAppKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWafBotAppKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWafBotAppKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWafFilterRequest : Tea.TeaModel {
    public var phase: String?

    public var siteId: Int64?

    public var target: String?

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
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetWafFilterResponseBody : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public class Fields : Tea.TeaModel {
            public class Logics : Tea.TeaModel {
                public class Validator : Tea.TeaModel {
                    public var errMsg: String?

                    public var length: WafQuotaInteger?

                    public var pattern: String?

                    public var range: WafQuotaInteger?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.length?.validate()
                        try self.range?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.errMsg != nil {
                            map["ErrMsg"] = self.errMsg!
                        }
                        if self.length != nil {
                            map["Length"] = self.length?.toMap()
                        }
                        if self.pattern != nil {
                            map["Pattern"] = self.pattern!
                        }
                        if self.range != nil {
                            map["Range"] = self.range?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ErrMsg") {
                            self.errMsg = dict["ErrMsg"] as! String
                        }
                        if dict.keys.contains("Length") {
                            var model = WafQuotaInteger()
                            model.fromMap(dict["Length"] as! [String: Any])
                            self.length = model
                        }
                        if dict.keys.contains("Pattern") {
                            self.pattern = dict["Pattern"] as! String
                        }
                        if dict.keys.contains("Range") {
                            var model = WafQuotaInteger()
                            model.fromMap(dict["Range"] as! [String: Any])
                            self.range = model
                        }
                    }
                }
                public var attributes: Int32?

                public var kind: String?

                public var negative: Bool?

                public var operator_: String?

                public var symbol: String?

                public var tip: String?

                public var type: String?

                public var validator: GetWafFilterResponseBody.Filter.Fields.Logics.Validator?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.validator?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attributes != nil {
                        map["Attributes"] = self.attributes!
                    }
                    if self.kind != nil {
                        map["Kind"] = self.kind!
                    }
                    if self.negative != nil {
                        map["Negative"] = self.negative!
                    }
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
                    }
                    if self.symbol != nil {
                        map["Symbol"] = self.symbol!
                    }
                    if self.tip != nil {
                        map["Tip"] = self.tip!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.validator != nil {
                        map["Validator"] = self.validator?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attributes") {
                        self.attributes = dict["Attributes"] as! Int32
                    }
                    if dict.keys.contains("Kind") {
                        self.kind = dict["Kind"] as! String
                    }
                    if dict.keys.contains("Negative") {
                        self.negative = dict["Negative"] as! Bool
                    }
                    if dict.keys.contains("Operator") {
                        self.operator_ = dict["Operator"] as! String
                    }
                    if dict.keys.contains("Symbol") {
                        self.symbol = dict["Symbol"] as! String
                    }
                    if dict.keys.contains("Tip") {
                        self.tip = dict["Tip"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Validator") {
                        var model = GetWafFilterResponseBody.Filter.Fields.Logics.Validator()
                        model.fromMap(dict["Validator"] as! [String: Any])
                        self.validator = model
                    }
                }
            }
            public class Selector : Tea.TeaModel {
                public class Data : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var data: [GetWafFilterResponseBody.Filter.Fields.Selector.Data]?

                public var kind: String?

                public override init() {
                    super.init()
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
                        map["Data"] = tmp
                    }
                    if self.kind != nil {
                        map["Kind"] = self.kind!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") {
                        var tmp : [GetWafFilterResponseBody.Filter.Fields.Selector.Data] = []
                        for v in dict["Data"] as! [Any] {
                            var model = GetWafFilterResponseBody.Filter.Fields.Selector.Data()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.data = tmp
                    }
                    if dict.keys.contains("Kind") {
                        self.kind = dict["Kind"] as! String
                    }
                }
            }
            public var key: String?

            public var label: String?

            public var logics: [GetWafFilterResponseBody.Filter.Fields.Logics]?

            public var selector: GetWafFilterResponseBody.Filter.Fields.Selector?

            public var sub: Bool?

            public var subTip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.selector?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.logics != nil {
                    var tmp : [Any] = []
                    for k in self.logics! {
                        tmp.append(k.toMap())
                    }
                    map["Logics"] = tmp
                }
                if self.selector != nil {
                    map["Selector"] = self.selector?.toMap()
                }
                if self.sub != nil {
                    map["Sub"] = self.sub!
                }
                if self.subTip != nil {
                    map["SubTip"] = self.subTip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Logics") {
                    var tmp : [GetWafFilterResponseBody.Filter.Fields.Logics] = []
                    for v in dict["Logics"] as! [Any] {
                        var model = GetWafFilterResponseBody.Filter.Fields.Logics()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logics = tmp
                }
                if dict.keys.contains("Selector") {
                    var model = GetWafFilterResponseBody.Filter.Fields.Selector()
                    model.fromMap(dict["Selector"] as! [String: Any])
                    self.selector = model
                }
                if dict.keys.contains("Sub") {
                    self.sub = dict["Sub"] as! Bool
                }
                if dict.keys.contains("SubTip") {
                    self.subTip = dict["SubTip"] as! String
                }
            }
        }
        public var fields: [GetWafFilterResponseBody.Filter.Fields]?

        public var phase: String?

        public var target: String?

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
                var tmp : [Any] = []
                for k in self.fields! {
                    tmp.append(k.toMap())
                }
                map["Fields"] = tmp
            }
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fields") {
                var tmp : [GetWafFilterResponseBody.Filter.Fields] = []
                for v in dict["Fields"] as! [Any] {
                    var model = GetWafFilterResponseBody.Filter.Fields()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fields = tmp
            }
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var filter: GetWafFilterResponseBody.Filter?

    public var requestId: String?

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
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var model = GetWafFilterResponseBody.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWafFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWafFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWafFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWafQuotaRequest : Tea.TeaModel {
    public var paths: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paths != nil {
            map["Paths"] = self.paths!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Paths") {
            self.paths = dict["Paths"] as! String
        }
    }
}

public class GetWafQuotaResponseBody : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var enable: Bool?

            public var items: [String: QuotaListItemsValue]?

            public var numberItemsPerList: WafQuotaInteger?

            public var numberItemsTotal: WafQuotaInteger?

            public var numberTotal: WafQuotaInteger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.numberItemsPerList?.validate()
                try self.numberItemsTotal?.validate()
                try self.numberTotal?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.items != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.items! {
                        tmp[k] = v.toMap()
                    }
                    map["Items"] = tmp
                }
                if self.numberItemsPerList != nil {
                    map["NumberItemsPerList"] = self.numberItemsPerList?.toMap()
                }
                if self.numberItemsTotal != nil {
                    map["NumberItemsTotal"] = self.numberItemsTotal?.toMap()
                }
                if self.numberTotal != nil {
                    map["NumberTotal"] = self.numberTotal?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("Items") {
                    var tmp : [String: QuotaListItemsValue] = [:]
                    for (k, v) in dict["Items"] as! [String: Any] {
                        if v != nil {
                            var model = QuotaListItemsValue()
                            model.fromMap(v as! [String: Any])
                            tmp[k] = model
                        }
                    }
                    self.items = tmp
                }
                if dict.keys.contains("NumberItemsPerList") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberItemsPerList"] as! [String: Any])
                    self.numberItemsPerList = model
                }
                if dict.keys.contains("NumberItemsTotal") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberItemsTotal"] as! [String: Any])
                    self.numberItemsTotal = model
                }
                if dict.keys.contains("NumberTotal") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberTotal"] as! [String: Any])
                    self.numberTotal = model
                }
            }
        }
        public class ManagedRulesGroup : Tea.TeaModel {
            public var enable: Bool?

            public var numberTotal: WafQuotaInteger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.numberTotal?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.numberTotal != nil {
                    map["NumberTotal"] = self.numberTotal?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("NumberTotal") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberTotal"] as! [String: Any])
                    self.numberTotal = model
                }
            }
        }
        public class Page : Tea.TeaModel {
            public var contentTypes: [String: QuotaPageContentTypesValue]?

            public var enable: Bool?

            public var numberTotal: WafQuotaInteger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.numberTotal?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contentTypes != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.contentTypes! {
                        tmp[k] = v.toMap()
                    }
                    map["ContentTypes"] = tmp
                }
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.numberTotal != nil {
                    map["NumberTotal"] = self.numberTotal?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContentTypes") {
                    var tmp : [String: QuotaPageContentTypesValue] = [:]
                    for (k, v) in dict["ContentTypes"] as! [String: Any] {
                        if v != nil {
                            var model = QuotaPageContentTypesValue()
                            model.fromMap(v as! [String: Any])
                            tmp[k] = model
                        }
                    }
                    self.contentTypes = tmp
                }
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("NumberTotal") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberTotal"] as! [String: Any])
                    self.numberTotal = model
                }
            }
        }
        public class ScenePolicy : Tea.TeaModel {
            public var enable: Bool?

            public var numberTotal: WafQuotaInteger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.numberTotal?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.numberTotal != nil {
                    map["NumberTotal"] = self.numberTotal?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("NumberTotal") {
                    var model = WafQuotaInteger()
                    model.fromMap(dict["NumberTotal"] as! [String: Any])
                    self.numberTotal = model
                }
            }
        }
        public var list: GetWafQuotaResponseBody.Quota.List?

        public var managedRulesGroup: GetWafQuotaResponseBody.Quota.ManagedRulesGroup?

        public var page: GetWafQuotaResponseBody.Quota.Page?

        public var scenePolicy: GetWafQuotaResponseBody.Quota.ScenePolicy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.list?.validate()
            try self.managedRulesGroup?.validate()
            try self.page?.validate()
            try self.scenePolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                map["List"] = self.list?.toMap()
            }
            if self.managedRulesGroup != nil {
                map["ManagedRulesGroup"] = self.managedRulesGroup?.toMap()
            }
            if self.page != nil {
                map["Page"] = self.page?.toMap()
            }
            if self.scenePolicy != nil {
                map["ScenePolicy"] = self.scenePolicy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var model = GetWafQuotaResponseBody.Quota.List()
                model.fromMap(dict["List"] as! [String: Any])
                self.list = model
            }
            if dict.keys.contains("ManagedRulesGroup") {
                var model = GetWafQuotaResponseBody.Quota.ManagedRulesGroup()
                model.fromMap(dict["ManagedRulesGroup"] as! [String: Any])
                self.managedRulesGroup = model
            }
            if dict.keys.contains("Page") {
                var model = GetWafQuotaResponseBody.Quota.Page()
                model.fromMap(dict["Page"] as! [String: Any])
                self.page = model
            }
            if dict.keys.contains("ScenePolicy") {
                var model = GetWafQuotaResponseBody.Quota.ScenePolicy()
                model.fromMap(dict["ScenePolicy"] as! [String: Any])
                self.scenePolicy = model
            }
        }
    }
    public var quota: GetWafQuotaResponseBody.Quota?

    public var requestId: String?

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
        if self.quota != nil {
            map["Quota"] = self.quota?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quota") {
            var model = GetWafQuotaResponseBody.Quota()
            model.fromMap(dict["Quota"] as! [String: Any])
            self.quota = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWafQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWafQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWafQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWafRuleRequest : Tea.TeaModel {
    public var id: Int64?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetWafRuleResponseBody : Tea.TeaModel {
    public var config: WafRuleConfig?

    public var id: Int64?

    public var name: String?

    public var phase: String?

    public var position: Int64?

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
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.position != nil {
            map["Position"] = self.position!
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
        if dict.keys.contains("Config") {
            var model = WafRuleConfig()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("Position") {
            self.position = dict["Position"] as! Int64
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

public class GetWafRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWafRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWafRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWafRulesetRequest : Tea.TeaModel {
    public var id: Int64?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class GetWafRulesetResponseBody : Tea.TeaModel {
    public var id: Int64?

    public var name: String?

    public var phase: String?

    public var requestId: String?

    public var rules: [WafRuleConfig]?

    public var shared: WafBatchRuleShared?

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
        try self.shared?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.shared != nil {
            map["Shared"] = self.shared?.toMap()
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
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [WafRuleConfig] = []
            for v in dict["Rules"] as! [Any] {
                var model = WafRuleConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("Shared") {
            var model = WafBatchRuleShared()
            model.fromMap(dict["Shared"] as! [String: Any])
            self.shared = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetWafRulesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWafRulesetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWafRulesetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCacheReserveInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListCacheReserveInstancesResponseBody : Tea.TeaModel {
    public class InstanceInfo : Tea.TeaModel {
        public var cacheReserveCapacity: String?

        public var cacheReserveRegion: String?

        public var createTime: String?

        public var duration: Int32?

        public var expireTime: String?

        public var instanceId: String?

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
            if self.cacheReserveCapacity != nil {
                map["CacheReserveCapacity"] = self.cacheReserveCapacity!
            }
            if self.cacheReserveRegion != nil {
                map["CacheReserveRegion"] = self.cacheReserveRegion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheReserveCapacity") {
                self.cacheReserveCapacity = dict["CacheReserveCapacity"] as! String
            }
            if dict.keys.contains("CacheReserveRegion") {
                self.cacheReserveRegion = dict["CacheReserveRegion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instanceInfo: [ListCacheReserveInstancesResponseBody.InstanceInfo]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceInfo") {
            var tmp : [ListCacheReserveInstancesResponseBody.InstanceInfo] = []
            for v in dict["InstanceInfo"] as! [Any] {
                var model = ListCacheReserveInstancesResponseBody.InstanceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceInfo = tmp
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
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class ListCacheReserveInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCacheReserveInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListCacheReserveInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEdgeContainerAppRecordsRequest : Tea.TeaModel {
    public var appId: String?

    public var orderKey: String?

    public var orderType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public override init() {
        super.init()
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
        if self.orderKey != nil {
            map["OrderKey"] = self.orderKey!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OrderKey") {
            self.orderKey = dict["OrderKey"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class ListEdgeContainerAppRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var appId: String?

        public var cname: String?

        public var configId: Int64?

        public var createTime: String?

        public var recordId: Int64?

        public var recordName: String?

        public var schemdId: Int32?

        public var siteId: Int64?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.schemdId != nil {
                map["SchemdId"] = self.schemdId!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("ConfigId") {
                self.configId = dict["ConfigId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("RecordId") {
                self.recordId = dict["RecordId"] as! Int64
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("SchemdId") {
                self.schemdId = dict["SchemdId"] as! Int32
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var records: [ListEdgeContainerAppRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if dict.keys.contains("Records") {
            var tmp : [ListEdgeContainerAppRecordsResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = ListEdgeContainerAppRecordsResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEdgeContainerAppRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEdgeContainerAppRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEdgeContainerAppRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEdgeContainerAppsRequest : Tea.TeaModel {
    public var orderKey: String?

    public var orderType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var searchType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderKey != nil {
            map["OrderKey"] = self.orderKey!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderKey") {
            self.orderKey = dict["OrderKey"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SearchType") {
            self.searchType = dict["SearchType"] as! String
        }
    }
}

public class ListEdgeContainerAppsResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public class HealthCheck : Tea.TeaModel {
            public var failTimes: Int32?

            public var host: String?

            public var httpCode: String?

            public var interval: Int32?

            public var method: String?

            public var port: Int32?

            public var succTimes: Int32?

            public var timeout: Int32?

            public var type: String?

            public var uri: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failTimes != nil {
                    map["FailTimes"] = self.failTimes!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.httpCode != nil {
                    map["HttpCode"] = self.httpCode!
                }
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.succTimes != nil {
                    map["SuccTimes"] = self.succTimes!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailTimes") {
                    self.failTimes = dict["FailTimes"] as! Int32
                }
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("HttpCode") {
                    self.httpCode = dict["HttpCode"] as! String
                }
                if dict.keys.contains("Interval") {
                    self.interval = dict["Interval"] as! Int32
                }
                if dict.keys.contains("Method") {
                    self.method = dict["Method"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("SuccTimes") {
                    self.succTimes = dict["SuccTimes"] as! Int32
                }
                if dict.keys.contains("Timeout") {
                    self.timeout = dict["Timeout"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Uri") {
                    self.uri = dict["Uri"] as! String
                }
            }
        }
        public var appId: String?

        public var createTime: String?

        public var domainName: String?

        public var gatewayType: String?

        public var healthCheck: ListEdgeContainerAppsResponseBody.Apps.HealthCheck?

        public var name: String?

        public var percentage: Int32?

        public var quicCid: String?

        public var remarks: String?

        public var servicePort: Int32?

        public var status: String?

        public var targetPort: Int32?

        public var updateTime: String?

        public var versionCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.healthCheck?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.gatewayType != nil {
                map["GatewayType"] = self.gatewayType!
            }
            if self.healthCheck != nil {
                map["HealthCheck"] = self.healthCheck?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.percentage != nil {
                map["Percentage"] = self.percentage!
            }
            if self.quicCid != nil {
                map["QuicCid"] = self.quicCid!
            }
            if self.remarks != nil {
                map["Remarks"] = self.remarks!
            }
            if self.servicePort != nil {
                map["ServicePort"] = self.servicePort!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetPort != nil {
                map["TargetPort"] = self.targetPort!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionCount != nil {
                map["VersionCount"] = self.versionCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("GatewayType") {
                self.gatewayType = dict["GatewayType"] as! String
            }
            if dict.keys.contains("HealthCheck") {
                var model = ListEdgeContainerAppsResponseBody.Apps.HealthCheck()
                model.fromMap(dict["HealthCheck"] as! [String: Any])
                self.healthCheck = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Percentage") {
                self.percentage = dict["Percentage"] as! Int32
            }
            if dict.keys.contains("QuicCid") {
                self.quicCid = dict["QuicCid"] as! String
            }
            if dict.keys.contains("Remarks") {
                self.remarks = dict["Remarks"] as! String
            }
            if dict.keys.contains("ServicePort") {
                self.servicePort = dict["ServicePort"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetPort") {
                self.targetPort = dict["TargetPort"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VersionCount") {
                self.versionCount = dict["VersionCount"] as! Int32
            }
        }
    }
    public var apps: [ListEdgeContainerAppsResponseBody.Apps]?

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
        if self.apps != nil {
            var tmp : [Any] = []
            for k in self.apps! {
                tmp.append(k.toMap())
            }
            map["Apps"] = tmp
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
        if dict.keys.contains("Apps") {
            var tmp : [ListEdgeContainerAppsResponseBody.Apps] = []
            for v in dict["Apps"] as! [Any] {
                var model = ListEdgeContainerAppsResponseBody.Apps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apps = tmp
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

public class ListEdgeContainerAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEdgeContainerAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEdgeContainerAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEdgeContainerRecordsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recordMatchType: String?

    public var recordName: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.recordMatchType != nil {
            map["RecordMatchType"] = self.recordMatchType!
        }
        if self.recordName != nil {
            map["RecordName"] = self.recordName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
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
        if dict.keys.contains("RecordMatchType") {
            self.recordMatchType = dict["RecordMatchType"] as! String
        }
        if dict.keys.contains("RecordName") {
            self.recordName = dict["RecordName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListEdgeContainerRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var createTime: String?

        public var recordCname: String?

        public var recordName: String?

        public var siteId: Int64?

        public var siteName: String?

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
            if self.recordCname != nil {
                map["RecordCname"] = self.recordCname!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
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
            if dict.keys.contains("RecordCname") {
                self.recordCname = dict["RecordCname"] as! String
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var records: [ListEdgeContainerRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if dict.keys.contains("Records") {
            var tmp : [ListEdgeContainerRecordsResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = ListEdgeContainerRecordsResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEdgeContainerRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEdgeContainerRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEdgeContainerRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEdgeRoutinePlansResponseBody : Tea.TeaModel {
    public class PlanInfo : Tea.TeaModel {
        public var billingMode: String?

        public var erRoutineCodeVersionQuota: String?

        public var erRoutineQuota: String?

        public var erRoutineRouteSiteCountQuota: String?

        public var paymentMethod: String?

        public var planName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingMode != nil {
                map["BillingMode"] = self.billingMode!
            }
            if self.erRoutineCodeVersionQuota != nil {
                map["ErRoutineCodeVersionQuota"] = self.erRoutineCodeVersionQuota!
            }
            if self.erRoutineQuota != nil {
                map["ErRoutineQuota"] = self.erRoutineQuota!
            }
            if self.erRoutineRouteSiteCountQuota != nil {
                map["ErRoutineRouteSiteCountQuota"] = self.erRoutineRouteSiteCountQuota!
            }
            if self.paymentMethod != nil {
                map["PaymentMethod"] = self.paymentMethod!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingMode") {
                self.billingMode = dict["BillingMode"] as! String
            }
            if dict.keys.contains("ErRoutineCodeVersionQuota") {
                self.erRoutineCodeVersionQuota = dict["ErRoutineCodeVersionQuota"] as! String
            }
            if dict.keys.contains("ErRoutineQuota") {
                self.erRoutineQuota = dict["ErRoutineQuota"] as! String
            }
            if dict.keys.contains("ErRoutineRouteSiteCountQuota") {
                self.erRoutineRouteSiteCountQuota = dict["ErRoutineRouteSiteCountQuota"] as! String
            }
            if dict.keys.contains("PaymentMethod") {
                self.paymentMethod = dict["PaymentMethod"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planInfo: [ListEdgeRoutinePlansResponseBody.PlanInfo]?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.planInfo != nil {
            var tmp : [Any] = []
            for k in self.planInfo! {
                tmp.append(k.toMap())
            }
            map["PlanInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
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
        if dict.keys.contains("PlanInfo") {
            var tmp : [ListEdgeRoutinePlansResponseBody.PlanInfo] = []
            for v in dict["PlanInfo"] as! [Any] {
                var model = ListEdgeRoutinePlansResponseBody.PlanInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.planInfo = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class ListEdgeRoutinePlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEdgeRoutinePlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEdgeRoutinePlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEdgeRoutineRecordsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recordMatchType: String?

    public var recordName: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.recordMatchType != nil {
            map["RecordMatchType"] = self.recordMatchType!
        }
        if self.recordName != nil {
            map["RecordName"] = self.recordName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
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
        if dict.keys.contains("RecordMatchType") {
            self.recordMatchType = dict["RecordMatchType"] as! String
        }
        if dict.keys.contains("RecordName") {
            self.recordName = dict["RecordName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListEdgeRoutineRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var createTime: String?

        public var recordCname: String?

        public var recordName: String?

        public var siteId: Int64?

        public var siteName: String?

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
            if self.recordCname != nil {
                map["RecordCname"] = self.recordCname!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
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
            if dict.keys.contains("RecordCname") {
                self.recordCname = dict["RecordCname"] as! String
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var records: [ListEdgeRoutineRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if dict.keys.contains("Records") {
            var tmp : [ListEdgeRoutineRecordsResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = ListEdgeRoutineRecordsResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListEdgeRoutineRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEdgeRoutineRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEdgeRoutineRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceQuotasRequest : Tea.TeaModel {
    public var instanceId: String?

    public var quotaNames: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.quotaNames != nil {
            map["QuotaNames"] = self.quotaNames!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("QuotaNames") {
            self.quotaNames = dict["QuotaNames"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListInstanceQuotasResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public var quotaName: String?

        public var quotaValue: String?

        public var quotaValueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaValue != nil {
                map["QuotaValue"] = self.quotaValue!
            }
            if self.quotaValueType != nil {
                map["QuotaValueType"] = self.quotaValueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaValue") {
                self.quotaValue = dict["QuotaValue"] as! String
            }
            if dict.keys.contains("QuotaValueType") {
                self.quotaValueType = dict["QuotaValueType"] as! String
            }
        }
    }
    public var instanceId: String?

    public var quotas: [ListInstanceQuotasResponseBody.Quotas]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Quotas") {
            var tmp : [ListInstanceQuotasResponseBody.Quotas] = []
            for v in dict["Quotas"] as! [Any] {
                var model = ListInstanceQuotasResponseBody.Quotas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotas = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstanceQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstanceQuotasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceQuotasWithUsageRequest : Tea.TeaModel {
    public var instanceId: String?

    public var quotaNames: String?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.quotaNames != nil {
            map["QuotaNames"] = self.quotaNames!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("QuotaNames") {
            self.quotaNames = dict["QuotaNames"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListInstanceQuotasWithUsageResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public class SiteUsage : Tea.TeaModel {
            public var siteId: Int64?

            public var siteName: String?

            public var siteUsage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.siteId != nil {
                    map["SiteId"] = self.siteId!
                }
                if self.siteName != nil {
                    map["SiteName"] = self.siteName!
                }
                if self.siteUsage != nil {
                    map["SiteUsage"] = self.siteUsage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SiteId") {
                    self.siteId = dict["SiteId"] as! Int64
                }
                if dict.keys.contains("SiteName") {
                    self.siteName = dict["SiteName"] as! String
                }
                if dict.keys.contains("SiteUsage") {
                    self.siteUsage = dict["SiteUsage"] as! String
                }
            }
        }
        public var quotaName: String?

        public var quotaValue: String?

        public var siteUsage: [ListInstanceQuotasWithUsageResponseBody.Quotas.SiteUsage]?

        public var usage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaValue != nil {
                map["QuotaValue"] = self.quotaValue!
            }
            if self.siteUsage != nil {
                var tmp : [Any] = []
                for k in self.siteUsage! {
                    tmp.append(k.toMap())
                }
                map["SiteUsage"] = tmp
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaValue") {
                self.quotaValue = dict["QuotaValue"] as! String
            }
            if dict.keys.contains("SiteUsage") {
                var tmp : [ListInstanceQuotasWithUsageResponseBody.Quotas.SiteUsage] = []
                for v in dict["SiteUsage"] as! [Any] {
                    var model = ListInstanceQuotasWithUsageResponseBody.Quotas.SiteUsage()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.siteUsage = tmp
            }
            if dict.keys.contains("Usage") {
                self.usage = dict["Usage"] as! String
            }
        }
    }
    public var instanceId: String?

    public var quotas: [ListInstanceQuotasWithUsageResponseBody.Quotas]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Quotas") {
            var tmp : [ListInstanceQuotasWithUsageResponseBody.Quotas] = []
            for v in dict["Quotas"] as! [Any] {
                var model = ListInstanceQuotasWithUsageResponseBody.Quotas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotas = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstanceQuotasWithUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceQuotasWithUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstanceQuotasWithUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListKvsRequest : Tea.TeaModel {
    public var namespace: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class ListKvsResponseBody : Tea.TeaModel {
    public class Keys : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var keys: [ListKvsResponseBody.Keys]?

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
        if self.keys != nil {
            var tmp : [Any] = []
            for k in self.keys! {
                tmp.append(k.toMap())
            }
            map["Keys"] = tmp
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
        if dict.keys.contains("Keys") {
            var tmp : [ListKvsResponseBody.Keys] = []
            for v in dict["Keys"] as! [Any] {
                var model = ListKvsResponseBody.Keys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.keys = tmp
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

public class ListKvsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKvsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListKvsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListListsRequest : Tea.TeaModel {
    public class QueryArgs : Tea.TeaModel {
        public var desc: Bool?

        public var descriptionLike: String?

        public var idLike: String?

        public var itemLike: String?

        public var kind: String?

        public var nameItemLike: String?

        public var nameLike: String?

        public var orderBy: String?

        public override init() {
            super.init()
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
                map["Desc"] = self.desc!
            }
            if self.descriptionLike != nil {
                map["DescriptionLike"] = self.descriptionLike!
            }
            if self.idLike != nil {
                map["IdLike"] = self.idLike!
            }
            if self.itemLike != nil {
                map["ItemLike"] = self.itemLike!
            }
            if self.kind != nil {
                map["Kind"] = self.kind!
            }
            if self.nameItemLike != nil {
                map["NameItemLike"] = self.nameItemLike!
            }
            if self.nameLike != nil {
                map["NameLike"] = self.nameLike!
            }
            if self.orderBy != nil {
                map["OrderBy"] = self.orderBy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! Bool
            }
            if dict.keys.contains("DescriptionLike") {
                self.descriptionLike = dict["DescriptionLike"] as! String
            }
            if dict.keys.contains("IdLike") {
                self.idLike = dict["IdLike"] as! String
            }
            if dict.keys.contains("ItemLike") {
                self.itemLike = dict["ItemLike"] as! String
            }
            if dict.keys.contains("Kind") {
                self.kind = dict["Kind"] as! String
            }
            if dict.keys.contains("NameItemLike") {
                self.nameItemLike = dict["NameItemLike"] as! String
            }
            if dict.keys.contains("NameLike") {
                self.nameLike = dict["NameLike"] as! String
            }
            if dict.keys.contains("OrderBy") {
                self.orderBy = dict["OrderBy"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryArgs: ListListsRequest.QueryArgs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryArgs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryArgs != nil {
            map["QueryArgs"] = self.queryArgs?.toMap()
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
        if dict.keys.contains("QueryArgs") {
            var model = ListListsRequest.QueryArgs()
            model.fromMap(dict["QueryArgs"] as! [String: Any])
            self.queryArgs = model
        }
    }
}

public class ListListsShrinkRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryArgsShrink: String?

    public override init() {
        super.init()
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
        if self.queryArgsShrink != nil {
            map["QueryArgs"] = self.queryArgsShrink!
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
        if dict.keys.contains("QueryArgs") {
            self.queryArgsShrink = dict["QueryArgs"] as! String
        }
    }
}

public class ListListsResponseBody : Tea.TeaModel {
    public class Lists : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var kind: String?

        public var length: Int64?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.kind != nil {
                map["Kind"] = self.kind!
            }
            if self.length != nil {
                map["Length"] = self.length!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Kind") {
                self.kind = dict["Kind"] as! String
            }
            if dict.keys.contains("Length") {
                self.length = dict["Length"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var lists: [ListListsResponseBody.Lists]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var usage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lists != nil {
            var tmp : [Any] = []
            for k in self.lists! {
                tmp.append(k.toMap())
            }
            map["Lists"] = tmp
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
        if self.usage != nil {
            map["Usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lists") {
            var tmp : [ListListsResponseBody.Lists] = []
            for v in dict["Lists"] as! [Any] {
                var model = ListListsResponseBody.Lists()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lists = tmp
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
        if dict.keys.contains("Usage") {
            self.usage = dict["Usage"] as! Int64
        }
    }
}

public class ListListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListListsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListListsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLoadBalancerRegionsRequest : Tea.TeaModel {
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

public class ListLoadBalancerRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class SubRegions : Tea.TeaModel {
            public var subRegionCnName: String?

            public var subRegionCode: String?

            public var subRegionEnName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subRegionCnName != nil {
                    map["SubRegionCnName"] = self.subRegionCnName!
                }
                if self.subRegionCode != nil {
                    map["SubRegionCode"] = self.subRegionCode!
                }
                if self.subRegionEnName != nil {
                    map["SubRegionEnName"] = self.subRegionEnName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubRegionCnName") {
                    self.subRegionCnName = dict["SubRegionCnName"] as! String
                }
                if dict.keys.contains("SubRegionCode") {
                    self.subRegionCode = dict["SubRegionCode"] as! String
                }
                if dict.keys.contains("SubRegionEnName") {
                    self.subRegionEnName = dict["SubRegionEnName"] as! String
                }
            }
        }
        public var regionCnName: String?

        public var regionCode: String?

        public var regionEnName: String?

        public var subRegions: [ListLoadBalancerRegionsResponseBody.Regions.SubRegions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionCnName != nil {
                map["RegionCnName"] = self.regionCnName!
            }
            if self.regionCode != nil {
                map["RegionCode"] = self.regionCode!
            }
            if self.regionEnName != nil {
                map["RegionEnName"] = self.regionEnName!
            }
            if self.subRegions != nil {
                var tmp : [Any] = []
                for k in self.subRegions! {
                    tmp.append(k.toMap())
                }
                map["SubRegions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionCnName") {
                self.regionCnName = dict["RegionCnName"] as! String
            }
            if dict.keys.contains("RegionCode") {
                self.regionCode = dict["RegionCode"] as! String
            }
            if dict.keys.contains("RegionEnName") {
                self.regionEnName = dict["RegionEnName"] as! String
            }
            if dict.keys.contains("SubRegions") {
                var tmp : [ListLoadBalancerRegionsResponseBody.Regions.SubRegions] = []
                for v in dict["SubRegions"] as! [Any] {
                    var model = ListLoadBalancerRegionsResponseBody.Regions.SubRegions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subRegions = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regions: [ListLoadBalancerRegionsResponseBody.Regions]?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
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
        if dict.keys.contains("Regions") {
            var tmp : [ListLoadBalancerRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListLoadBalancerRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class ListLoadBalancerRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLoadBalancerRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLoadBalancerRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListManagedRulesGroupsRequest : Tea.TeaModel {
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

public class ListManagedRulesGroupsResponseBody : Tea.TeaModel {
    public class ManagedRulesGroups : Tea.TeaModel {
        public var name: String?

        public var ruleCount: Int64?

        public override init() {
            super.init()
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
            if self.ruleCount != nil {
                map["RuleCount"] = self.ruleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleCount") {
                self.ruleCount = dict["RuleCount"] as! Int64
            }
        }
    }
    public var managedRulesGroups: [ListManagedRulesGroupsResponseBody.ManagedRulesGroups]?

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
        if self.managedRulesGroups != nil {
            var tmp : [Any] = []
            for k in self.managedRulesGroups! {
                tmp.append(k.toMap())
            }
            map["ManagedRulesGroups"] = tmp
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
        if dict.keys.contains("ManagedRulesGroups") {
            var tmp : [ListManagedRulesGroupsResponseBody.ManagedRulesGroups] = []
            for v in dict["ManagedRulesGroups"] as! [Any] {
                var model = ListManagedRulesGroupsResponseBody.ManagedRulesGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.managedRulesGroups = tmp
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

public class ListManagedRulesGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListManagedRulesGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListManagedRulesGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPagesRequest : Tea.TeaModel {
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

public class ListPagesResponseBody : Tea.TeaModel {
    public class Pages : Tea.TeaModel {
        public var content: String?

        public var contentType: String?

        public var description_: String?

        public var id: Int64?

        public var kind: String?

        public var name: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.kind != nil {
                map["Kind"] = self.kind!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") {
                self.contentType = dict["ContentType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Kind") {
                self.kind = dict["Kind"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pages: [ListPagesResponseBody.Pages]?

    public var requestId: String?

    public var totalCount: Int32?

    public var usage: Int64?

    public override init() {
        super.init()
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
        if self.pages != nil {
            var tmp : [Any] = []
            for k in self.pages! {
                tmp.append(k.toMap())
            }
            map["Pages"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.usage != nil {
            map["Usage"] = self.usage!
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
        if dict.keys.contains("Pages") {
            var tmp : [ListPagesResponseBody.Pages] = []
            for v in dict["Pages"] as! [Any] {
                var model = ListPagesResponseBody.Pages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pages = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Usage") {
            self.usage = dict["Usage"] as! Int64
        }
    }
}

public class ListPagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRecordsRequest : Tea.TeaModel {
    public var bizName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var proxied: String?

    public var recordMatchType: String?

    public var recordName: String?

    public var siteId: Int64?

    public var sourceType: String?

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
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proxied != nil {
            map["Proxied"] = self.proxied!
        }
        if self.recordMatchType != nil {
            map["RecordMatchType"] = self.recordMatchType!
        }
        if self.recordName != nil {
            map["RecordName"] = self.recordName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Proxied") {
            self.proxied = dict["Proxied"] as! String
        }
        if dict.keys.contains("RecordMatchType") {
            self.recordMatchType = dict["RecordMatchType"] as! String
        }
        if dict.keys.contains("RecordName") {
            self.recordName = dict["RecordName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public class AuthConf : Tea.TeaModel {
            public var accessKey: String?

            public var authType: String?

            public var region: String?

            public var secretKey: String?

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
                if self.accessKey != nil {
                    map["AccessKey"] = self.accessKey!
                }
                if self.authType != nil {
                    map["AuthType"] = self.authType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.secretKey != nil {
                    map["SecretKey"] = self.secretKey!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessKey") {
                    self.accessKey = dict["AccessKey"] as! String
                }
                if dict.keys.contains("AuthType") {
                    self.authType = dict["AuthType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SecretKey") {
                    self.secretKey = dict["SecretKey"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Data : Tea.TeaModel {
            public var algorithm: Int32?

            public var certificate: String?

            public var fingerprint: String?

            public var flag: Int32?

            public var keyTag: Int32?

            public var matchingType: Int32?

            public var port: Int32?

            public var priority: Int32?

            public var selector: Int32?

            public var tag: String?

            public var type: Int32?

            public var usage: Int32?

            public var value: String?

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
                if self.algorithm != nil {
                    map["Algorithm"] = self.algorithm!
                }
                if self.certificate != nil {
                    map["Certificate"] = self.certificate!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.flag != nil {
                    map["Flag"] = self.flag!
                }
                if self.keyTag != nil {
                    map["KeyTag"] = self.keyTag!
                }
                if self.matchingType != nil {
                    map["MatchingType"] = self.matchingType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.selector != nil {
                    map["Selector"] = self.selector!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Algorithm") {
                    self.algorithm = dict["Algorithm"] as! Int32
                }
                if dict.keys.contains("Certificate") {
                    self.certificate = dict["Certificate"] as! String
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("Flag") {
                    self.flag = dict["Flag"] as! Int32
                }
                if dict.keys.contains("KeyTag") {
                    self.keyTag = dict["KeyTag"] as! Int32
                }
                if dict.keys.contains("MatchingType") {
                    self.matchingType = dict["MatchingType"] as! Int32
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Selector") {
                    self.selector = dict["Selector"] as! Int32
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! Int32
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var authConf: ListRecordsResponseBody.Records.AuthConf?

        public var bizName: String?

        public var comment: String?

        public var createTime: String?

        public var data: ListRecordsResponseBody.Records.Data?

        public var hostPolicy: String?

        public var proxied: Bool?

        public var recordCname: String?

        public var recordId: Int64?

        public var recordName: String?

        public var recordSourceType: String?

        public var recordType: String?

        public var siteId: Int64?

        public var siteName: String?

        public var ttl: Int64?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authConf?.validate()
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConf != nil {
                map["AuthConf"] = self.authConf?.toMap()
            }
            if self.bizName != nil {
                map["BizName"] = self.bizName!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.hostPolicy != nil {
                map["HostPolicy"] = self.hostPolicy!
            }
            if self.proxied != nil {
                map["Proxied"] = self.proxied!
            }
            if self.recordCname != nil {
                map["RecordCname"] = self.recordCname!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.recordName != nil {
                map["RecordName"] = self.recordName!
            }
            if self.recordSourceType != nil {
                map["RecordSourceType"] = self.recordSourceType!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConf") {
                var model = ListRecordsResponseBody.Records.AuthConf()
                model.fromMap(dict["AuthConf"] as! [String: Any])
                self.authConf = model
            }
            if dict.keys.contains("BizName") {
                self.bizName = dict["BizName"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Data") {
                var model = ListRecordsResponseBody.Records.Data()
                model.fromMap(dict["Data"] as! [String: Any])
                self.data = model
            }
            if dict.keys.contains("HostPolicy") {
                self.hostPolicy = dict["HostPolicy"] as! String
            }
            if dict.keys.contains("Proxied") {
                self.proxied = dict["Proxied"] as! Bool
            }
            if dict.keys.contains("RecordCname") {
                self.recordCname = dict["RecordCname"] as! String
            }
            if dict.keys.contains("RecordId") {
                self.recordId = dict["RecordId"] as! Int64
            }
            if dict.keys.contains("RecordName") {
                self.recordName = dict["RecordName"] as! String
            }
            if dict.keys.contains("RecordSourceType") {
                self.recordSourceType = dict["RecordSourceType"] as! String
            }
            if dict.keys.contains("RecordType") {
                self.recordType = dict["RecordType"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("Ttl") {
                self.ttl = dict["Ttl"] as! Int64
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var records: [ListRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if dict.keys.contains("Records") {
            var tmp : [ListRecordsResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = ListRecordsResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListScheduledPreloadExecutionsRequest : Tea.TeaModel {
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

public class ListScheduledPreloadExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public var aliUid: String?

        public var endTime: String?

        public var id: String?

        public var interval: Int32?

        public var jobId: String?

        public var sliceLen: Int32?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.sliceLen != nil {
                map["SliceLen"] = self.sliceLen!
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("SliceLen") {
                self.sliceLen = dict["SliceLen"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var executions: [ListScheduledPreloadExecutionsResponseBody.Executions]?

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
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
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
        if dict.keys.contains("Executions") {
            var tmp : [ListScheduledPreloadExecutionsResponseBody.Executions] = []
            for v in dict["Executions"] as! [Any] {
                var model = ListScheduledPreloadExecutionsResponseBody.Executions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListScheduledPreloadExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledPreloadExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListScheduledPreloadExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListScheduledPreloadJobsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var siteId: Int64?

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
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListScheduledPreloadJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var aliUid: String?

        public var createdAt: String?

        public var domains: String?

        public var errorInfo: String?

        public var failedFileOss: String?

        public var fileId: String?

        public var id: String?

        public var insertWay: String?

        public var name: String?

        public var siteId: Int64?

        public var taskSubmitted: Int32?

        public var taskType: String?

        public var urlCount: Int32?

        public var urlSubmitted: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            if self.failedFileOss != nil {
                map["FailedFileOss"] = self.failedFileOss!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.insertWay != nil {
                map["InsertWay"] = self.insertWay!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.taskSubmitted != nil {
                map["TaskSubmitted"] = self.taskSubmitted!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.urlCount != nil {
                map["UrlCount"] = self.urlCount!
            }
            if self.urlSubmitted != nil {
                map["UrlSubmitted"] = self.urlSubmitted!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! String
            }
            if dict.keys.contains("ErrorInfo") {
                self.errorInfo = dict["ErrorInfo"] as! String
            }
            if dict.keys.contains("FailedFileOss") {
                self.failedFileOss = dict["FailedFileOss"] as! String
            }
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InsertWay") {
                self.insertWay = dict["InsertWay"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("TaskSubmitted") {
                self.taskSubmitted = dict["TaskSubmitted"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UrlCount") {
                self.urlCount = dict["UrlCount"] as! Int32
            }
            if dict.keys.contains("UrlSubmitted") {
                self.urlSubmitted = dict["UrlSubmitted"] as! Int32
            }
        }
    }
    public var jobs: [ListScheduledPreloadJobsResponseBody.Jobs]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
            var tmp : [ListScheduledPreloadJobsResponseBody.Jobs] = []
            for v in dict["Jobs"] as! [Any] {
                var model = ListScheduledPreloadJobsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListScheduledPreloadJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledPreloadJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListScheduledPreloadJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSiteDeliveryTasksRequest : Tea.TeaModel {
    public var businessType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListSiteDeliveryTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var businessType: String?

        public var dataCenter: String?

        public var deliveryType: String?

        public var status: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.dataCenter != nil {
                map["DataCenter"] = self.dataCenter!
            }
            if self.deliveryType != nil {
                map["DeliveryType"] = self.deliveryType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("DataCenter") {
                self.dataCenter = dict["DataCenter"] as! String
            }
            if dict.keys.contains("DeliveryType") {
                self.deliveryType = dict["DeliveryType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListSiteDeliveryTasksResponseBody.Tasks]?

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
            var tmp : [ListSiteDeliveryTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListSiteDeliveryTasksResponseBody.Tasks()
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

public class ListSiteDeliveryTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSiteDeliveryTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSiteDeliveryTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSitesRequest : Tea.TeaModel {
    public class TagFilter : Tea.TeaModel {
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
    public var accessType: String?

    public var coverage: String?

    public var onlyEnterprise: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planSubscribeType: String?

    public var resourceGroupId: String?

    public var siteName: String?

    public var siteSearchType: String?

    public var status: String?

    public var tagFilter: [ListSitesRequest.TagFilter]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.coverage != nil {
            map["Coverage"] = self.coverage!
        }
        if self.onlyEnterprise != nil {
            map["OnlyEnterprise"] = self.onlyEnterprise!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planSubscribeType != nil {
            map["PlanSubscribeType"] = self.planSubscribeType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        if self.siteSearchType != nil {
            map["SiteSearchType"] = self.siteSearchType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagFilter != nil {
            var tmp : [Any] = []
            for k in self.tagFilter! {
                tmp.append(k.toMap())
            }
            map["TagFilter"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Coverage") {
            self.coverage = dict["Coverage"] as! String
        }
        if dict.keys.contains("OnlyEnterprise") {
            self.onlyEnterprise = dict["OnlyEnterprise"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanSubscribeType") {
            self.planSubscribeType = dict["PlanSubscribeType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
        if dict.keys.contains("SiteSearchType") {
            self.siteSearchType = dict["SiteSearchType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagFilter") {
            var tmp : [ListSitesRequest.TagFilter] = []
            for v in dict["TagFilter"] as! [Any] {
                var model = ListSitesRequest.TagFilter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagFilter = tmp
        }
    }
}

public class ListSitesShrinkRequest : Tea.TeaModel {
    public var accessType: String?

    public var coverage: String?

    public var onlyEnterprise: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planSubscribeType: String?

    public var resourceGroupId: String?

    public var siteName: String?

    public var siteSearchType: String?

    public var status: String?

    public var tagFilterShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.coverage != nil {
            map["Coverage"] = self.coverage!
        }
        if self.onlyEnterprise != nil {
            map["OnlyEnterprise"] = self.onlyEnterprise!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planSubscribeType != nil {
            map["PlanSubscribeType"] = self.planSubscribeType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        if self.siteSearchType != nil {
            map["SiteSearchType"] = self.siteSearchType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagFilterShrink != nil {
            map["TagFilter"] = self.tagFilterShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Coverage") {
            self.coverage = dict["Coverage"] as! String
        }
        if dict.keys.contains("OnlyEnterprise") {
            self.onlyEnterprise = dict["OnlyEnterprise"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanSubscribeType") {
            self.planSubscribeType = dict["PlanSubscribeType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
        if dict.keys.contains("SiteSearchType") {
            self.siteSearchType = dict["SiteSearchType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagFilter") {
            self.tagFilterShrink = dict["TagFilter"] as! String
        }
    }
}

public class ListSitesResponseBody : Tea.TeaModel {
    public class Sites : Tea.TeaModel {
        public var accessType: String?

        public var cnameZone: String?

        public var coverage: String?

        public var createTime: String?

        public var instanceId: String?

        public var nameServerList: String?

        public var planName: String?

        public var planSpecName: String?

        public var resourceGroupId: String?

        public var siteId: Int64?

        public var siteName: String?

        public var status: String?

        public var tags: [String: Any]?

        public var updateTime: String?

        public var verifyCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.cnameZone != nil {
                map["CnameZone"] = self.cnameZone!
            }
            if self.coverage != nil {
                map["Coverage"] = self.coverage!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.nameServerList != nil {
                map["NameServerList"] = self.nameServerList!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planSpecName != nil {
                map["PlanSpecName"] = self.planSpecName!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.verifyCode != nil {
                map["VerifyCode"] = self.verifyCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("CnameZone") {
                self.cnameZone = dict["CnameZone"] as! String
            }
            if dict.keys.contains("Coverage") {
                self.coverage = dict["Coverage"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NameServerList") {
                self.nameServerList = dict["NameServerList"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanSpecName") {
                self.planSpecName = dict["PlanSpecName"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! Int64
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VerifyCode") {
                self.verifyCode = dict["VerifyCode"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var sites: [ListSitesResponseBody.Sites]?

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
        if self.sites != nil {
            var tmp : [Any] = []
            for k in self.sites! {
                tmp.append(k.toMap())
            }
            map["Sites"] = tmp
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
        if dict.keys.contains("Sites") {
            var tmp : [ListSitesResponseBody.Sites] = []
            for v in dict["Sites"] as! [Any] {
                var model = ListSitesResponseBody.Sites()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sites = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSitesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSitesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSitesResponseBody()
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
    public var maxItem: Int32?

    public var nextToken: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var securityToken: String?

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
        if self.maxItem != nil {
            map["MaxItem"] = self.maxItem!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if dict.keys.contains("MaxItem") {
            self.maxItem = dict["MaxItem"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
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
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

public class ListUploadTasksRequest : Tea.TeaModel {
    public var endTime: String?

    public var siteId: Int64?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListUploadTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var errorCode: String?

        public var status: String?

        public var type: String?

        public var uploadId: String?

        public var uploadTaskName: String?

        public override init() {
            super.init()
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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uploadId != nil {
                map["UploadId"] = self.uploadId!
            }
            if self.uploadTaskName != nil {
                map["UploadTaskName"] = self.uploadTaskName!
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UploadId") {
                self.uploadId = dict["UploadId"] as! String
            }
            if dict.keys.contains("UploadTaskName") {
                self.uploadTaskName = dict["UploadTaskName"] as! String
            }
        }
    }
    public var requestId: String?

    public var tasks: [ListUploadTasksResponseBody.Tasks]?

    public override init() {
        super.init()
    }

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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ListUploadTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListUploadTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class ListUploadTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUploadTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUploadTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserDeliveryTasksRequest : Tea.TeaModel {
    public var businessType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
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
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListUserDeliveryTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var businessType: String?

        public var dataCenter: String?

        public var deliveryType: String?

        public var status: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.dataCenter != nil {
                map["DataCenter"] = self.dataCenter!
            }
            if self.deliveryType != nil {
                map["DeliveryType"] = self.deliveryType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("DataCenter") {
                self.dataCenter = dict["DataCenter"] as! String
            }
            if dict.keys.contains("DeliveryType") {
                self.deliveryType = dict["DeliveryType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListUserDeliveryTasksResponseBody.Tasks]?

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
            var tmp : [ListUserDeliveryTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListUserDeliveryTasksResponseBody.Tasks()
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

public class ListUserDeliveryTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserDeliveryTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserDeliveryTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserRatePlanInstancesRequest : Tea.TeaModel {
    public var checkRemainingSiteQuota: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

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
        if self.checkRemainingSiteQuota != nil {
            map["CheckRemainingSiteQuota"] = self.checkRemainingSiteQuota!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckRemainingSiteQuota") {
            self.checkRemainingSiteQuota = dict["CheckRemainingSiteQuota"] as! String
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
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListUserRatePlanInstancesResponseBody : Tea.TeaModel {
    public class InstanceInfo : Tea.TeaModel {
        public class Sites : Tea.TeaModel {
            public var siteId: Int64?

            public var siteName: String?

            public var siteStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.siteId != nil {
                    map["SiteId"] = self.siteId!
                }
                if self.siteName != nil {
                    map["SiteName"] = self.siteName!
                }
                if self.siteStatus != nil {
                    map["SiteStatus"] = self.siteStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SiteId") {
                    self.siteId = dict["SiteId"] as! Int64
                }
                if dict.keys.contains("SiteName") {
                    self.siteName = dict["SiteName"] as! String
                }
                if dict.keys.contains("SiteStatus") {
                    self.siteStatus = dict["SiteStatus"] as! String
                }
            }
        }
        public var billingMode: String?

        public var coverages: String?

        public var createTime: String?

        public var duration: Int32?

        public var expireTime: String?

        public var instanceId: String?

        public var planName: String?

        public var planType: String?

        public var siteQuota: String?

        public var sites: [ListUserRatePlanInstancesResponseBody.InstanceInfo.Sites]?

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
            if self.billingMode != nil {
                map["BillingMode"] = self.billingMode!
            }
            if self.coverages != nil {
                map["Coverages"] = self.coverages!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.siteQuota != nil {
                map["SiteQuota"] = self.siteQuota!
            }
            if self.sites != nil {
                var tmp : [Any] = []
                for k in self.sites! {
                    tmp.append(k.toMap())
                }
                map["Sites"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingMode") {
                self.billingMode = dict["BillingMode"] as! String
            }
            if dict.keys.contains("Coverages") {
                self.coverages = dict["Coverages"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanType") {
                self.planType = dict["PlanType"] as! String
            }
            if dict.keys.contains("SiteQuota") {
                self.siteQuota = dict["SiteQuota"] as! String
            }
            if dict.keys.contains("Sites") {
                var tmp : [ListUserRatePlanInstancesResponseBody.InstanceInfo.Sites] = []
                for v in dict["Sites"] as! [Any] {
                    var model = ListUserRatePlanInstancesResponseBody.InstanceInfo.Sites()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sites = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instanceInfo: [ListUserRatePlanInstancesResponseBody.InstanceInfo]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceInfo") {
            var tmp : [ListUserRatePlanInstancesResponseBody.InstanceInfo] = []
            for v in dict["InstanceInfo"] as! [Any] {
                var model = ListUserRatePlanInstancesResponseBody.InstanceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceInfo = tmp
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
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class ListUserRatePlanInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserRatePlanInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserRatePlanInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafManagedRulesRequest : Tea.TeaModel {
    public class QueryArgs : Tea.TeaModel {
        public var action: String?

        public var idNameLike: String?

        public var protectionLevel: Int32?

        public var protectionLevels: [Int32]?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.idNameLike != nil {
                map["IdNameLike"] = self.idNameLike!
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
            }
            if self.protectionLevels != nil {
                map["ProtectionLevels"] = self.protectionLevels!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("IdNameLike") {
                self.idNameLike = dict["IdNameLike"] as! String
            }
            if dict.keys.contains("ProtectionLevel") {
                self.protectionLevel = dict["ProtectionLevel"] as! Int32
            }
            if dict.keys.contains("ProtectionLevels") {
                self.protectionLevels = dict["ProtectionLevels"] as! [Int32]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var attackType: Int32?

    public var id: Int64?

    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryArgs: ListWafManagedRulesRequest.QueryArgs?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryArgs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackType != nil {
            map["AttackType"] = self.attackType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryArgs != nil {
            map["QueryArgs"] = self.queryArgs?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackType") {
            self.attackType = dict["AttackType"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryArgs") {
            var model = ListWafManagedRulesRequest.QueryArgs()
            model.fromMap(dict["QueryArgs"] as! [String: Any])
            self.queryArgs = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListWafManagedRulesShrinkRequest : Tea.TeaModel {
    public var attackType: Int32?

    public var id: Int64?

    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryArgsShrink: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackType != nil {
            map["AttackType"] = self.attackType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryArgsShrink != nil {
            map["QueryArgs"] = self.queryArgsShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackType") {
            self.attackType = dict["AttackType"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryArgs") {
            self.queryArgsShrink = dict["QueryArgs"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListWafManagedRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var action: String?

        public var id: Int64?

        public var name: String?

        public var protectionLevel: Int32?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProtectionLevel") {
                self.protectionLevel = dict["ProtectionLevel"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rules: [ListWafManagedRulesResponseBody.Rules]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
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
        if dict.keys.contains("Rules") {
            var tmp : [ListWafManagedRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ListWafManagedRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListWafManagedRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafManagedRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafManagedRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafPhasesRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class ListWafPhasesResponseBody : Tea.TeaModel {
    public class Phases : Tea.TeaModel {
        public class Rulesets : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public var rules: [WafRuleConfig]?

            public var shared: WafBatchRuleShared?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.shared?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                if self.shared != nil {
                    map["Shared"] = self.shared?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Rules") {
                    var tmp : [WafRuleConfig] = []
                    for v in dict["Rules"] as! [Any] {
                        var model = WafRuleConfig()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.rules = tmp
                }
                if dict.keys.contains("Shared") {
                    var model = WafBatchRuleShared()
                    model.fromMap(dict["Shared"] as! [String: Any])
                    self.shared = model
                }
            }
        }
        public var phase: String?

        public var rulesets: [ListWafPhasesResponseBody.Phases.Rulesets]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            if self.rulesets != nil {
                var tmp : [Any] = []
                for k in self.rulesets! {
                    tmp.append(k.toMap())
                }
                map["Rulesets"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
            if dict.keys.contains("Rulesets") {
                var tmp : [ListWafPhasesResponseBody.Phases.Rulesets] = []
                for v in dict["Rulesets"] as! [Any] {
                    var model = ListWafPhasesResponseBody.Phases.Rulesets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rulesets = tmp
            }
        }
    }
    public var phases: [ListWafPhasesResponseBody.Phases]?

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
        if self.phases != nil {
            var tmp : [Any] = []
            for k in self.phases! {
                tmp.append(k.toMap())
            }
            map["Phases"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Phases") {
            var tmp : [ListWafPhasesResponseBody.Phases] = []
            for v in dict["Phases"] as! [Any] {
                var model = ListWafPhasesResponseBody.Phases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.phases = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListWafPhasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafPhasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafPhasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafRulesRequest : Tea.TeaModel {
    public class QueryArgs : Tea.TeaModel {
        public var desc: Bool?

        public var id: Int64?

        public var idNameLike: String?

        public var nameLike: String?

        public var orderBy: String?

        public var rulesetId: Int64?

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
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idNameLike != nil {
                map["IdNameLike"] = self.idNameLike!
            }
            if self.nameLike != nil {
                map["NameLike"] = self.nameLike!
            }
            if self.orderBy != nil {
                map["OrderBy"] = self.orderBy!
            }
            if self.rulesetId != nil {
                map["RulesetId"] = self.rulesetId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IdNameLike") {
                self.idNameLike = dict["IdNameLike"] as! String
            }
            if dict.keys.contains("NameLike") {
                self.nameLike = dict["NameLike"] as! String
            }
            if dict.keys.contains("OrderBy") {
                self.orderBy = dict["OrderBy"] as! String
            }
            if dict.keys.contains("RulesetId") {
                self.rulesetId = dict["RulesetId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var phase: String?

    public var queryArgs: ListWafRulesRequest.QueryArgs?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryArgs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgs != nil {
            map["QueryArgs"] = self.queryArgs?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
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
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            var model = ListWafRulesRequest.QueryArgs()
            model.fromMap(dict["QueryArgs"] as! [String: Any])
            self.queryArgs = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class ListWafRulesShrinkRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var phase: String?

    public var queryArgsShrink: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
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
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgsShrink != nil {
            map["QueryArgs"] = self.queryArgsShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
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
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            self.queryArgsShrink = dict["QueryArgs"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class ListWafRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var action: String?

        public var characteristicsFields: [String]?

        public var config: WafRuleConfig?

        public var fields: [String]?

        public var id: Int64?

        public var name: String?

        public var phase: String?

        public var position: Int64?

        public var rulesetId: Int64?

        public var skip: String?

        public var status: String?

        public var tags: [String]?

        public var timer: WafTimer?

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
            try self.config?.validate()
            try self.timer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.characteristicsFields != nil {
                map["CharacteristicsFields"] = self.characteristicsFields!
            }
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.fields != nil {
                map["Fields"] = self.fields!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            if self.rulesetId != nil {
                map["RulesetId"] = self.rulesetId!
            }
            if self.skip != nil {
                map["Skip"] = self.skip!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.timer != nil {
                map["Timer"] = self.timer?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("CharacteristicsFields") {
                self.characteristicsFields = dict["CharacteristicsFields"] as! [String]
            }
            if dict.keys.contains("Config") {
                var model = WafRuleConfig()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("Fields") {
                self.fields = dict["Fields"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
            if dict.keys.contains("Position") {
                self.position = dict["Position"] as! Int64
            }
            if dict.keys.contains("RulesetId") {
                self.rulesetId = dict["RulesetId"] as! Int64
            }
            if dict.keys.contains("Skip") {
                self.skip = dict["Skip"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String]
            }
            if dict.keys.contains("Timer") {
                var model = WafTimer()
                model.fromMap(dict["Timer"] as! [String: Any])
                self.timer = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var instanceUsage: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rules: [ListWafRulesResponseBody.Rules]?

    public var siteUsage: Int64?

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
        if self.instanceUsage != nil {
            map["InstanceUsage"] = self.instanceUsage!
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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.siteUsage != nil {
            map["SiteUsage"] = self.siteUsage!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceUsage") {
            self.instanceUsage = dict["InstanceUsage"] as! Int64
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
        if dict.keys.contains("Rules") {
            var tmp : [ListWafRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ListWafRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("SiteUsage") {
            self.siteUsage = dict["SiteUsage"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListWafRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafRulesetsRequest : Tea.TeaModel {
    public class QueryArgs : Tea.TeaModel {
        public var anyLike: String?

        public var desc: Bool?

        public var nameLike: String?

        public var orderBy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anyLike != nil {
                map["AnyLike"] = self.anyLike!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.nameLike != nil {
                map["NameLike"] = self.nameLike!
            }
            if self.orderBy != nil {
                map["OrderBy"] = self.orderBy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnyLike") {
                self.anyLike = dict["AnyLike"] as! String
            }
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! Bool
            }
            if dict.keys.contains("NameLike") {
                self.nameLike = dict["NameLike"] as! String
            }
            if dict.keys.contains("OrderBy") {
                self.orderBy = dict["OrderBy"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var phase: String?

    public var queryArgs: ListWafRulesetsRequest.QueryArgs?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryArgs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgs != nil {
            map["QueryArgs"] = self.queryArgs?.toMap()
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
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
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            var model = ListWafRulesetsRequest.QueryArgs()
            model.fromMap(dict["QueryArgs"] as! [String: Any])
            self.queryArgs = model
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class ListWafRulesetsShrinkRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var phase: String?

    public var queryArgsShrink: String?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public override init() {
        super.init()
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
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgsShrink != nil {
            map["QueryArgs"] = self.queryArgsShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
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
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            self.queryArgsShrink = dict["QueryArgs"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
    }
}

public class ListWafRulesetsResponseBody : Tea.TeaModel {
    public class Rulesets : Tea.TeaModel {
        public var fields: [String]?

        public var id: Int64?

        public var name: String?

        public var phase: String?

        public var status: String?

        public var target: String?

        public var types: [String]?

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
            if self.fields != nil {
                map["Fields"] = self.fields!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.types != nil {
                map["Types"] = self.types!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fields") {
                self.fields = dict["Fields"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("Types") {
                self.types = dict["Types"] as! [String]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var instanceUsage: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rulesets: [ListWafRulesetsResponseBody.Rulesets]?

    public var siteUsage: Int64?

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
        if self.instanceUsage != nil {
            map["InstanceUsage"] = self.instanceUsage!
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
        if self.rulesets != nil {
            var tmp : [Any] = []
            for k in self.rulesets! {
                tmp.append(k.toMap())
            }
            map["Rulesets"] = tmp
        }
        if self.siteUsage != nil {
            map["SiteUsage"] = self.siteUsage!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceUsage") {
            self.instanceUsage = dict["InstanceUsage"] as! Int64
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
        if dict.keys.contains("Rulesets") {
            var tmp : [ListWafRulesetsResponseBody.Rulesets] = []
            for v in dict["Rulesets"] as! [Any] {
                var model = ListWafRulesetsResponseBody.Rulesets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rulesets = tmp
        }
        if dict.keys.contains("SiteUsage") {
            self.siteUsage = dict["SiteUsage"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListWafRulesetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafRulesetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafRulesetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafTemplateRulesRequest : Tea.TeaModel {
    public class QueryArgs : Tea.TeaModel {
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var phase: String?

    public var queryArgs: ListWafTemplateRulesRequest.QueryArgs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryArgs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgs != nil {
            map["QueryArgs"] = self.queryArgs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            var model = ListWafTemplateRulesRequest.QueryArgs()
            model.fromMap(dict["QueryArgs"] as! [String: Any])
            self.queryArgs = model
        }
    }
}

public class ListWafTemplateRulesShrinkRequest : Tea.TeaModel {
    public var phase: String?

    public var queryArgsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.queryArgsShrink != nil {
            map["QueryArgs"] = self.queryArgsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("QueryArgs") {
            self.queryArgsShrink = dict["QueryArgs"] as! String
        }
    }
}

public class ListWafTemplateRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var config: WafRuleConfig?

        public var name: String?

        public var phase: String?

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
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                var model = WafRuleConfig()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var rules: [ListWafTemplateRulesResponseBody.Rules]?

    public override init() {
        super.init()
    }

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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [ListWafTemplateRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ListWafTemplateRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
    }
}

public class ListWafTemplateRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafTemplateRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafTemplateRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWafUsageOfRulesRequest : Tea.TeaModel {
    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class ListWafUsageOfRulesResponseBody : Tea.TeaModel {
    public class Sites : Tea.TeaModel {
        public var id: Int64?

        public var name: String?

        public var usage: Int64?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Usage") {
                self.usage = dict["Usage"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var sites: [ListWafUsageOfRulesResponseBody.Sites]?

    public override init() {
        super.init()
    }

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
        if self.sites != nil {
            var tmp : [Any] = []
            for k in self.sites! {
                tmp.append(k.toMap())
            }
            map["Sites"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sites") {
            var tmp : [ListWafUsageOfRulesResponseBody.Sites] = []
            for v in dict["Sites"] as! [Any] {
                var model = ListWafUsageOfRulesResponseBody.Sites()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sites = tmp
        }
    }
}

public class ListWafUsageOfRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWafUsageOfRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWafUsageOfRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWaitingRoomEventsRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var waitingRoomEventId: Int64?

    public var waitingRoomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomEventId != nil {
            map["WaitingRoomEventId"] = self.waitingRoomEventId!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomEventId") {
            self.waitingRoomEventId = dict["WaitingRoomEventId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
    }
}

public class ListWaitingRoomEventsResponseBody : Tea.TeaModel {
    public class WaitingRoomEvents : Tea.TeaModel {
        public var customPageHtml: String?

        public var description_: String?

        public var disableSessionRenewalEnable: String?

        public var enable: String?

        public var endTime: String?

        public var jsonResponseEnable: String?

        public var language: String?

        public var name: String?

        public var newUsersPerMinute: String?

        public var preQueueEnable: String?

        public var preQueueStartTime: String?

        public var queuingMethod: String?

        public var queuingStatusCode: String?

        public var randomPreQueueEnable: String?

        public var sessionDuration: String?

        public var startTime: String?

        public var totalActiveUsers: String?

        public var waitingRoomEventId: Int64?

        public var waitingRoomId: String?

        public var waitingRoomType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customPageHtml != nil {
                map["CustomPageHtml"] = self.customPageHtml!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.disableSessionRenewalEnable != nil {
                map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.jsonResponseEnable != nil {
                map["JsonResponseEnable"] = self.jsonResponseEnable!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newUsersPerMinute != nil {
                map["NewUsersPerMinute"] = self.newUsersPerMinute!
            }
            if self.preQueueEnable != nil {
                map["PreQueueEnable"] = self.preQueueEnable!
            }
            if self.preQueueStartTime != nil {
                map["PreQueueStartTime"] = self.preQueueStartTime!
            }
            if self.queuingMethod != nil {
                map["QueuingMethod"] = self.queuingMethod!
            }
            if self.queuingStatusCode != nil {
                map["QueuingStatusCode"] = self.queuingStatusCode!
            }
            if self.randomPreQueueEnable != nil {
                map["RandomPreQueueEnable"] = self.randomPreQueueEnable!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.totalActiveUsers != nil {
                map["TotalActiveUsers"] = self.totalActiveUsers!
            }
            if self.waitingRoomEventId != nil {
                map["WaitingRoomEventId"] = self.waitingRoomEventId!
            }
            if self.waitingRoomId != nil {
                map["WaitingRoomId"] = self.waitingRoomId!
            }
            if self.waitingRoomType != nil {
                map["WaitingRoomType"] = self.waitingRoomType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomPageHtml") {
                self.customPageHtml = dict["CustomPageHtml"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisableSessionRenewalEnable") {
                self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("JsonResponseEnable") {
                self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewUsersPerMinute") {
                self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
            }
            if dict.keys.contains("PreQueueEnable") {
                self.preQueueEnable = dict["PreQueueEnable"] as! String
            }
            if dict.keys.contains("PreQueueStartTime") {
                self.preQueueStartTime = dict["PreQueueStartTime"] as! String
            }
            if dict.keys.contains("QueuingMethod") {
                self.queuingMethod = dict["QueuingMethod"] as! String
            }
            if dict.keys.contains("QueuingStatusCode") {
                self.queuingStatusCode = dict["QueuingStatusCode"] as! String
            }
            if dict.keys.contains("RandomPreQueueEnable") {
                self.randomPreQueueEnable = dict["RandomPreQueueEnable"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TotalActiveUsers") {
                self.totalActiveUsers = dict["TotalActiveUsers"] as! String
            }
            if dict.keys.contains("WaitingRoomEventId") {
                self.waitingRoomEventId = dict["WaitingRoomEventId"] as! Int64
            }
            if dict.keys.contains("WaitingRoomId") {
                self.waitingRoomId = dict["WaitingRoomId"] as! String
            }
            if dict.keys.contains("WaitingRoomType") {
                self.waitingRoomType = dict["WaitingRoomType"] as! String
            }
        }
    }
    public var requestId: String?

    public var waitingRoomEvents: [ListWaitingRoomEventsResponseBody.WaitingRoomEvents]?

    public override init() {
        super.init()
    }

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
        if self.waitingRoomEvents != nil {
            var tmp : [Any] = []
            for k in self.waitingRoomEvents! {
                tmp.append(k.toMap())
            }
            map["WaitingRoomEvents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WaitingRoomEvents") {
            var tmp : [ListWaitingRoomEventsResponseBody.WaitingRoomEvents] = []
            for v in dict["WaitingRoomEvents"] as! [Any] {
                var model = ListWaitingRoomEventsResponseBody.WaitingRoomEvents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.waitingRoomEvents = tmp
        }
    }
}

public class ListWaitingRoomEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWaitingRoomEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWaitingRoomEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWaitingRoomRulesRequest : Tea.TeaModel {
    public var ruleName: String?

    public var siteId: Int64?

    public var waitingRoomId: String?

    public var waitingRoomRuleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        if self.waitingRoomRuleId != nil {
            map["WaitingRoomRuleId"] = self.waitingRoomRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
        if dict.keys.contains("WaitingRoomRuleId") {
            self.waitingRoomRuleId = dict["WaitingRoomRuleId"] as! Int64
        }
    }
}

public class ListWaitingRoomRulesResponseBody : Tea.TeaModel {
    public class WaitingRoomRules : Tea.TeaModel {
        public var rule: String?

        public var ruleEnable: String?

        public var ruleName: String?

        public var waitingRoomRuleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                map["Rule"] = self.rule!
            }
            if self.ruleEnable != nil {
                map["RuleEnable"] = self.ruleEnable!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.waitingRoomRuleId != nil {
                map["WaitingRoomRuleId"] = self.waitingRoomRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") {
                self.rule = dict["Rule"] as! String
            }
            if dict.keys.contains("RuleEnable") {
                self.ruleEnable = dict["RuleEnable"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("WaitingRoomRuleId") {
                self.waitingRoomRuleId = dict["WaitingRoomRuleId"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var waitingRoomRules: [ListWaitingRoomRulesResponseBody.WaitingRoomRules]?

    public override init() {
        super.init()
    }

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
        if self.waitingRoomRules != nil {
            var tmp : [Any] = []
            for k in self.waitingRoomRules! {
                tmp.append(k.toMap())
            }
            map["WaitingRoomRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WaitingRoomRules") {
            var tmp : [ListWaitingRoomRulesResponseBody.WaitingRoomRules] = []
            for v in dict["WaitingRoomRules"] as! [Any] {
                var model = ListWaitingRoomRulesResponseBody.WaitingRoomRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.waitingRoomRules = tmp
        }
    }
}

public class ListWaitingRoomRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWaitingRoomRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWaitingRoomRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWaitingRoomsRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var waitingRoomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
    }
}

public class ListWaitingRoomsResponseBody : Tea.TeaModel {
    public class WaitingRooms : Tea.TeaModel {
        public class HostNameAndPath : Tea.TeaModel {
            public var domain: String?

            public var path: String?

            public var subdomain: String?

            public override init() {
                super.init()
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
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.subdomain != nil {
                    map["Subdomain"] = self.subdomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Subdomain") {
                    self.subdomain = dict["Subdomain"] as! String
                }
            }
        }
        public var cookieName: String?

        public var customPageHtml: String?

        public var description_: String?

        public var disableSessionRenewalEnable: String?

        public var enable: String?

        public var hostNameAndPath: [ListWaitingRoomsResponseBody.WaitingRooms.HostNameAndPath]?

        public var jsonResponseEnable: String?

        public var language: String?

        public var name: String?

        public var newUsersPerMinute: String?

        public var queueAllEnable: String?

        public var queuingMethod: String?

        public var queuingStatusCode: String?

        public var sessionDuration: String?

        public var totalActiveUsers: String?

        public var waitingRoomId: String?

        public var waitingRoomType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cookieName != nil {
                map["CookieName"] = self.cookieName!
            }
            if self.customPageHtml != nil {
                map["CustomPageHtml"] = self.customPageHtml!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.disableSessionRenewalEnable != nil {
                map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.hostNameAndPath != nil {
                var tmp : [Any] = []
                for k in self.hostNameAndPath! {
                    tmp.append(k.toMap())
                }
                map["HostNameAndPath"] = tmp
            }
            if self.jsonResponseEnable != nil {
                map["JsonResponseEnable"] = self.jsonResponseEnable!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newUsersPerMinute != nil {
                map["NewUsersPerMinute"] = self.newUsersPerMinute!
            }
            if self.queueAllEnable != nil {
                map["QueueAllEnable"] = self.queueAllEnable!
            }
            if self.queuingMethod != nil {
                map["QueuingMethod"] = self.queuingMethod!
            }
            if self.queuingStatusCode != nil {
                map["QueuingStatusCode"] = self.queuingStatusCode!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.totalActiveUsers != nil {
                map["TotalActiveUsers"] = self.totalActiveUsers!
            }
            if self.waitingRoomId != nil {
                map["WaitingRoomId"] = self.waitingRoomId!
            }
            if self.waitingRoomType != nil {
                map["WaitingRoomType"] = self.waitingRoomType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CookieName") {
                self.cookieName = dict["CookieName"] as! String
            }
            if dict.keys.contains("CustomPageHtml") {
                self.customPageHtml = dict["CustomPageHtml"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisableSessionRenewalEnable") {
                self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! String
            }
            if dict.keys.contains("HostNameAndPath") {
                var tmp : [ListWaitingRoomsResponseBody.WaitingRooms.HostNameAndPath] = []
                for v in dict["HostNameAndPath"] as! [Any] {
                    var model = ListWaitingRoomsResponseBody.WaitingRooms.HostNameAndPath()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostNameAndPath = tmp
            }
            if dict.keys.contains("JsonResponseEnable") {
                self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewUsersPerMinute") {
                self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
            }
            if dict.keys.contains("QueueAllEnable") {
                self.queueAllEnable = dict["QueueAllEnable"] as! String
            }
            if dict.keys.contains("QueuingMethod") {
                self.queuingMethod = dict["QueuingMethod"] as! String
            }
            if dict.keys.contains("QueuingStatusCode") {
                self.queuingStatusCode = dict["QueuingStatusCode"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! String
            }
            if dict.keys.contains("TotalActiveUsers") {
                self.totalActiveUsers = dict["TotalActiveUsers"] as! String
            }
            if dict.keys.contains("WaitingRoomId") {
                self.waitingRoomId = dict["WaitingRoomId"] as! String
            }
            if dict.keys.contains("WaitingRoomType") {
                self.waitingRoomType = dict["WaitingRoomType"] as! String
            }
        }
    }
    public var requestId: String?

    public var waitingRooms: [ListWaitingRoomsResponseBody.WaitingRooms]?

    public override init() {
        super.init()
    }

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
        if self.waitingRooms != nil {
            var tmp : [Any] = []
            for k in self.waitingRooms! {
                tmp.append(k.toMap())
            }
            map["WaitingRooms"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WaitingRooms") {
            var tmp : [ListWaitingRoomsResponseBody.WaitingRooms] = []
            for v in dict["WaitingRooms"] as! [Any] {
                var model = ListWaitingRoomsResponseBody.WaitingRooms()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.waitingRooms = tmp
        }
    }
}

public class ListWaitingRoomsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWaitingRoomsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWaitingRoomsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreloadCachesRequest : Tea.TeaModel {
    public var content: [String]?

    public var headers: [String: String]?

    public var siteId: Int64?

    public override init() {
        super.init()
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
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! [String]
        }
        if dict.keys.contains("Headers") {
            self.headers = dict["Headers"] as! [String: String]
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class PreloadCachesShrinkRequest : Tea.TeaModel {
    public var contentShrink: String?

    public var headersShrink: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.headersShrink != nil {
            map["Headers"] = self.headersShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("Headers") {
            self.headersShrink = dict["Headers"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class PreloadCachesResponseBody : Tea.TeaModel {
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

public class PreloadCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreloadCachesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PreloadCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PurgeCachesRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var cacheTags: [String]?

        public var directories: [String]?

        public var files: [Any]?

        public var hostnames: [String]?

        public var ignoreParams: [String]?

        public var purgeAll: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cacheTags != nil {
                map["CacheTags"] = self.cacheTags!
            }
            if self.directories != nil {
                map["Directories"] = self.directories!
            }
            if self.files != nil {
                map["Files"] = self.files!
            }
            if self.hostnames != nil {
                map["Hostnames"] = self.hostnames!
            }
            if self.ignoreParams != nil {
                map["IgnoreParams"] = self.ignoreParams!
            }
            if self.purgeAll != nil {
                map["PurgeAll"] = self.purgeAll!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheTags") {
                self.cacheTags = dict["CacheTags"] as! [String]
            }
            if dict.keys.contains("Directories") {
                self.directories = dict["Directories"] as! [String]
            }
            if dict.keys.contains("Files") {
                self.files = dict["Files"] as! [Any]
            }
            if dict.keys.contains("Hostnames") {
                self.hostnames = dict["Hostnames"] as! [String]
            }
            if dict.keys.contains("IgnoreParams") {
                self.ignoreParams = dict["IgnoreParams"] as! [String]
            }
            if dict.keys.contains("PurgeAll") {
                self.purgeAll = dict["PurgeAll"] as! Bool
            }
        }
    }
    public var content: PurgeCachesRequest.Content?

    public var edgeComputePurge: Bool?

    public var force: Bool?

    public var siteId: Int64?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.edgeComputePurge != nil {
            map["EdgeComputePurge"] = self.edgeComputePurge!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            var model = PurgeCachesRequest.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("EdgeComputePurge") {
            self.edgeComputePurge = dict["EdgeComputePurge"] as! Bool
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class PurgeCachesShrinkRequest : Tea.TeaModel {
    public var contentShrink: String?

    public var edgeComputePurge: Bool?

    public var force: Bool?

    public var siteId: Int64?

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
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.edgeComputePurge != nil {
            map["EdgeComputePurge"] = self.edgeComputePurge!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("EdgeComputePurge") {
            self.edgeComputePurge = dict["EdgeComputePurge"] as! Bool
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class PurgeCachesResponseBody : Tea.TeaModel {
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

public class PurgeCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurgeCachesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PurgeCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutKvRequest : Tea.TeaModel {
    public var base64: Bool?

    public var expiration: Int64?

    public var expirationTtl: Int64?

    public var key: String?

    public var namespace: String?

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
        if self.base64 != nil {
            map["Base64"] = self.base64!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.expirationTtl != nil {
            map["ExpirationTtl"] = self.expirationTtl!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Base64") {
            self.base64 = dict["Base64"] as! Bool
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! Int64
        }
        if dict.keys.contains("ExpirationTtl") {
            self.expirationTtl = dict["ExpirationTtl"] as! Int64
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class PutKvResponseBody : Tea.TeaModel {
    public var length: String?

    public var requestId: String?

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
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class PutKvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutKvResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PutKvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutKvWithHighCapacityRequest : Tea.TeaModel {
    public var key: String?

    public var namespace: String?

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
            map["Key"] = self.key!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class PutKvWithHighCapacityAdvanceRequest : Tea.TeaModel {
    public var key: String?

    public var namespace: String?

    public var urlObject: InputStream?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Url") {
            self.urlObject = dict["Url"] as! InputStream
        }
    }
}

public class PutKvWithHighCapacityResponseBody : Tea.TeaModel {
    public var length: String?

    public var requestId: String?

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
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class PutKvWithHighCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutKvWithHighCapacityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PutKvWithHighCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetScheduledPreloadJobRequest : Tea.TeaModel {
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

public class ResetScheduledPreloadJobResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var createdAt: String?

    public var domains: String?

    public var errorInfo: String?

    public var failedFileOss: String?

    public var fileId: String?

    public var id: String?

    public var insertWay: String?

    public var name: String?

    public var requestId: String?

    public var siteId: Int64?

    public var taskSubmitted: Int32?

    public var taskType: String?

    public var urlCount: Int32?

    public var urlSubmitted: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.errorInfo != nil {
            map["ErrorInfo"] = self.errorInfo!
        }
        if self.failedFileOss != nil {
            map["FailedFileOss"] = self.failedFileOss!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.insertWay != nil {
            map["InsertWay"] = self.insertWay!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskSubmitted != nil {
            map["TaskSubmitted"] = self.taskSubmitted!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.urlCount != nil {
            map["UrlCount"] = self.urlCount!
        }
        if self.urlSubmitted != nil {
            map["UrlSubmitted"] = self.urlSubmitted!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("CreatedAt") {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! String
        }
        if dict.keys.contains("ErrorInfo") {
            self.errorInfo = dict["ErrorInfo"] as! String
        }
        if dict.keys.contains("FailedFileOss") {
            self.failedFileOss = dict["FailedFileOss"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InsertWay") {
            self.insertWay = dict["InsertWay"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskSubmitted") {
            self.taskSubmitted = dict["TaskSubmitted"] as! Int32
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UrlCount") {
            self.urlCount = dict["UrlCount"] as! Int32
        }
        if dict.keys.contains("UrlSubmitted") {
            self.urlSubmitted = dict["UrlSubmitted"] as! Int32
        }
    }
}

public class ResetScheduledPreloadJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetScheduledPreloadJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetScheduledPreloadJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCertificateRequest : Tea.TeaModel {
    public var casId: Int64?

    public var certificate: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var privateKey: String?

    public var region: String?

    public var securityToken: String?

    public var siteId: Int64?

    public var type: String?

    public var update: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.casId != nil {
            map["CasId"] = self.casId!
        }
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.update != nil {
            map["Update"] = self.update!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CasId") {
            self.casId = dict["CasId"] as! Int64
        }
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Update") {
            self.update = dict["Update"] as! Bool
        }
    }
}

public class SetCertificateResponseBody : Tea.TeaModel {
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

public class SetCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetHttpDDoSAttackIntelligentProtectionRequest : Tea.TeaModel {
    public var aiMode: String?

    public var aiTemplate: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiMode != nil {
            map["AiMode"] = self.aiMode!
        }
        if self.aiTemplate != nil {
            map["AiTemplate"] = self.aiTemplate!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiMode") {
            self.aiMode = dict["AiMode"] as! String
        }
        if dict.keys.contains("AiTemplate") {
            self.aiTemplate = dict["AiTemplate"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class SetHttpDDoSAttackIntelligentProtectionResponseBody : Tea.TeaModel {
    public var aiMode: String?

    public var aiTemplate: String?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiMode != nil {
            map["AiMode"] = self.aiMode!
        }
        if self.aiTemplate != nil {
            map["AiTemplate"] = self.aiTemplate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiMode") {
            self.aiMode = dict["AiMode"] as! String
        }
        if dict.keys.contains("AiTemplate") {
            self.aiTemplate = dict["AiTemplate"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class SetHttpDDoSAttackIntelligentProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetHttpDDoSAttackIntelligentProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetHttpDDoSAttackIntelligentProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetHttpDDoSAttackProtectionRequest : Tea.TeaModel {
    public var globalMode: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.globalMode != nil {
            map["GlobalMode"] = self.globalMode!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GlobalMode") {
            self.globalMode = dict["GlobalMode"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class SetHttpDDoSAttackProtectionResponseBody : Tea.TeaModel {
    public var globalMode: String?

    public var requestId: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.globalMode != nil {
            map["GlobalMode"] = self.globalMode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GlobalMode") {
            self.globalMode = dict["GlobalMode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class SetHttpDDoSAttackProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetHttpDDoSAttackProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetHttpDDoSAttackProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartScheduledPreloadExecutionRequest : Tea.TeaModel {
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

public class StartScheduledPreloadExecutionResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var endTime: String?

    public var id: String?

    public var interval: Int32?

    public var jobId: String?

    public var requestId: String?

    public var sliceLen: Int32?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sliceLen != nil {
            map["SliceLen"] = self.sliceLen!
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
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SliceLen") {
            self.sliceLen = dict["SliceLen"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class StartScheduledPreloadExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartScheduledPreloadExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartScheduledPreloadExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopScheduledPreloadExecutionRequest : Tea.TeaModel {
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

public class StopScheduledPreloadExecutionResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var endTime: String?

    public var id: String?

    public var interval: Int32?

    public var jobId: String?

    public var requestId: String?

    public var sliceLen: Int32?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sliceLen != nil {
            map["SliceLen"] = self.sliceLen!
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
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SliceLen") {
            self.sliceLen = dict["SliceLen"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class StopScheduledPreloadExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopScheduledPreloadExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopScheduledPreloadExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TransformExpressionToMatchRequest : Tea.TeaModel {
    public var expression: String?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class TransformExpressionToMatchResponseBody : Tea.TeaModel {
    public var match: WafRuleMatch?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.match != nil {
            map["Match"] = self.match?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Match") {
            var model = WafRuleMatch()
            model.fromMap(dict["Match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TransformExpressionToMatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransformExpressionToMatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TransformExpressionToMatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TransformMatchToExpressionRequest : Tea.TeaModel {
    public var match: WafRuleMatch?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.match != nil {
            map["Match"] = self.match?.toMap()
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Match") {
            var model = WafRuleMatch()
            model.fromMap(dict["Match"] as! [String: Any])
            self.match = model
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class TransformMatchToExpressionShrinkRequest : Tea.TeaModel {
    public var matchShrink: String?

    public var phase: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchShrink != nil {
            map["Match"] = self.matchShrink!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Match") {
            self.matchShrink = dict["Match"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class TransformMatchToExpressionResponseBody : Tea.TeaModel {
    public var expression: String?

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
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TransformMatchToExpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransformMatchToExpressionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TransformMatchToExpressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var securityToken: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomScenePolicyRequest : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var objects: String?

    public var policyId: Int64?

    public var startTime: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Objects") {
            self.objects = dict["Objects"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
    }
}

public class UpdateCustomScenePolicyResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var objects: [String]?

    public var policyId: Int64?

    public var requestId: String?

    public var startTime: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Objects") {
            self.objects = dict["Objects"] as! [String]
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
    }
}

public class UpdateCustomScenePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomScenePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateCustomScenePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateKvNamespaceRequest : Tea.TeaModel {
    public var namespace: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateKvNamespaceResponseBody : Tea.TeaModel {
    public var description_: String?

    public var namespace: String?

    public var namespaceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateKvNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKvNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateKvNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateListRequest : Tea.TeaModel {
    public var description_: String?

    public var id: Int64?

    public var items: [String]?

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
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.items != nil {
            map["Items"] = self.items!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateListShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var id: Int64?

    public var itemsShrink: String?

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
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.itemsShrink != nil {
            map["Items"] = self.itemsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Items") {
            self.itemsShrink = dict["Items"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateListResponseBody : Tea.TeaModel {
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

public class UpdateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePageRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var description_: String?

    public var id: Int64?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdatePageResponseBody : Tea.TeaModel {
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

public class UpdatePageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdatePageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRecordRequest : Tea.TeaModel {
    public class AuthConf : Tea.TeaModel {
        public var accessKey: String?

        public var authType: String?

        public var region: String?

        public var secretKey: String?

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
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("AuthType") {
                self.authType = dict["AuthType"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SecretKey") {
                self.secretKey = dict["SecretKey"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var algorithm: Int32?

        public var certificate: String?

        public var fingerprint: String?

        public var flag: Int32?

        public var keyTag: Int32?

        public var matchingType: Int32?

        public var port: Int32?

        public var priority: Int32?

        public var selector: Int32?

        public var tag: String?

        public var type: Int32?

        public var usage: Int32?

        public var value: String?

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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.fingerprint != nil {
                map["Fingerprint"] = self.fingerprint!
            }
            if self.flag != nil {
                map["Flag"] = self.flag!
            }
            if self.keyTag != nil {
                map["KeyTag"] = self.keyTag!
            }
            if self.matchingType != nil {
                map["MatchingType"] = self.matchingType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.selector != nil {
                map["Selector"] = self.selector!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! Int32
            }
            if dict.keys.contains("Certificate") {
                self.certificate = dict["Certificate"] as! String
            }
            if dict.keys.contains("Fingerprint") {
                self.fingerprint = dict["Fingerprint"] as! String
            }
            if dict.keys.contains("Flag") {
                self.flag = dict["Flag"] as! Int32
            }
            if dict.keys.contains("KeyTag") {
                self.keyTag = dict["KeyTag"] as! Int32
            }
            if dict.keys.contains("MatchingType") {
                self.matchingType = dict["MatchingType"] as! Int32
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Selector") {
                self.selector = dict["Selector"] as! Int32
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("Usage") {
                self.usage = dict["Usage"] as! Int32
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
            }
        }
    }
    public var authConf: UpdateRecordRequest.AuthConf?

    public var bizName: String?

    public var comment: String?

    public var data: UpdateRecordRequest.Data?

    public var hostPolicy: String?

    public var proxied: Bool?

    public var recordId: Int64?

    public var sourceType: String?

    public var ttl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConf?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConf != nil {
            map["AuthConf"] = self.authConf?.toMap()
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.hostPolicy != nil {
            map["HostPolicy"] = self.hostPolicy!
        }
        if self.proxied != nil {
            map["Proxied"] = self.proxied!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConf") {
            var model = UpdateRecordRequest.AuthConf()
            model.fromMap(dict["AuthConf"] as! [String: Any])
            self.authConf = model
        }
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateRecordRequest.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HostPolicy") {
            self.hostPolicy = dict["HostPolicy"] as! String
        }
        if dict.keys.contains("Proxied") {
            self.proxied = dict["Proxied"] as! Bool
        }
        if dict.keys.contains("RecordId") {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
    }
}

public class UpdateRecordShrinkRequest : Tea.TeaModel {
    public var authConfShrink: String?

    public var bizName: String?

    public var comment: String?

    public var dataShrink: String?

    public var hostPolicy: String?

    public var proxied: Bool?

    public var recordId: Int64?

    public var sourceType: String?

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
        if self.authConfShrink != nil {
            map["AuthConf"] = self.authConfShrink!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.dataShrink != nil {
            map["Data"] = self.dataShrink!
        }
        if self.hostPolicy != nil {
            map["HostPolicy"] = self.hostPolicy!
        }
        if self.proxied != nil {
            map["Proxied"] = self.proxied!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConf") {
            self.authConfShrink = dict["AuthConf"] as! String
        }
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Data") {
            self.dataShrink = dict["Data"] as! String
        }
        if dict.keys.contains("HostPolicy") {
            self.hostPolicy = dict["HostPolicy"] as! String
        }
        if dict.keys.contains("Proxied") {
            self.proxied = dict["Proxied"] as! Bool
        }
        if dict.keys.contains("RecordId") {
            self.recordId = dict["RecordId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
    }
}

public class UpdateRecordResponseBody : Tea.TeaModel {
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

public class UpdateRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateScheduledPreloadExecutionRequest : Tea.TeaModel {
    public var endTime: String?

    public var id: String?

    public var interval: Int32?

    public var sliceLen: Int32?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.sliceLen != nil {
            map["SliceLen"] = self.sliceLen!
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
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("SliceLen") {
            self.sliceLen = dict["SliceLen"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class UpdateScheduledPreloadExecutionResponseBody : Tea.TeaModel {
    public var aliUid: String?

    public var endTime: String?

    public var id: String?

    public var interval: Int32?

    public var jobId: String?

    public var requestId: String?

    public var sliceLen: Int32?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sliceLen != nil {
            map["SliceLen"] = self.sliceLen!
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
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SliceLen") {
            self.sliceLen = dict["SliceLen"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateScheduledPreloadExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScheduledPreloadExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateScheduledPreloadExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteAccessTypeRequest : Tea.TeaModel {
    public var accessType: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class UpdateSiteAccessTypeResponseBody : Tea.TeaModel {
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

public class UpdateSiteAccessTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteAccessTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteAccessTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteCoverageRequest : Tea.TeaModel {
    public var coverage: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coverage != nil {
            map["Coverage"] = self.coverage!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Coverage") {
            self.coverage = dict["Coverage"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class UpdateSiteCoverageResponseBody : Tea.TeaModel {
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

public class UpdateSiteCoverageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteCoverageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteCoverageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteCustomLogRequest : Tea.TeaModel {
    public var cookies: [String]?

    public var requestHeaders: [String]?

    public var responseHeaders: [String]?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders!
        }
        if self.responseHeaders != nil {
            map["ResponseHeaders"] = self.responseHeaders!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookies") {
            self.cookies = dict["Cookies"] as! [String]
        }
        if dict.keys.contains("RequestHeaders") {
            self.requestHeaders = dict["RequestHeaders"] as! [String]
        }
        if dict.keys.contains("ResponseHeaders") {
            self.responseHeaders = dict["ResponseHeaders"] as! [String]
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class UpdateSiteCustomLogShrinkRequest : Tea.TeaModel {
    public var cookiesShrink: String?

    public var requestHeadersShrink: String?

    public var responseHeadersShrink: String?

    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookiesShrink != nil {
            map["Cookies"] = self.cookiesShrink!
        }
        if self.requestHeadersShrink != nil {
            map["RequestHeaders"] = self.requestHeadersShrink!
        }
        if self.responseHeadersShrink != nil {
            map["ResponseHeaders"] = self.responseHeadersShrink!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookies") {
            self.cookiesShrink = dict["Cookies"] as! String
        }
        if dict.keys.contains("RequestHeaders") {
            self.requestHeadersShrink = dict["RequestHeaders"] as! String
        }
        if dict.keys.contains("ResponseHeaders") {
            self.responseHeadersShrink = dict["ResponseHeaders"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class UpdateSiteCustomLogResponseBody : Tea.TeaModel {
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

public class UpdateSiteCustomLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteCustomLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteCustomLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteDeliveryTaskRequest : Tea.TeaModel {
    public var businessType: String?

    public var discardRate: Double?

    public var fieldName: String?

    public var siteId: Int64?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateSiteDeliveryTaskResponseBody : Tea.TeaModel {
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

public class UpdateSiteDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteDeliveryTaskStatusRequest : Tea.TeaModel {
    public var method: String?

    public var siteId: Int64?

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
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateSiteDeliveryTaskStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateSiteDeliveryTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteDeliveryTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteDeliveryTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSiteVanityNSRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var vanityNSList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.vanityNSList != nil {
            map["VanityNSList"] = self.vanityNSList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("VanityNSList") {
            self.vanityNSList = dict["VanityNSList"] as! String
        }
    }
}

public class UpdateSiteVanityNSResponseBody : Tea.TeaModel {
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

public class UpdateSiteVanityNSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSiteVanityNSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSiteVanityNSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDeliveryTaskRequest : Tea.TeaModel {
    public var businessType: String?

    public var discardRate: Double?

    public var fieldName: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.discardRate != nil {
            map["DiscardRate"] = self.discardRate!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DiscardRate") {
            self.discardRate = dict["DiscardRate"] as! Double
        }
        if dict.keys.contains("FieldName") {
            self.fieldName = dict["FieldName"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateUserDeliveryTaskResponseBody : Tea.TeaModel {
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

public class UpdateUserDeliveryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDeliveryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserDeliveryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDeliveryTaskStatusRequest : Tea.TeaModel {
    public var method: String?

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
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateUserDeliveryTaskStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateUserDeliveryTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDeliveryTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserDeliveryTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWafRuleRequest : Tea.TeaModel {
    public var config: WafRuleConfig?

    public var id: Int64?

    public var position: Int64?

    public var siteId: Int64?

    public var siteVersion: Int32?

    public var status: String?

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
            map["Config"] = self.config?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.position != nil {
            map["Position"] = self.position!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            var model = WafRuleConfig()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Position") {
            self.position = dict["Position"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateWafRuleShrinkRequest : Tea.TeaModel {
    public var configShrink: String?

    public var id: Int64?

    public var position: Int64?

    public var siteId: Int64?

    public var siteVersion: Int32?

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
        if self.configShrink != nil {
            map["Config"] = self.configShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.position != nil {
            map["Position"] = self.position!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.configShrink = dict["Config"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Position") {
            self.position = dict["Position"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateWafRuleResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWafRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWafRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWafRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWafRulesetRequest : Tea.TeaModel {
    public var id: Int64?

    public var siteId: Int64?

    public var siteVersion: Int32?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("SiteVersion") {
            self.siteVersion = dict["SiteVersion"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateWafRulesetResponseBody : Tea.TeaModel {
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

public class UpdateWafRulesetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWafRulesetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWafRulesetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWaitingRoomRequest : Tea.TeaModel {
    public class HostNameAndPath : Tea.TeaModel {
        public var domain: String?

        public var path: String?

        public var subdomain: String?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.subdomain != nil {
                map["Subdomain"] = self.subdomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Subdomain") {
                self.subdomain = dict["Subdomain"] as! String
            }
        }
    }
    public var cookieName: String?

    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var hostNameAndPath: [UpdateWaitingRoomRequest.HostNameAndPath]?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var queueAllEnable: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var totalActiveUsers: String?

    public var waitingRoomId: String?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookieName != nil {
            map["CookieName"] = self.cookieName!
        }
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.hostNameAndPath != nil {
            var tmp : [Any] = []
            for k in self.hostNameAndPath! {
                tmp.append(k.toMap())
            }
            map["HostNameAndPath"] = tmp
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.queueAllEnable != nil {
            map["QueueAllEnable"] = self.queueAllEnable!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CookieName") {
            self.cookieName = dict["CookieName"] as! String
        }
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("HostNameAndPath") {
            var tmp : [UpdateWaitingRoomRequest.HostNameAndPath] = []
            for v in dict["HostNameAndPath"] as! [Any] {
                var model = UpdateWaitingRoomRequest.HostNameAndPath()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostNameAndPath = tmp
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("QueueAllEnable") {
            self.queueAllEnable = dict["QueueAllEnable"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class UpdateWaitingRoomShrinkRequest : Tea.TeaModel {
    public var cookieName: String?

    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var hostNameAndPathShrink: String?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var queueAllEnable: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var totalActiveUsers: String?

    public var waitingRoomId: String?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookieName != nil {
            map["CookieName"] = self.cookieName!
        }
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.hostNameAndPathShrink != nil {
            map["HostNameAndPath"] = self.hostNameAndPathShrink!
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.queueAllEnable != nil {
            map["QueueAllEnable"] = self.queueAllEnable!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomId != nil {
            map["WaitingRoomId"] = self.waitingRoomId!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CookieName") {
            self.cookieName = dict["CookieName"] as! String
        }
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("HostNameAndPath") {
            self.hostNameAndPathShrink = dict["HostNameAndPath"] as! String
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("QueueAllEnable") {
            self.queueAllEnable = dict["QueueAllEnable"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomId") {
            self.waitingRoomId = dict["WaitingRoomId"] as! String
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class UpdateWaitingRoomResponseBody : Tea.TeaModel {
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

public class UpdateWaitingRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWaitingRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWaitingRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWaitingRoomEventRequest : Tea.TeaModel {
    public var customPageHtml: String?

    public var description_: String?

    public var disableSessionRenewalEnable: String?

    public var enable: String?

    public var endTime: String?

    public var jsonResponseEnable: String?

    public var language: String?

    public var name: String?

    public var newUsersPerMinute: String?

    public var preQueueEnable: String?

    public var preQueueStartTime: String?

    public var queuingMethod: String?

    public var queuingStatusCode: String?

    public var randomPreQueueEnable: String?

    public var sessionDuration: String?

    public var siteId: Int64?

    public var startTime: String?

    public var totalActiveUsers: String?

    public var waitingRoomEventId: Int64?

    public var waitingRoomType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPageHtml != nil {
            map["CustomPageHtml"] = self.customPageHtml!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableSessionRenewalEnable != nil {
            map["DisableSessionRenewalEnable"] = self.disableSessionRenewalEnable!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jsonResponseEnable != nil {
            map["JsonResponseEnable"] = self.jsonResponseEnable!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newUsersPerMinute != nil {
            map["NewUsersPerMinute"] = self.newUsersPerMinute!
        }
        if self.preQueueEnable != nil {
            map["PreQueueEnable"] = self.preQueueEnable!
        }
        if self.preQueueStartTime != nil {
            map["PreQueueStartTime"] = self.preQueueStartTime!
        }
        if self.queuingMethod != nil {
            map["QueuingMethod"] = self.queuingMethod!
        }
        if self.queuingStatusCode != nil {
            map["QueuingStatusCode"] = self.queuingStatusCode!
        }
        if self.randomPreQueueEnable != nil {
            map["RandomPreQueueEnable"] = self.randomPreQueueEnable!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.totalActiveUsers != nil {
            map["TotalActiveUsers"] = self.totalActiveUsers!
        }
        if self.waitingRoomEventId != nil {
            map["WaitingRoomEventId"] = self.waitingRoomEventId!
        }
        if self.waitingRoomType != nil {
            map["WaitingRoomType"] = self.waitingRoomType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomPageHtml") {
            self.customPageHtml = dict["CustomPageHtml"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableSessionRenewalEnable") {
            self.disableSessionRenewalEnable = dict["DisableSessionRenewalEnable"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("JsonResponseEnable") {
            self.jsonResponseEnable = dict["JsonResponseEnable"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewUsersPerMinute") {
            self.newUsersPerMinute = dict["NewUsersPerMinute"] as! String
        }
        if dict.keys.contains("PreQueueEnable") {
            self.preQueueEnable = dict["PreQueueEnable"] as! String
        }
        if dict.keys.contains("PreQueueStartTime") {
            self.preQueueStartTime = dict["PreQueueStartTime"] as! String
        }
        if dict.keys.contains("QueuingMethod") {
            self.queuingMethod = dict["QueuingMethod"] as! String
        }
        if dict.keys.contains("QueuingStatusCode") {
            self.queuingStatusCode = dict["QueuingStatusCode"] as! String
        }
        if dict.keys.contains("RandomPreQueueEnable") {
            self.randomPreQueueEnable = dict["RandomPreQueueEnable"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TotalActiveUsers") {
            self.totalActiveUsers = dict["TotalActiveUsers"] as! String
        }
        if dict.keys.contains("WaitingRoomEventId") {
            self.waitingRoomEventId = dict["WaitingRoomEventId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomType") {
            self.waitingRoomType = dict["WaitingRoomType"] as! String
        }
    }
}

public class UpdateWaitingRoomEventResponseBody : Tea.TeaModel {
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

public class UpdateWaitingRoomEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWaitingRoomEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWaitingRoomEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWaitingRoomRuleRequest : Tea.TeaModel {
    public var rule: String?

    public var ruleEnable: String?

    public var ruleName: String?

    public var siteId: Int64?

    public var waitingRoomRuleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.ruleEnable != nil {
            map["RuleEnable"] = self.ruleEnable!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.waitingRoomRuleId != nil {
            map["WaitingRoomRuleId"] = self.waitingRoomRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("RuleEnable") {
            self.ruleEnable = dict["RuleEnable"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("WaitingRoomRuleId") {
            self.waitingRoomRuleId = dict["WaitingRoomRuleId"] as! Int64
        }
    }
}

public class UpdateWaitingRoomRuleResponseBody : Tea.TeaModel {
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

public class UpdateWaitingRoomRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWaitingRoomRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWaitingRoomRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadFileRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var type: String?

    public var uploadTaskName: String?

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
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uploadTaskName != nil {
            map["UploadTaskName"] = self.uploadTaskName!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UploadTaskName") {
            self.uploadTaskName = dict["UploadTaskName"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class UploadFileAdvanceRequest : Tea.TeaModel {
    public var siteId: Int64?

    public var type: String?

    public var uploadTaskName: String?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uploadTaskName != nil {
            map["UploadTaskName"] = self.uploadTaskName!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UploadTaskName") {
            self.uploadTaskName = dict["UploadTaskName"] as! String
        }
        if dict.keys.contains("Url") {
            self.urlObject = dict["Url"] as! InputStream
        }
    }
}

public class UploadFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var uploadId: Int64?

    public override init() {
        super.init()
    }

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
        if self.uploadId != nil {
            map["UploadId"] = self.uploadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UploadId") {
            self.uploadId = dict["UploadId"] as! Int64
        }
    }
}

public class UploadFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UploadFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySiteRequest : Tea.TeaModel {
    public var siteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! Int64
        }
    }
}

public class VerifySiteResponseBody : Tea.TeaModel {
    public var passed: Bool?

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
        if self.passed != nil {
            map["Passed"] = self.passed!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Passed") {
            self.passed = dict["Passed"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifySiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VerifySiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
