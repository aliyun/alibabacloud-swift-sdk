import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ACS : Tea.TeaModel {
    public var ACSQuotaId: String?

    public var associatedProducts: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ACSQuotaId != nil {
            map["ACSQuotaId"] = self.ACSQuotaId!
        }
        if self.associatedProducts != nil {
            map["AssociatedProducts"] = self.associatedProducts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ACSQuotaId"] as? String {
            self.ACSQuotaId = value
        }
        if let value = dict["AssociatedProducts"] as? [String] {
            self.associatedProducts = value
        }
    }
}

public class Action : Tea.TeaModel {
    public var actionType: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
    }
}

public class AlgorithmSpec : Tea.TeaModel {
    public class ComputeResource : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var value: String?

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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var policy: AlgorithmSpec.ComputeResource.Policy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.policy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                map["Policy"] = self.policy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [String: Any?] {
                var model = AlgorithmSpec.ComputeResource.Policy()
                model.fromMap(value)
                self.policy = model
            }
        }
    }
    public class Customization : Tea.TeaModel {
        public var codeDir: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeDir != nil {
                map["CodeDir"] = self.codeDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CodeDir"] as? Bool {
                self.codeDir = value
            }
        }
    }
    public class ProgressDefinitions : Tea.TeaModel {
        public class OverallProgress : Tea.TeaModel {
            public var description_: String?

            public var regex: String?

            public override init() {
                super.init()
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
                if self.regex != nil {
                    map["Regex"] = self.regex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Regex"] as? String {
                    self.regex = value
                }
            }
        }
        public class RemainingTime : Tea.TeaModel {
            public var description_: String?

            public var regex: String?

            public override init() {
                super.init()
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
                if self.regex != nil {
                    map["Regex"] = self.regex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Regex"] as? String {
                    self.regex = value
                }
            }
        }
        public var overallProgress: AlgorithmSpec.ProgressDefinitions.OverallProgress?

        public var remainingTime: AlgorithmSpec.ProgressDefinitions.RemainingTime?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.overallProgress?.validate()
            try self.remainingTime?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.overallProgress != nil {
                map["OverallProgress"] = self.overallProgress?.toMap()
            }
            if self.remainingTime != nil {
                map["RemainingTime"] = self.remainingTime?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OverallProgress"] as? [String: Any?] {
                var model = AlgorithmSpec.ProgressDefinitions.OverallProgress()
                model.fromMap(value)
                self.overallProgress = model
            }
            if let value = dict["RemainingTime"] as? [String: Any?] {
                var model = AlgorithmSpec.ProgressDefinitions.RemainingTime()
                model.fromMap(value)
                self.remainingTime = model
            }
        }
    }
    public var codeDir: Location?

    public var command: [String]?

    public var computeResource: AlgorithmSpec.ComputeResource?

    public var customization: AlgorithmSpec.Customization?

    public var hyperParameters: [HyperParameterDefinition]?

    public var image: String?

    public var inputChannels: [Channel]?

    public var jobType: String?

    public var metricDefinitions: [MetricDefinition]?

    public var outputChannels: [Channel]?

    public var progressDefinitions: AlgorithmSpec.ProgressDefinitions?

    public var resourceRequirements: [ConditionExpression]?

    public var supportedInstanceTypes: [String]?

    public var supportsDistributedTraining: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeDir?.validate()
        try self.computeResource?.validate()
        try self.customization?.validate()
        try self.progressDefinitions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeDir != nil {
            map["CodeDir"] = self.codeDir?.toMap()
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource?.toMap()
        }
        if self.customization != nil {
            map["Customization"] = self.customization?.toMap()
        }
        if self.hyperParameters != nil {
            var tmp : [Any] = []
            for k in self.hyperParameters! {
                tmp.append(k.toMap())
            }
            map["HyperParameters"] = tmp
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.inputChannels != nil {
            var tmp : [Any] = []
            for k in self.inputChannels! {
                tmp.append(k.toMap())
            }
            map["InputChannels"] = tmp
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.metricDefinitions != nil {
            var tmp : [Any] = []
            for k in self.metricDefinitions! {
                tmp.append(k.toMap())
            }
            map["MetricDefinitions"] = tmp
        }
        if self.outputChannels != nil {
            var tmp : [Any] = []
            for k in self.outputChannels! {
                tmp.append(k.toMap())
            }
            map["OutputChannels"] = tmp
        }
        if self.progressDefinitions != nil {
            map["ProgressDefinitions"] = self.progressDefinitions?.toMap()
        }
        if self.resourceRequirements != nil {
            var tmp : [Any] = []
            for k in self.resourceRequirements! {
                tmp.append(k.toMap())
            }
            map["ResourceRequirements"] = tmp
        }
        if self.supportedInstanceTypes != nil {
            map["SupportedInstanceTypes"] = self.supportedInstanceTypes!
        }
        if self.supportsDistributedTraining != nil {
            map["SupportsDistributedTraining"] = self.supportsDistributedTraining!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeDir"] as? [String: Any?] {
            var model = Location()
            model.fromMap(value)
            self.codeDir = model
        }
        if let value = dict["Command"] as? [String] {
            self.command = value
        }
        if let value = dict["ComputeResource"] as? [String: Any?] {
            var model = AlgorithmSpec.ComputeResource()
            model.fromMap(value)
            self.computeResource = model
        }
        if let value = dict["Customization"] as? [String: Any?] {
            var model = AlgorithmSpec.Customization()
            model.fromMap(value)
            self.customization = model
        }
        if let value = dict["HyperParameters"] as? [Any?] {
            var tmp : [HyperParameterDefinition] = []
            for v in value {
                if v != nil {
                    var model = HyperParameterDefinition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hyperParameters = tmp
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["InputChannels"] as? [Any?] {
            var tmp : [Channel] = []
            for v in value {
                if v != nil {
                    var model = Channel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inputChannels = tmp
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MetricDefinitions"] as? [Any?] {
            var tmp : [MetricDefinition] = []
            for v in value {
                if v != nil {
                    var model = MetricDefinition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metricDefinitions = tmp
        }
        if let value = dict["OutputChannels"] as? [Any?] {
            var tmp : [Channel] = []
            for v in value {
                if v != nil {
                    var model = Channel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputChannels = tmp
        }
        if let value = dict["ProgressDefinitions"] as? [String: Any?] {
            var model = AlgorithmSpec.ProgressDefinitions()
            model.fromMap(value)
            self.progressDefinitions = model
        }
        if let value = dict["ResourceRequirements"] as? [Any?] {
            var tmp : [ConditionExpression] = []
            for v in value {
                if v != nil {
                    var model = ConditionExpression()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceRequirements = tmp
        }
        if let value = dict["SupportedInstanceTypes"] as? [String] {
            self.supportedInstanceTypes = value
        }
        if let value = dict["SupportsDistributedTraining"] as? Bool {
            self.supportsDistributedTraining = value
        }
    }
}

public class AllocateStrategySpec : Tea.TeaModel {
    public var nodeSpecs: [NodeSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeSpecs != nil {
            var tmp : [Any] = []
            for k in self.nodeSpecs! {
                tmp.append(k.toMap())
            }
            map["NodeSpecs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeSpecs"] as? [Any?] {
            var tmp : [NodeSpec] = []
            for v in value {
                if v != nil {
                    var model = NodeSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeSpecs = tmp
        }
    }
}

public class CacheService : Tea.TeaModel {
    public var cacheServiceId: String?

    public var createdBy: String?

    public var gmtCreated: String?

    public var quotaId: String?

    public var status: String?

    public var supportedClientQuotaIds: [String]?

    public var tenantId: String?

    public var userId: String?

    public var userVpc: UserVpc?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheServiceId != nil {
            map["CacheServiceId"] = self.cacheServiceId!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.gmtCreated != nil {
            map["GmtCreated"] = self.gmtCreated!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportedClientQuotaIds != nil {
            map["SupportedClientQuotaIds"] = self.supportedClientQuotaIds!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheServiceId"] as? String {
            self.cacheServiceId = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["GmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportedClientQuotaIds"] as? [String] {
            self.supportedClientQuotaIds = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
    }
}

public class Channel : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var properties: [String: Any]?

    public var required_: Bool?

    public var supportedChannelTypes: [String]?

    public override init() {
        super.init()
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
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.required_ != nil {
            map["Required"] = self.required_!
        }
        if self.supportedChannelTypes != nil {
            map["SupportedChannelTypes"] = self.supportedChannelTypes!
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
        if let value = dict["Properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["Required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["SupportedChannelTypes"] as? [String] {
            self.supportedChannelTypes = value
        }
    }
}

public class ChannelProperty : Tea.TeaModel {
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

public class ComponentSpec : Tea.TeaModel {
    public var codeDir: Location?

    public var command: String?

    public var hyperParameters: [HyperParameterDefinition]?

    public var image: String?

    public var inputChannels: [Channel]?

    public var jobType: String?

    public var metricDefinitions: [MetricDefinition]?

    public var outputChannels: [Channel]?

    public var resourceRequirements: [ConditionExpression]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeDir?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeDir != nil {
            map["CodeDir"] = self.codeDir?.toMap()
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.hyperParameters != nil {
            var tmp : [Any] = []
            for k in self.hyperParameters! {
                tmp.append(k.toMap())
            }
            map["HyperParameters"] = tmp
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.inputChannels != nil {
            var tmp : [Any] = []
            for k in self.inputChannels! {
                tmp.append(k.toMap())
            }
            map["InputChannels"] = tmp
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.metricDefinitions != nil {
            var tmp : [Any] = []
            for k in self.metricDefinitions! {
                tmp.append(k.toMap())
            }
            map["MetricDefinitions"] = tmp
        }
        if self.outputChannels != nil {
            var tmp : [Any] = []
            for k in self.outputChannels! {
                tmp.append(k.toMap())
            }
            map["OutputChannels"] = tmp
        }
        if self.resourceRequirements != nil {
            var tmp : [Any] = []
            for k in self.resourceRequirements! {
                tmp.append(k.toMap())
            }
            map["ResourceRequirements"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeDir"] as? [String: Any?] {
            var model = Location()
            model.fromMap(value)
            self.codeDir = model
        }
        if let value = dict["Command"] as? String {
            self.command = value
        }
        if let value = dict["HyperParameters"] as? [Any?] {
            var tmp : [HyperParameterDefinition] = []
            for v in value {
                if v != nil {
                    var model = HyperParameterDefinition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hyperParameters = tmp
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["InputChannels"] as? [Any?] {
            var tmp : [Channel] = []
            for v in value {
                if v != nil {
                    var model = Channel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inputChannels = tmp
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MetricDefinitions"] as? [Any?] {
            var tmp : [MetricDefinition] = []
            for v in value {
                if v != nil {
                    var model = MetricDefinition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metricDefinitions = tmp
        }
        if let value = dict["OutputChannels"] as? [Any?] {
            var tmp : [Channel] = []
            for v in value {
                if v != nil {
                    var model = Channel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputChannels = tmp
        }
        if let value = dict["ResourceRequirements"] as? [Any?] {
            var tmp : [ConditionExpression] = []
            for v in value {
                if v != nil {
                    var model = ConditionExpression()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceRequirements = tmp
        }
    }
}

public class ConditionExpression : Tea.TeaModel {
    public var key: String?

    public var operator_: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class Features : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var isEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnabled"] as? Bool {
                self.isEnabled = value
            }
        }
    }
    public var quota: Features.Quota?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Quota"] as? [String: Any?] {
            var model = Features.Quota()
            model.fromMap(value)
            self.quota = model
        }
    }
}

public class Filter : Tea.TeaModel {
    public var filterBy: String?

    public var filterCondition: String?

    public var filterOperation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterBy != nil {
            map["FilterBy"] = self.filterBy!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.filterOperation != nil {
            map["FilterOperation"] = self.filterOperation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterBy"] as? String {
            self.filterBy = value
        }
        if let value = dict["FilterCondition"] as? String {
            self.filterCondition = value
        }
        if let value = dict["FilterOperation"] as? String {
            self.filterOperation = value
        }
    }
}

public class ForwardInfo : Tea.TeaModel {
    public var eipAllocationId: String?

    public var natGatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipAllocationId != nil {
            map["EipAllocationId"] = self.eipAllocationId!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EipAllocationId"] as? String {
            self.eipAllocationId = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
    }
}

public class GPUInfo : Tea.TeaModel {
    public var count: Int64?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class GPUMetric : Tea.TeaModel {
    public var index: Int64?

    public var model: String?

    public var status: Int64?

    public var usageRate: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.usageRate != nil {
            map["UsageRate"] = self.usageRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Index"] as? Int64 {
            self.index = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["UsageRate"] as? Double {
            self.usageRate = value
        }
    }
}

public class HyperParameterDefinition : Tea.TeaModel {
    public var defaultValue: String?

    public var description_: String?

    public var displayName: String?

    public var name: String?

    public var range: HyperParameterRange?

    public var required_: Bool?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.range?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultValue != nil {
            map["DefaultValue"] = self.defaultValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.range != nil {
            map["Range"] = self.range?.toMap()
        }
        if self.required_ != nil {
            map["Required"] = self.required_!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Range"] as? [String: Any?] {
            var model = HyperParameterRange()
            model.fromMap(value)
            self.range = model
        }
        if let value = dict["Required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class HyperParameterRange : Tea.TeaModel {
    public var enum_: [String]?

    public var exclusiveMaximum: Bool?

    public var exclusiveMinimum: Bool?

    public var maxLength: Int64?

    public var maximum: String?

    public var minLength: Int64?

    public var minimum: String?

    public var pattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enum_ != nil {
            map["Enum"] = self.enum_!
        }
        if self.exclusiveMaximum != nil {
            map["ExclusiveMaximum"] = self.exclusiveMaximum!
        }
        if self.exclusiveMinimum != nil {
            map["ExclusiveMinimum"] = self.exclusiveMinimum!
        }
        if self.maxLength != nil {
            map["MaxLength"] = self.maxLength!
        }
        if self.maximum != nil {
            map["Maximum"] = self.maximum!
        }
        if self.minLength != nil {
            map["MinLength"] = self.minLength!
        }
        if self.minimum != nil {
            map["Minimum"] = self.minimum!
        }
        if self.pattern != nil {
            map["Pattern"] = self.pattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enum"] as? [String] {
            self.enum_ = value
        }
        if let value = dict["ExclusiveMaximum"] as? Bool {
            self.exclusiveMaximum = value
        }
        if let value = dict["ExclusiveMinimum"] as? Bool {
            self.exclusiveMinimum = value
        }
        if let value = dict["MaxLength"] as? Int64 {
            self.maxLength = value
        }
        if let value = dict["Maximum"] as? String {
            self.maximum = value
        }
        if let value = dict["MinLength"] as? Int64 {
            self.minLength = value
        }
        if let value = dict["Minimum"] as? String {
            self.minimum = value
        }
        if let value = dict["Pattern"] as? String {
            self.pattern = value
        }
    }
}

public class JobSettings : Tea.TeaModel {
    public var advancedSettings: [String: Any]?

    public var businessUserId: String?

    public var caller: String?

    public var driver: String?

    public var enableErrorMonitoringInAIMaster: Bool?

    public var enableOssAppend: Bool?

    public var enableRDMA: Bool?

    public var enableSanityCheck: Bool?

    public var enableTideResource: Bool?

    public var errorMonitoringArgs: String?

    public var jobReservedMinutes: Int32?

    public var jobReservedPolicy: String?

    public var oversoldType: String?

    public var pipelineId: String?

    public var sanityCheckArgs: String?

    public var tags: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedSettings != nil {
            map["AdvancedSettings"] = self.advancedSettings!
        }
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.enableErrorMonitoringInAIMaster != nil {
            map["EnableErrorMonitoringInAIMaster"] = self.enableErrorMonitoringInAIMaster!
        }
        if self.enableOssAppend != nil {
            map["EnableOssAppend"] = self.enableOssAppend!
        }
        if self.enableRDMA != nil {
            map["EnableRDMA"] = self.enableRDMA!
        }
        if self.enableSanityCheck != nil {
            map["EnableSanityCheck"] = self.enableSanityCheck!
        }
        if self.enableTideResource != nil {
            map["EnableTideResource"] = self.enableTideResource!
        }
        if self.errorMonitoringArgs != nil {
            map["ErrorMonitoringArgs"] = self.errorMonitoringArgs!
        }
        if self.jobReservedMinutes != nil {
            map["JobReservedMinutes"] = self.jobReservedMinutes!
        }
        if self.jobReservedPolicy != nil {
            map["JobReservedPolicy"] = self.jobReservedPolicy!
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.sanityCheckArgs != nil {
            map["SanityCheckArgs"] = self.sanityCheckArgs!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvancedSettings"] as? [String: Any] {
            self.advancedSettings = value
        }
        if let value = dict["BusinessUserId"] as? String {
            self.businessUserId = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["EnableErrorMonitoringInAIMaster"] as? Bool {
            self.enableErrorMonitoringInAIMaster = value
        }
        if let value = dict["EnableOssAppend"] as? Bool {
            self.enableOssAppend = value
        }
        if let value = dict["EnableRDMA"] as? Bool {
            self.enableRDMA = value
        }
        if let value = dict["EnableSanityCheck"] as? Bool {
            self.enableSanityCheck = value
        }
        if let value = dict["EnableTideResource"] as? Bool {
            self.enableTideResource = value
        }
        if let value = dict["ErrorMonitoringArgs"] as? String {
            self.errorMonitoringArgs = value
        }
        if let value = dict["JobReservedMinutes"] as? Int32 {
            self.jobReservedMinutes = value
        }
        if let value = dict["JobReservedPolicy"] as? String {
            self.jobReservedPolicy = value
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
        if let value = dict["SanityCheckArgs"] as? String {
            self.sanityCheckArgs = value
        }
        if let value = dict["Tags"] as? [String: String] {
            self.tags = value
        }
    }
}

public class JobViewMetric : Tea.TeaModel {
    public var CPUUsageRate: String?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUUsageRate: String?

    public var jobId: String?

    public var jobType: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeNames: [String]?

    public var requestCPU: Int32?

    public var requestGPU: Int32?

    public var requestMemory: Int64?

    public var resourceGroupID: String?

    public var totalCPU: Int32?

    public var totalGPU: Int32?

    public var totalMemory: Int64?

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
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUUsageRate != nil {
            map["GPUUsageRate"] = self.GPUUsageRate!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUUsageRate"] as? String {
            self.GPUUsageRate = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeNames"] as? [String] {
            self.nodeNames = value
        }
        if let value = dict["RequestCPU"] as? Int32 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int32 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["TotalCPU"] as? Int32 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int32 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class Label : Tea.TeaModel {
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

public class Location : Tea.TeaModel {
    public var locationType: String?

    public var locationValue: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.locationType != nil {
            map["LocationType"] = self.locationType!
        }
        if self.locationValue != nil {
            map["LocationValue"] = self.locationValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocationType"] as? String {
            self.locationType = value
        }
        if let value = dict["LocationValue"] as? [String: Any] {
            self.locationValue = value
        }
    }
}

public class MachineGroup : Tea.TeaModel {
    public var creatorID: String?

    public var defaultDriver: String?

    public var ecsCount: Int64?

    public var ecsSpec: String?

    public var gmtCreatedTime: String?

    public var gmtExpiredTime: String?

    public var gmtModifiedTime: String?

    public var gmtStartedTime: String?

    public var machineGroupID: String?

    public var orderInstanceId: String?

    public var paymentDuration: String?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var resourceGroupID: String?

    public var status: String?

    public var supportedDrivers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatorID != nil {
            map["CreatorID"] = self.creatorID!
        }
        if self.defaultDriver != nil {
            map["DefaultDriver"] = self.defaultDriver!
        }
        if self.ecsCount != nil {
            map["EcsCount"] = self.ecsCount!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtExpiredTime != nil {
            map["GmtExpiredTime"] = self.gmtExpiredTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtStartedTime != nil {
            map["GmtStartedTime"] = self.gmtStartedTime!
        }
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.orderInstanceId != nil {
            map["OrderInstanceId"] = self.orderInstanceId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportedDrivers != nil {
            map["SupportedDrivers"] = self.supportedDrivers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorID"] as? String {
            self.creatorID = value
        }
        if let value = dict["DefaultDriver"] as? String {
            self.defaultDriver = value
        }
        if let value = dict["EcsCount"] as? Int64 {
            self.ecsCount = value
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtExpiredTime"] as? String {
            self.gmtExpiredTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtStartedTime"] as? String {
            self.gmtStartedTime = value
        }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["OrderInstanceId"] as? String {
            self.orderInstanceId = value
        }
        if let value = dict["PaymentDuration"] as? String {
            self.paymentDuration = value
        }
        if let value = dict["PaymentDurationUnit"] as? String {
            self.paymentDurationUnit = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportedDrivers"] as? [String] {
            self.supportedDrivers = value
        }
    }
}

public class Metric : Tea.TeaModel {
    public var time: Int64?

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
        if self.time != nil {
            map["Time"] = self.time!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Time"] as? Int64 {
            self.time = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class MetricDefinition : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regex: String?

    public override init() {
        super.init()
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
        if self.regex != nil {
            map["Regex"] = self.regex!
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
        if let value = dict["Regex"] as? String {
            self.regex = value
        }
    }
}

public class ModelVersion : Tea.TeaModel {
    public var approvalStatus: String?

    public var compressionSpec: [String: Any]?

    public var evaluationSpec: [String: Any]?

    public var extraInfo: [String: Any]?

    public var formatType: String?

    public var frameworkType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var metrics: [String: Any]?

    public var options: String?

    public var ownerId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trainingSpec: [String: Any]?

    public var uri: String?

    public var userId: String?

    public var versionDescription: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.compressionSpec != nil {
            map["CompressionSpec"] = self.compressionSpec!
        }
        if self.evaluationSpec != nil {
            map["EvaluationSpec"] = self.evaluationSpec!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.trainingSpec != nil {
            map["TrainingSpec"] = self.trainingSpec!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["CompressionSpec"] as? [String: Any] {
            self.compressionSpec = value
        }
        if let value = dict["EvaluationSpec"] as? [String: Any] {
            self.evaluationSpec = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Metrics"] as? [String: Any] {
            self.metrics = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrainingSpec"] as? [String: Any] {
            self.trainingSpec = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class Node : Tea.TeaModel {
    public var acceleratorType: String?

    public var boundQuotas: [QuotaIdName]?

    public var CPU: String?

    public var creatorId: String?

    public var GPU: String?

    public var GPUType: String?

    public var gmtCreateTime: String?

    public var gmtExpiredTime: String?

    public var gmtModifiedTime: String?

    public var isBound: Bool?

    public var limitCPU: String?

    public var limitGPU: String?

    public var limitMemory: String?

    public var machineGroupId: String?

    public var memory: String?

    public var nodeName: String?

    public var nodeStatus: String?

    public var nodeType: String?

    public var orderStatus: String?

    public var podNum: Int64?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestCPU: String?

    public var requestGPU: String?

    public var requestMemory: String?

    public var resourceGroupId: String?

    public var resourceGroupName: String?

    public var subNodes: [String]?

    public var users: [UserInfo]?

    public var workloadNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.boundQuotas != nil {
            var tmp : [Any] = []
            for k in self.boundQuotas! {
                tmp.append(k.toMap())
            }
            map["BoundQuotas"] = tmp
        }
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtExpiredTime != nil {
            map["GmtExpiredTime"] = self.gmtExpiredTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.isBound != nil {
            map["IsBound"] = self.isBound!
        }
        if self.limitCPU != nil {
            map["LimitCPU"] = self.limitCPU!
        }
        if self.limitGPU != nil {
            map["LimitGPU"] = self.limitGPU!
        }
        if self.limitMemory != nil {
            map["LimitMemory"] = self.limitMemory!
        }
        if self.machineGroupId != nil {
            map["MachineGroupId"] = self.machineGroupId!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.nodeStatus != nil {
            map["NodeStatus"] = self.nodeStatus!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.podNum != nil {
            map["PodNum"] = self.podNum!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.subNodes != nil {
            map["SubNodes"] = self.subNodes!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        if self.workloadNum != nil {
            map["WorkloadNum"] = self.workloadNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["BoundQuotas"] as? [Any?] {
            var tmp : [QuotaIdName] = []
            for v in value {
                if v != nil {
                    var model = QuotaIdName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.boundQuotas = tmp
        }
        if let value = dict["CPU"] as? String {
            self.CPU = value
        }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtExpiredTime"] as? String {
            self.gmtExpiredTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["IsBound"] as? Bool {
            self.isBound = value
        }
        if let value = dict["LimitCPU"] as? String {
            self.limitCPU = value
        }
        if let value = dict["LimitGPU"] as? String {
            self.limitGPU = value
        }
        if let value = dict["LimitMemory"] as? String {
            self.limitMemory = value
        }
        if let value = dict["MachineGroupId"] as? String {
            self.machineGroupId = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["NodeStatus"] as? String {
            self.nodeStatus = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["OrderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["PodNum"] as? Int64 {
            self.podNum = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RequestCPU"] as? String {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? String {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? String {
            self.requestMemory = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceGroupName"] as? String {
            self.resourceGroupName = value
        }
        if let value = dict["SubNodes"] as? [String] {
            self.subNodes = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [UserInfo] = []
            for v in value {
                if v != nil {
                    var model = UserInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
        if let value = dict["WorkloadNum"] as? Int64 {
            self.workloadNum = value
        }
    }
}

public class NodeGPUMetric : Tea.TeaModel {
    public var acceleratorType: String?

    public var GPUCount: Int32?

    public var GPUMetrics: [GPUMetric]?

    public var GPUType: String?

    public var memoryUtil: Double?

    public var nodeId: String?

    public var nodeType: String?

    public var totalMemory: Double?

    public var usedMemory: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.GPUCount != nil {
            map["GPUCount"] = self.GPUCount!
        }
        if self.GPUMetrics != nil {
            var tmp : [Any] = []
            for k in self.GPUMetrics! {
                tmp.append(k.toMap())
            }
            map["GPUMetrics"] = tmp
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.memoryUtil != nil {
            map["MemoryUtil"] = self.memoryUtil!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.usedMemory != nil {
            map["UsedMemory"] = self.usedMemory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["GPUCount"] as? Int32 {
            self.GPUCount = value
        }
        if let value = dict["GPUMetrics"] as? [Any?] {
            var tmp : [GPUMetric] = []
            for v in value {
                if v != nil {
                    var model = GPUMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.GPUMetrics = tmp
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["MemoryUtil"] as? Double {
            self.memoryUtil = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["TotalMemory"] as? Double {
            self.totalMemory = value
        }
        if let value = dict["UsedMemory"] as? Double {
            self.usedMemory = value
        }
    }
}

public class NodeMetric : Tea.TeaModel {
    public var GPUType: String?

    public var metrics: [Metric]?

    public var nodeID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.nodeID != nil {
            map["NodeID"] = self.nodeID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [Metric] = []
            for v in value {
                if v != nil {
                    var model = Metric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["NodeID"] as? String {
            self.nodeID = value
        }
    }
}

public class NodePodInfo : Tea.TeaModel {
    public var phase: String?

    public var podIP: String?

    public var podName: String?

    public var podNamespace: String?

    public var resourceSpec: ResourceAmount?

    public var workloadId: String?

    public var workloadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.podIP != nil {
            map["PodIP"] = self.podIP!
        }
        if self.podName != nil {
            map["PodName"] = self.podName!
        }
        if self.podNamespace != nil {
            map["PodNamespace"] = self.podNamespace!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        if self.workloadId != nil {
            map["WorkloadId"] = self.workloadId!
        }
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Phase"] as? String {
            self.phase = value
        }
        if let value = dict["PodIP"] as? String {
            self.podIP = value
        }
        if let value = dict["PodName"] as? String {
            self.podName = value
        }
        if let value = dict["PodNamespace"] as? String {
            self.podNamespace = value
        }
        if let value = dict["ResourceSpec"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.resourceSpec = model
        }
        if let value = dict["WorkloadId"] as? String {
            self.workloadId = value
        }
        if let value = dict["WorkloadType"] as? String {
            self.workloadType = value
        }
    }
}

public class NodeSnapshot : Tea.TeaModel {
    public class Workloads : Tea.TeaModel {
        public var name: String?

        public var workloadId: String?

        public var workloadType: String?

        public override init() {
            super.init()
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
            if self.workloadId != nil {
                map["WorkloadId"] = self.workloadId!
            }
            if self.workloadType != nil {
                map["WorkloadType"] = self.workloadType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["WorkloadId"] as? String {
                self.workloadId = value
            }
            if let value = dict["WorkloadType"] as? String {
                self.workloadType = value
            }
        }
    }
    public var ancestorQuotaWorkloadNum: Int32?

    public var descendantQuotaWorkloadNum: Int32?

    public var nodeName: String?

    public var requestCPU: String?

    public var requestGPU: String?

    public var requestMemory: String?

    public var selfQuotaWorkloadNum: Int32?

    public var workloadNum: Int32?

    public var workloads: [NodeSnapshot.Workloads]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ancestorQuotaWorkloadNum != nil {
            map["AncestorQuotaWorkloadNum"] = self.ancestorQuotaWorkloadNum!
        }
        if self.descendantQuotaWorkloadNum != nil {
            map["DescendantQuotaWorkloadNum"] = self.descendantQuotaWorkloadNum!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.selfQuotaWorkloadNum != nil {
            map["SelfQuotaWorkloadNum"] = self.selfQuotaWorkloadNum!
        }
        if self.workloadNum != nil {
            map["WorkloadNum"] = self.workloadNum!
        }
        if self.workloads != nil {
            var tmp : [Any] = []
            for k in self.workloads! {
                tmp.append(k.toMap())
            }
            map["Workloads"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AncestorQuotaWorkloadNum"] as? Int32 {
            self.ancestorQuotaWorkloadNum = value
        }
        if let value = dict["DescendantQuotaWorkloadNum"] as? Int32 {
            self.descendantQuotaWorkloadNum = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["RequestCPU"] as? String {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? String {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? String {
            self.requestMemory = value
        }
        if let value = dict["SelfQuotaWorkloadNum"] as? Int32 {
            self.selfQuotaWorkloadNum = value
        }
        if let value = dict["WorkloadNum"] as? Int32 {
            self.workloadNum = value
        }
        if let value = dict["Workloads"] as? [Any?] {
            var tmp : [NodeSnapshot.Workloads] = []
            for v in value {
                if v != nil {
                    var model = NodeSnapshot.Workloads()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workloads = tmp
        }
    }
}

public class NodeSpec : Tea.TeaModel {
    public var count: Int64?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class NodeType : Tea.TeaModel {
    public var acceleratorType: String?

    public var CPU: String?

    public var GPU: String?

    public var GPUType: String?

    public var memory: String?

    public var nodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["CPU"] as? String {
            self.CPU = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
    }
}

public class NodeTypeStatistic : Tea.TeaModel {
    public var canBeBoundCount: Int32?

    public var nodeType: String?

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
        if self.canBeBoundCount != nil {
            map["CanBeBoundCount"] = self.canBeBoundCount!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanBeBoundCount"] as? Int32 {
            self.canBeBoundCount = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class NodeViewMetric : Tea.TeaModel {
    public var CPUUsageRate: String?

    public var createdTime: String?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUType: String?

    public var machineGroupID: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeID: String?

    public var nodeStatus: String?

    public var nodeType: String?

    public var requestCPU: Int64?

    public var requestGPU: Int64?

    public var requestMemory: Int64?

    public var taskIdMap: [String: Any]?

    public var totalCPU: Int64?

    public var totalGPU: Int64?

    public var totalMemory: Int64?

    public var totalTasks: Int64?

    public var userIDs: [String]?

    public var userNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeID != nil {
            map["NodeID"] = self.nodeID!
        }
        if self.nodeStatus != nil {
            map["NodeStatus"] = self.nodeStatus!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.taskIdMap != nil {
            map["TaskIdMap"] = self.taskIdMap!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.totalTasks != nil {
            map["TotalTasks"] = self.totalTasks!
        }
        if self.userIDs != nil {
            map["UserIDs"] = self.userIDs!
        }
        if self.userNumber != nil {
            map["UserNumber"] = self.userNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeID"] as? String {
            self.nodeID = value
        }
        if let value = dict["NodeStatus"] as? String {
            self.nodeStatus = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["RequestCPU"] as? Int64 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int64 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["TaskIdMap"] as? [String: Any] {
            self.taskIdMap = value
        }
        if let value = dict["TotalCPU"] as? Int64 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int64 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["TotalTasks"] as? Int64 {
            self.totalTasks = value
        }
        if let value = dict["UserIDs"] as? [String] {
            self.userIDs = value
        }
        if let value = dict["UserNumber"] as? String {
            self.userNumber = value
        }
    }
}

public class Permission : Tea.TeaModel {
    public var isEnabled: Bool?

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
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsEnabled"] as? Bool {
            self.isEnabled = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class QueueInfo : Tea.TeaModel {
    public var code: String?

    public var codeType: String?

    public var gmtCreatedTime: String?

    public var gmtDequeuedTime: String?

    public var gmtEnqueuedTime: String?

    public var gmtPositionModifiedTime: String?

    public var name: String?

    public var position: Int64?

    public var priority: Int64?

    public var queueStrategy: String?

    public var quotaId: String?

    public var reason: String?

    public var resource: ResourceAmount?

    public var status: String?

    public var userId: String?

    public var userName: String?

    public var workloadId: String?

    public var workloadName: String?

    public var workloadStatus: String?

    public var workloadType: String?

    public var workspaceId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.codeType != nil {
            map["CodeType"] = self.codeType!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtDequeuedTime != nil {
            map["GmtDequeuedTime"] = self.gmtDequeuedTime!
        }
        if self.gmtEnqueuedTime != nil {
            map["GmtEnqueuedTime"] = self.gmtEnqueuedTime!
        }
        if self.gmtPositionModifiedTime != nil {
            map["GmtPositionModifiedTime"] = self.gmtPositionModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.position != nil {
            map["Position"] = self.position!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.queueStrategy != nil {
            map["QueueStrategy"] = self.queueStrategy!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resource != nil {
            map["Resource"] = self.resource?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.workloadId != nil {
            map["WorkloadId"] = self.workloadId!
        }
        if self.workloadName != nil {
            map["WorkloadName"] = self.workloadName!
        }
        if self.workloadStatus != nil {
            map["WorkloadStatus"] = self.workloadStatus!
        }
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CodeType"] as? String {
            self.codeType = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtDequeuedTime"] as? String {
            self.gmtDequeuedTime = value
        }
        if let value = dict["GmtEnqueuedTime"] as? String {
            self.gmtEnqueuedTime = value
        }
        if let value = dict["GmtPositionModifiedTime"] as? String {
            self.gmtPositionModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Position"] as? Int64 {
            self.position = value
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["QueueStrategy"] as? String {
            self.queueStrategy = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Resource"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WorkloadId"] as? String {
            self.workloadId = value
        }
        if let value = dict["WorkloadName"] as? String {
            self.workloadName = value
        }
        if let value = dict["WorkloadStatus"] as? String {
            self.workloadStatus = value
        }
        if let value = dict["WorkloadType"] as? String {
            self.workloadType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QuickStartModel : Tea.TeaModel {
    public var accessibility: String?

    public var deploymentCount: Int64?

    public var domain: String?

    public var extraInfo: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestVersion: ModelVersion?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var ownerId: String?

    public var provider: String?

    public var quickStartModelDescription: [String: Any]?

    public var quickStartModelName: [String: Any]?

    public var relatedModelId: String?

    public var task: String?

    public var trainingCount: Int64?

    public var userId: String?

    public var viewCount: Int64?

    public var viewCount7Days: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latestVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.deploymentCount != nil {
            map["DeploymentCount"] = self.deploymentCount!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion?.toMap()
        }
        if self.modelDescription != nil {
            map["ModelDescription"] = self.modelDescription!
        }
        if self.modelDoc != nil {
            map["ModelDoc"] = self.modelDoc!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.quickStartModelDescription != nil {
            map["QuickStartModelDescription"] = self.quickStartModelDescription!
        }
        if self.quickStartModelName != nil {
            map["QuickStartModelName"] = self.quickStartModelName!
        }
        if self.relatedModelId != nil {
            map["RelatedModelId"] = self.relatedModelId!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.trainingCount != nil {
            map["TrainingCount"] = self.trainingCount!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.viewCount != nil {
            map["ViewCount"] = self.viewCount!
        }
        if self.viewCount7Days != nil {
            map["ViewCount7Days"] = self.viewCount7Days!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DeploymentCount"] as? Int64 {
            self.deploymentCount = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? [String: Any?] {
            var model = ModelVersion()
            model.fromMap(value)
            self.latestVersion = model
        }
        if let value = dict["ModelDescription"] as? String {
            self.modelDescription = value
        }
        if let value = dict["ModelDoc"] as? String {
            self.modelDoc = value
        }
        if let value = dict["ModelId"] as? String {
            self.modelId = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["OrderNumber"] as? Int64 {
            self.orderNumber = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["QuickStartModelDescription"] as? [String: Any] {
            self.quickStartModelDescription = value
        }
        if let value = dict["QuickStartModelName"] as? [String: Any] {
            self.quickStartModelName = value
        }
        if let value = dict["RelatedModelId"] as? String {
            self.relatedModelId = value
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["TrainingCount"] as? Int64 {
            self.trainingCount = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["ViewCount"] as? Int64 {
            self.viewCount = value
        }
        if let value = dict["ViewCount7Days"] as? Int64 {
            self.viewCount7Days = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Quota : Tea.TeaModel {
    public var allocateStrategy: String?

    public var creatorId: String?

    public var description_: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestOperationId: String?

    public var min: ResourceSpec?

    public var parentQuotaId: String?

    public var queueStrategy: String?

    public var quotaConfig: QuotaConfig?

    public var quotaDetails: QuotaDetails?

    public var quotaId: String?

    public var quotaName: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var resourceGroupIds: [String]?

    public var resourceType: String?

    public var status: String?

    public var subQuotas: [QuotaIdName]?

    public var workspaces: [WorkspaceIdName]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.min?.validate()
        try self.quotaConfig?.validate()
        try self.quotaDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocateStrategy != nil {
            map["AllocateStrategy"] = self.allocateStrategy!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestOperationId != nil {
            map["LatestOperationId"] = self.latestOperationId!
        }
        if self.min != nil {
            map["Min"] = self.min?.toMap()
        }
        if self.parentQuotaId != nil {
            map["ParentQuotaId"] = self.parentQuotaId!
        }
        if self.queueStrategy != nil {
            map["QueueStrategy"] = self.queueStrategy!
        }
        if self.quotaConfig != nil {
            map["QuotaConfig"] = self.quotaConfig?.toMap()
        }
        if self.quotaDetails != nil {
            map["QuotaDetails"] = self.quotaDetails?.toMap()
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subQuotas != nil {
            var tmp : [Any] = []
            for k in self.subQuotas! {
                tmp.append(k.toMap())
            }
            map["SubQuotas"] = tmp
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["Workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocateStrategy"] as? String {
            self.allocateStrategy = value
        }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestOperationId"] as? String {
            self.latestOperationId = value
        }
        if let value = dict["Min"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.min = model
        }
        if let value = dict["ParentQuotaId"] as? String {
            self.parentQuotaId = value
        }
        if let value = dict["QueueStrategy"] as? String {
            self.queueStrategy = value
        }
        if let value = dict["QuotaConfig"] as? [String: Any?] {
            var model = QuotaConfig()
            model.fromMap(value)
            self.quotaConfig = model
        }
        if let value = dict["QuotaDetails"] as? [String: Any?] {
            var model = QuotaDetails()
            model.fromMap(value)
            self.quotaDetails = model
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubQuotas"] as? [Any?] {
            var tmp : [QuotaIdName] = []
            for v in value {
                if v != nil {
                    var model = QuotaIdName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subQuotas = tmp
        }
        if let value = dict["Workspaces"] as? [Any?] {
            var tmp : [WorkspaceIdName] = []
            for v in value {
                if v != nil {
                    var model = WorkspaceIdName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaces = tmp
        }
    }
}

public class QuotaConfig : Tea.TeaModel {
    public var ACS: ACS?

    public var clusterId: String?

    public var defaultGPUDriver: String?

    public var enablePreemptSubquotaWorkloads: Bool?

    public var resourceSpecs: [WorkspaceSpecs]?

    public var supportGPUDrivers: [String]?

    public var supportRDMA: Bool?

    public var userVpc: UserVpc?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ACS?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ACS != nil {
            map["ACS"] = self.ACS?.toMap()
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.defaultGPUDriver != nil {
            map["DefaultGPUDriver"] = self.defaultGPUDriver!
        }
        if self.enablePreemptSubquotaWorkloads != nil {
            map["EnablePreemptSubquotaWorkloads"] = self.enablePreemptSubquotaWorkloads!
        }
        if self.resourceSpecs != nil {
            var tmp : [Any] = []
            for k in self.resourceSpecs! {
                tmp.append(k.toMap())
            }
            map["ResourceSpecs"] = tmp
        }
        if self.supportGPUDrivers != nil {
            map["SupportGPUDrivers"] = self.supportGPUDrivers!
        }
        if self.supportRDMA != nil {
            map["SupportRDMA"] = self.supportRDMA!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ACS"] as? [String: Any?] {
            var model = ACS()
            model.fromMap(value)
            self.ACS = model
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DefaultGPUDriver"] as? String {
            self.defaultGPUDriver = value
        }
        if let value = dict["EnablePreemptSubquotaWorkloads"] as? Bool {
            self.enablePreemptSubquotaWorkloads = value
        }
        if let value = dict["ResourceSpecs"] as? [Any?] {
            var tmp : [WorkspaceSpecs] = []
            for v in value {
                if v != nil {
                    var model = WorkspaceSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceSpecs = tmp
        }
        if let value = dict["SupportGPUDrivers"] as? [String] {
            self.supportGPUDrivers = value
        }
        if let value = dict["SupportRDMA"] as? Bool {
            self.supportRDMA = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
    }
}

public class QuotaDetails : Tea.TeaModel {
    public var actualMinQuota: ResourceAmount?

    public var desiredMinQuota: ResourceAmount?

    public var requestedQuota: ResourceAmount?

    public var usedQuota: ResourceAmount?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.actualMinQuota?.validate()
        try self.desiredMinQuota?.validate()
        try self.requestedQuota?.validate()
        try self.usedQuota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualMinQuota != nil {
            map["ActualMinQuota"] = self.actualMinQuota?.toMap()
        }
        if self.desiredMinQuota != nil {
            map["DesiredMinQuota"] = self.desiredMinQuota?.toMap()
        }
        if self.requestedQuota != nil {
            map["RequestedQuota"] = self.requestedQuota?.toMap()
        }
        if self.usedQuota != nil {
            map["UsedQuota"] = self.usedQuota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActualMinQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.actualMinQuota = model
        }
        if let value = dict["DesiredMinQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.desiredMinQuota = model
        }
        if let value = dict["RequestedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.requestedQuota = model
        }
        if let value = dict["UsedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.usedQuota = model
        }
    }
}

public class QuotaIdName : Tea.TeaModel {
    public var quotaId: String?

    public var quotaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
    }
}

public class QuotaJob : Tea.TeaModel {
    public var queuing: Int64?

    public var running: Int64?

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
        if self.queuing != nil {
            map["Queuing"] = self.queuing!
        }
        if self.running != nil {
            map["Running"] = self.running!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Queuing"] as? Int64 {
            self.queuing = value
        }
        if let value = dict["Running"] as? Int64 {
            self.running = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class QuotaJobViewMetric : Tea.TeaModel {
    public var CPUUsageRate: String?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUUsageRate: String?

    public var jobId: String?

    public var jobType: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeNames: [String]?

    public var requestCPU: Int32?

    public var requestGPU: Int32?

    public var requestMemory: Int64?

    public var totalCPU: Int32?

    public var totalGPU: Int32?

    public var totalMemory: Int64?

    public var userId: String?

    public var task: Task?

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
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUUsageRate != nil {
            map["GPUUsageRate"] = self.GPUUsageRate!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUUsageRate"] as? String {
            self.GPUUsageRate = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeNames"] as? [String] {
            self.nodeNames = value
        }
        if let value = dict["RequestCPU"] as? Int32 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int32 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["TotalCPU"] as? Int32 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int32 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["task"] as? [String: Any?] {
            var model = Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class QuotaMetric : Tea.TeaModel {
    public var GPUType: String?

    public var metrics: [Metric]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [Metric] = []
            for v in value {
                if v != nil {
                    var model = Metric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
    }
}

public class QuotaNodeViewMetric : Tea.TeaModel {
    public var CPUUsageRate: String?

    public var createdTime: String?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUType: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeID: String?

    public var nodeStatus: String?

    public var nodeType: String?

    public var quotaId: String?

    public var requestCPU: Int64?

    public var requestGPU: Int64?

    public var requestMemory: Int64?

    public var taskIdMap: [String: Any]?

    public var totalCPU: Int64?

    public var totalGPU: Int64?

    public var totalMemory: Int64?

    public var totalTasks: Int64?

    public var userIDs: [String]?

    public var userNumber: String?

    public var tasks: [Task]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeID != nil {
            map["NodeID"] = self.nodeID!
        }
        if self.nodeStatus != nil {
            map["NodeStatus"] = self.nodeStatus!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.taskIdMap != nil {
            map["TaskIdMap"] = self.taskIdMap!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.totalTasks != nil {
            map["TotalTasks"] = self.totalTasks!
        }
        if self.userIDs != nil {
            map["UserIDs"] = self.userIDs!
        }
        if self.userNumber != nil {
            map["UserNumber"] = self.userNumber!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeID"] as? String {
            self.nodeID = value
        }
        if let value = dict["NodeStatus"] as? String {
            self.nodeStatus = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["RequestCPU"] as? Int64 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int64 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["TaskIdMap"] as? [String: Any] {
            self.taskIdMap = value
        }
        if let value = dict["TotalCPU"] as? Int64 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int64 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["TotalTasks"] as? Int64 {
            self.totalTasks = value
        }
        if let value = dict["UserIDs"] as? [String] {
            self.userIDs = value
        }
        if let value = dict["UserNumber"] as? String {
            self.userNumber = value
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [Task] = []
            for v in value {
                if v != nil {
                    var model = Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class QuotaTopo : Tea.TeaModel {
    public var depth: String?

    public var parentQuotaId: String?

    public var quotaDetails: QuotaDetails?

    public var quotaId: String?

    public var quotaName: String?

    public var resourceType: String?

    public var workloadDetails: WorkloadDetails?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaDetails?.validate()
        try self.workloadDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.parentQuotaId != nil {
            map["ParentQuotaId"] = self.parentQuotaId!
        }
        if self.quotaDetails != nil {
            map["QuotaDetails"] = self.quotaDetails?.toMap()
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.workloadDetails != nil {
            map["WorkloadDetails"] = self.workloadDetails?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Depth"] as? String {
            self.depth = value
        }
        if let value = dict["ParentQuotaId"] as? String {
            self.parentQuotaId = value
        }
        if let value = dict["QuotaDetails"] as? [String: Any?] {
            var model = QuotaDetails()
            model.fromMap(value)
            self.quotaDetails = model
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["WorkloadDetails"] as? [String: Any?] {
            var model = WorkloadDetails()
            model.fromMap(value)
            self.workloadDetails = model
        }
    }
}

public class QuotaUser : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var submitted: ResourceAmount?

        public var used: ResourceAmount?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.submitted?.validate()
            try self.used?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.submitted != nil {
                map["Submitted"] = self.submitted?.toMap()
            }
            if self.used != nil {
                map["Used"] = self.used?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Submitted"] as? [String: Any?] {
                var model = ResourceAmount()
                model.fromMap(value)
                self.submitted = model
            }
            if let value = dict["Used"] as? [String: Any?] {
                var model = ResourceAmount()
                model.fromMap(value)
                self.used = model
            }
        }
    }
    public var resources: QuotaUser.Resources?

    public var userId: String?

    public var username: String?

    public var workloadCount: Int32?

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
        if self.resources != nil {
            map["Resources"] = self.resources?.toMap()
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workloadCount != nil {
            map["WorkloadCount"] = self.workloadCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Resources"] as? [String: Any?] {
            var model = QuotaUser.Resources()
            model.fromMap(value)
            self.resources = model
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkloadCount"] as? Int32 {
            self.workloadCount = value
        }
    }
}

public class QuotaUserViewMetric : Tea.TeaModel {
    public var CPUNodeNumber: Int32?

    public var CPUUsageRate: String?

    public var cpuJobNames: [String]?

    public var cpuNodeNames: [String]?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUNodeNumber: Int32?

    public var GPUUsageRate: String?

    public var gpuJobNames: [String]?

    public var gpuNodeNames: [String]?

    public var jobType: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeNames: [String]?

    public var requestCPU: Int32?

    public var requestGPU: Int32?

    public var requestMemory: Int64?

    public var totalCPU: Int32?

    public var totalGPU: Int32?

    public var totalMemory: Int64?

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
        if self.CPUNodeNumber != nil {
            map["CPUNodeNumber"] = self.CPUNodeNumber!
        }
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.cpuJobNames != nil {
            map["CpuJobNames"] = self.cpuJobNames!
        }
        if self.cpuNodeNames != nil {
            map["CpuNodeNames"] = self.cpuNodeNames!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUNodeNumber != nil {
            map["GPUNodeNumber"] = self.GPUNodeNumber!
        }
        if self.GPUUsageRate != nil {
            map["GPUUsageRate"] = self.GPUUsageRate!
        }
        if self.gpuJobNames != nil {
            map["GpuJobNames"] = self.gpuJobNames!
        }
        if self.gpuNodeNames != nil {
            map["GpuNodeNames"] = self.gpuNodeNames!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUNodeNumber"] as? Int32 {
            self.CPUNodeNumber = value
        }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["CpuJobNames"] as? [String] {
            self.cpuJobNames = value
        }
        if let value = dict["CpuNodeNames"] as? [String] {
            self.cpuNodeNames = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUNodeNumber"] as? Int32 {
            self.GPUNodeNumber = value
        }
        if let value = dict["GPUUsageRate"] as? String {
            self.GPUUsageRate = value
        }
        if let value = dict["GpuJobNames"] as? [String] {
            self.gpuJobNames = value
        }
        if let value = dict["GpuNodeNames"] as? [String] {
            self.gpuNodeNames = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeNames"] as? [String] {
            self.nodeNames = value
        }
        if let value = dict["RequestCPU"] as? Int32 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int32 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["TotalCPU"] as? Int32 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int32 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ResourceAmount : Tea.TeaModel {
    public var CPU: String?

    public var GPU: String?

    public var GPUType: String?

    public var memory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPU"] as? String {
            self.CPU = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
    }
}

public class ResourceDiagnosisDetail : Tea.TeaModel {
    public var exceedResources: [String]?

    public var limit: ResourceAmount?

    public var status: String?

    public var used: ResourceAmount?

    public var workloadIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.limit?.validate()
        try self.used?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exceedResources != nil {
            map["ExceedResources"] = self.exceedResources!
        }
        if self.limit != nil {
            map["Limit"] = self.limit?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.used != nil {
            map["Used"] = self.used?.toMap()
        }
        if self.workloadIds != nil {
            map["WorkloadIds"] = self.workloadIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExceedResources"] as? [String] {
            self.exceedResources = value
        }
        if let value = dict["Limit"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.limit = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Used"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.used = model
        }
        if let value = dict["WorkloadIds"] as? [String] {
            self.workloadIds = value
        }
    }
}

public class ResourceGroup : Tea.TeaModel {
    public var creatorID: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var nodeCount: Int32?

    public var resourceGroupID: String?

    public var userVpc: UserVpc?

    public var workspaceID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatorID != nil {
            map["CreatorID"] = self.creatorID!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceID != nil {
            map["WorkspaceID"] = self.workspaceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorID"] as? String {
            self.creatorID = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceID"] as? String {
            self.workspaceID = value
        }
    }
}

public class ResourceGroupMetric : Tea.TeaModel {
    public var gpuType: String?

    public var metrics: [Metric]?

    public var resourceGroupID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [Metric] = []
            for v in value {
                if v != nil {
                    var model = Metric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class ResourceLimitDetails : Tea.TeaModel {
    public var GCLevel: String?

    public var resourceLimit: [String: Any]?

    public var shouldIgnoreResourceCheck: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.GCLevel != nil {
            map["GCLevel"] = self.GCLevel!
        }
        if self.resourceLimit != nil {
            map["ResourceLimit"] = self.resourceLimit!
        }
        if self.shouldIgnoreResourceCheck != nil {
            map["ShouldIgnoreResourceCheck"] = self.shouldIgnoreResourceCheck!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GCLevel"] as? String {
            self.GCLevel = value
        }
        if let value = dict["ResourceLimit"] as? [String: Any] {
            self.resourceLimit = value
        }
        if let value = dict["ShouldIgnoreResourceCheck"] as? Bool {
            self.shouldIgnoreResourceCheck = value
        }
    }
}

public class ResourceOperation : Tea.TeaModel {
    public var creatorId: String?

    public var gmtCreatedTime: String?

    public var gmtEndTime: String?

    public var gmtModifiedTime: String?

    public var gmtStartTime: String?

    public var objectId: String?

    public var objectType: String?

    public var operationDescription: String?

    public var operationId: String?

    public var operationSpecJson: String?

    public var operationType: String?

    public var reasonCode: String?

    public var reasonMessage: String?

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
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtEndTime != nil {
            map["GmtEndTime"] = self.gmtEndTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.operationSpecJson != nil {
            map["OperationSpecJson"] = self.operationSpecJson!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtEndTime"] as? String {
            self.gmtEndTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["OperationSpecJson"] as? String {
            self.operationSpecJson = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ResourceSpec : Tea.TeaModel {
    public var nodeSpecs: [NodeSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeSpecs != nil {
            var tmp : [Any] = []
            for k in self.nodeSpecs! {
                tmp.append(k.toMap())
            }
            map["NodeSpecs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeSpecs"] as? [Any?] {
            var tmp : [NodeSpec] = []
            for v in value {
                if v != nil {
                    var model = NodeSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeSpecs = tmp
        }
    }
}

public class Rules : Tea.TeaModel {
    public var schedulingRule: SchedulingRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schedulingRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.schedulingRule != nil {
            map["SchedulingRule"] = self.schedulingRule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SchedulingRule"] as? [String: Any?] {
            var model = SchedulingRule()
            model.fromMap(value)
            self.schedulingRule = model
        }
    }
}

public class SchedulingRule : Tea.TeaModel {
    public var cronTab: String?

    public var endAt: String?

    public var executeOnce: Bool?

    public var startAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronTab != nil {
            map["CronTab"] = self.cronTab!
        }
        if self.endAt != nil {
            map["EndAt"] = self.endAt!
        }
        if self.executeOnce != nil {
            map["ExecuteOnce"] = self.executeOnce!
        }
        if self.startAt != nil {
            map["StartAt"] = self.startAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CronTab"] as? String {
            self.cronTab = value
        }
        if let value = dict["EndAt"] as? String {
            self.endAt = value
        }
        if let value = dict["ExecuteOnce"] as? Bool {
            self.executeOnce = value
        }
        if let value = dict["StartAt"] as? String {
            self.startAt = value
        }
    }
}

public class SpotPriceItem : Tea.TeaModel {
    public var instanceType: String?

    public var spotDiscount: Double?

    public var timestamp: String?

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
        if self.spotDiscount != nil {
            map["SpotDiscount"] = self.spotDiscount!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["SpotDiscount"] as? Double {
            self.spotDiscount = value
        }
        if let value = dict["Timestamp"] as? String {
            self.timestamp = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class SpotStockPreview : Tea.TeaModel {
    public var instanceType: String?

    public var spotDiscount: Double?

    public var stockStatus: String?

    public override init() {
        super.init()
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
        if self.spotDiscount != nil {
            map["SpotDiscount"] = self.spotDiscount!
        }
        if self.stockStatus != nil {
            map["StockStatus"] = self.stockStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["SpotDiscount"] as? Double {
            self.spotDiscount = value
        }
        if let value = dict["StockStatus"] as? String {
            self.stockStatus = value
        }
    }
}

public class Task : Tea.TeaModel {
    public var actions: [Action]?

    public var description_: String?

    public var gmtActivatedTime: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var gmtStoppedTime: String?

    public var quotaId: String?

    public var rules: Rules?

    public var status: String?

    public var taskId: String?

    public var taskName: String?

    public var userId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtActivatedTime != nil {
            map["GmtActivatedTime"] = self.gmtActivatedTime!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtStoppedTime != nil {
            map["GmtStoppedTime"] = self.gmtStoppedTime!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [Action] = []
            for v in value {
                if v != nil {
                    var model = Action()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtActivatedTime"] as? String {
            self.gmtActivatedTime = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtStoppedTime"] as? String {
            self.gmtStoppedTime = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["Rules"] as? [String: Any?] {
            var model = Rules()
            model.fromMap(value)
            self.rules = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class TaskInstance : Tea.TeaModel {
    public var gmtCreatedTime: String?

    public var gmtEndTime: String?

    public var status: String?

    public var taskId: String?

    public var taskInstanceId: String?

    public var tenantId: String?

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
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtEndTime != nil {
            map["GmtEndTime"] = self.gmtEndTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskInstanceId != nil {
            map["TaskInstanceId"] = self.taskInstanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtEndTime"] as? String {
            self.gmtEndTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskInstanceId"] as? String {
            self.taskInstanceId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class TaskInstanceEvent : Tea.TeaModel {
    public var gmtEndTime: String?

    public var gmtStartTime: String?

    public var message: String?

    public var podName: String?

    public var status: String?

    public var workloadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtEndTime != nil {
            map["GmtEndTime"] = self.gmtEndTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.podName != nil {
            map["PodName"] = self.podName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtEndTime"] as? String {
            self.gmtEndTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PodName"] as? String {
            self.podName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkloadType"] as? String {
            self.workloadType = value
        }
    }
}

public class TimeRangeFilter : Tea.TeaModel {
    public var endTime: String?

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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class UnschedulableNodeDetail : Tea.TeaModel {
    public var nodes: [String]?

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
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Nodes"] as? [String] {
            self.nodes = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
    }
}

public class UserInfo : Tea.TeaModel {
    public var userId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UserQuotaPermission : Tea.TeaModel {
    public var permissions: [String]?

    public var quotaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permissions"] as? [String] {
            self.permissions = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
    }
}

public class UserViewMetric : Tea.TeaModel {
    public var CPUNodeNumber: Int32?

    public var CPUUsageRate: String?

    public var cpuJobNames: [String]?

    public var cpuNodeNames: [String]?

    public var diskReadRate: String?

    public var diskWriteRate: String?

    public var GPUNodeNumber: Int32?

    public var GPUUsageRate: String?

    public var gpuJobNames: [String]?

    public var gpuNodeNames: [String]?

    public var jobType: String?

    public var memoryUsageRate: String?

    public var networkInputRate: String?

    public var networkOutputRate: String?

    public var nodeNames: [String]?

    public var requestCPU: Int32?

    public var requestGPU: Int32?

    public var requestMemory: Int64?

    public var resourceGroupId: String?

    public var totalCPU: Int32?

    public var totalGPU: Int32?

    public var totalMemory: Int64?

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
        if self.CPUNodeNumber != nil {
            map["CPUNodeNumber"] = self.CPUNodeNumber!
        }
        if self.CPUUsageRate != nil {
            map["CPUUsageRate"] = self.CPUUsageRate!
        }
        if self.cpuJobNames != nil {
            map["CpuJobNames"] = self.cpuJobNames!
        }
        if self.cpuNodeNames != nil {
            map["CpuNodeNames"] = self.cpuNodeNames!
        }
        if self.diskReadRate != nil {
            map["DiskReadRate"] = self.diskReadRate!
        }
        if self.diskWriteRate != nil {
            map["DiskWriteRate"] = self.diskWriteRate!
        }
        if self.GPUNodeNumber != nil {
            map["GPUNodeNumber"] = self.GPUNodeNumber!
        }
        if self.GPUUsageRate != nil {
            map["GPUUsageRate"] = self.GPUUsageRate!
        }
        if self.gpuJobNames != nil {
            map["GpuJobNames"] = self.gpuJobNames!
        }
        if self.gpuNodeNames != nil {
            map["GpuNodeNames"] = self.gpuNodeNames!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.memoryUsageRate != nil {
            map["MemoryUsageRate"] = self.memoryUsageRate!
        }
        if self.networkInputRate != nil {
            map["NetworkInputRate"] = self.networkInputRate!
        }
        if self.networkOutputRate != nil {
            map["NetworkOutputRate"] = self.networkOutputRate!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.totalCPU != nil {
            map["TotalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["TotalGPU"] = self.totalGPU!
        }
        if self.totalMemory != nil {
            map["TotalMemory"] = self.totalMemory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPUNodeNumber"] as? Int32 {
            self.CPUNodeNumber = value
        }
        if let value = dict["CPUUsageRate"] as? String {
            self.CPUUsageRate = value
        }
        if let value = dict["CpuJobNames"] as? [String] {
            self.cpuJobNames = value
        }
        if let value = dict["CpuNodeNames"] as? [String] {
            self.cpuNodeNames = value
        }
        if let value = dict["DiskReadRate"] as? String {
            self.diskReadRate = value
        }
        if let value = dict["DiskWriteRate"] as? String {
            self.diskWriteRate = value
        }
        if let value = dict["GPUNodeNumber"] as? Int32 {
            self.GPUNodeNumber = value
        }
        if let value = dict["GPUUsageRate"] as? String {
            self.GPUUsageRate = value
        }
        if let value = dict["GpuJobNames"] as? [String] {
            self.gpuJobNames = value
        }
        if let value = dict["GpuNodeNames"] as? [String] {
            self.gpuNodeNames = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MemoryUsageRate"] as? String {
            self.memoryUsageRate = value
        }
        if let value = dict["NetworkInputRate"] as? String {
            self.networkInputRate = value
        }
        if let value = dict["NetworkOutputRate"] as? String {
            self.networkOutputRate = value
        }
        if let value = dict["NodeNames"] as? [String] {
            self.nodeNames = value
        }
        if let value = dict["RequestCPU"] as? Int32 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? Int32 {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? Int64 {
            self.requestMemory = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["TotalCPU"] as? Int32 {
            self.totalCPU = value
        }
        if let value = dict["TotalGPU"] as? Int32 {
            self.totalGPU = value
        }
        if let value = dict["TotalMemory"] as? Int64 {
            self.totalMemory = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class UserVpc : Tea.TeaModel {
    public var defaultForwardInfo: ForwardInfo?

    public var defaultRoute: String?

    public var extendedCIDRs: [String]?

    public var roleArn: String?

    public var securityGroupId: String?

    public var switchId: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultForwardInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultForwardInfo != nil {
            map["DefaultForwardInfo"] = self.defaultForwardInfo?.toMap()
        }
        if self.defaultRoute != nil {
            map["DefaultRoute"] = self.defaultRoute!
        }
        if self.extendedCIDRs != nil {
            map["ExtendedCIDRs"] = self.extendedCIDRs!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultForwardInfo"] as? [String: Any?] {
            var model = ForwardInfo()
            model.fromMap(value)
            self.defaultForwardInfo = model
        }
        if let value = dict["DefaultRoute"] as? String {
            self.defaultRoute = value
        }
        if let value = dict["ExtendedCIDRs"] as? [String] {
            self.extendedCIDRs = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["SwitchId"] as? String {
            self.switchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class WorkloadDetails : Tea.TeaModel {
    public var DLC: QuotaJob?

    public var DSW: QuotaJob?

    public var EAS: QuotaJob?

    public var summary: QuotaJob?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DLC?.validate()
        try self.DSW?.validate()
        try self.EAS?.validate()
        try self.summary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DLC != nil {
            map["DLC"] = self.DLC?.toMap()
        }
        if self.DSW != nil {
            map["DSW"] = self.DSW?.toMap()
        }
        if self.EAS != nil {
            map["EAS"] = self.EAS?.toMap()
        }
        if self.summary != nil {
            map["Summary"] = self.summary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DLC"] as? [String: Any?] {
            var model = QuotaJob()
            model.fromMap(value)
            self.DLC = model
        }
        if let value = dict["DSW"] as? [String: Any?] {
            var model = QuotaJob()
            model.fromMap(value)
            self.DSW = model
        }
        if let value = dict["EAS"] as? [String: Any?] {
            var model = QuotaJob()
            model.fromMap(value)
            self.EAS = model
        }
        if let value = dict["Summary"] as? [String: Any?] {
            var model = QuotaJob()
            model.fromMap(value)
            self.summary = model
        }
    }
}

public class WorkspaceIdName : Tea.TeaModel {
    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class WorkspaceSpec : Tea.TeaModel {
    public var code: String?

    public var codeType: String?

    public var isGuaranteedValid: Bool?

    public var isOverSoldValid: Bool?

    public var reason: String?

    public var spec: ResourceAmount?

    public var specName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.codeType != nil {
            map["CodeType"] = self.codeType!
        }
        if self.isGuaranteedValid != nil {
            map["IsGuaranteedValid"] = self.isGuaranteedValid!
        }
        if self.isOverSoldValid != nil {
            map["IsOverSoldValid"] = self.isOverSoldValid!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        if self.specName != nil {
            map["SpecName"] = self.specName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CodeType"] as? String {
            self.codeType = value
        }
        if let value = dict["IsGuaranteedValid"] as? Bool {
            self.isGuaranteedValid = value
        }
        if let value = dict["IsOverSoldValid"] as? Bool {
            self.isOverSoldValid = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Spec"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["SpecName"] as? String {
            self.specName = value
        }
    }
}

public class WorkspaceSpecs : Tea.TeaModel {
    public var product: String?

    public var specs: [WorkspaceSpec]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.specs != nil {
            var tmp : [Any] = []
            for k in self.specs! {
                tmp.append(k.toMap())
            }
            map["Specs"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["Specs"] as? [Any?] {
            var tmp : [WorkspaceSpec] = []
            for v in value {
                if v != nil {
                    var model = WorkspaceSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.specs = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetQuotaRequest : Tea.TeaModel {
    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class GetQuotaResponseBody : Tea.TeaModel {
    public var allocateStrategy: String?

    public var creatorId: String?

    public var description_: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestOperationId: String?

    public var min: ResourceSpec?

    public var parentQuotaId: String?

    public var queueStrategy: String?

    public var quotaConfig: QuotaConfig?

    public var quotaDetails: QuotaDetails?

    public var quotaId: String?

    public var quotaName: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var resourceGroupIds: [String]?

    public var resourceType: String?

    public var status: String?

    public var subQuotas: [QuotaIdName]?

    public var workspaces: [WorkspaceIdName]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.min?.validate()
        try self.quotaConfig?.validate()
        try self.quotaDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocateStrategy != nil {
            map["AllocateStrategy"] = self.allocateStrategy!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestOperationId != nil {
            map["LatestOperationId"] = self.latestOperationId!
        }
        if self.min != nil {
            map["Min"] = self.min?.toMap()
        }
        if self.parentQuotaId != nil {
            map["ParentQuotaId"] = self.parentQuotaId!
        }
        if self.queueStrategy != nil {
            map["QueueStrategy"] = self.queueStrategy!
        }
        if self.quotaConfig != nil {
            map["QuotaConfig"] = self.quotaConfig?.toMap()
        }
        if self.quotaDetails != nil {
            map["QuotaDetails"] = self.quotaDetails?.toMap()
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subQuotas != nil {
            var tmp : [Any] = []
            for k in self.subQuotas! {
                tmp.append(k.toMap())
            }
            map["SubQuotas"] = tmp
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["Workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocateStrategy"] as? String {
            self.allocateStrategy = value
        }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestOperationId"] as? String {
            self.latestOperationId = value
        }
        if let value = dict["Min"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.min = model
        }
        if let value = dict["ParentQuotaId"] as? String {
            self.parentQuotaId = value
        }
        if let value = dict["QueueStrategy"] as? String {
            self.queueStrategy = value
        }
        if let value = dict["QuotaConfig"] as? [String: Any?] {
            var model = QuotaConfig()
            model.fromMap(value)
            self.quotaConfig = model
        }
        if let value = dict["QuotaDetails"] as? [String: Any?] {
            var model = QuotaDetails()
            model.fromMap(value)
            self.quotaDetails = model
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubQuotas"] as? [Any?] {
            var tmp : [QuotaIdName] = []
            for v in value {
                if v != nil {
                    var model = QuotaIdName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subQuotas = tmp
        }
        if let value = dict["Workspaces"] as? [Any?] {
            var tmp : [WorkspaceIdName] = []
            for v in value {
                if v != nil {
                    var model = WorkspaceIdName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaces = tmp
        }
    }
}

public class GetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupRequest : Tea.TeaModel {
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
    public var isAIWorkspaceDataEnabled: Bool?

    public var tag: [GetResourceGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isAIWorkspaceDataEnabled != nil {
            map["IsAIWorkspaceDataEnabled"] = self.isAIWorkspaceDataEnabled!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsAIWorkspaceDataEnabled"] as? Bool {
            self.isAIWorkspaceDataEnabled = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetResourceGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupRequest.Tag()
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

public class GetResourceGroupShrinkRequest : Tea.TeaModel {
    public var isAIWorkspaceDataEnabled: Bool?

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
        if self.isAIWorkspaceDataEnabled != nil {
            map["IsAIWorkspaceDataEnabled"] = self.isAIWorkspaceDataEnabled!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsAIWorkspaceDataEnabled"] as? Bool {
            self.isAIWorkspaceDataEnabled = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class GetResourceGroupResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var clusterID: String?

    public var computingResourceProvider: String?

    public var creatorID: String?

    public var description_: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var resourceType: String?

    public var status: String?

    public var supportRDMA: Bool?

    public var tags: [GetResourceGroupResponseBody.Tags]?

    public var userVpc: UserVpc?

    public var workspaceID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterID != nil {
            map["ClusterID"] = self.clusterID!
        }
        if self.computingResourceProvider != nil {
            map["ComputingResourceProvider"] = self.computingResourceProvider!
        }
        if self.creatorID != nil {
            map["CreatorID"] = self.creatorID!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportRDMA != nil {
            map["SupportRDMA"] = self.supportRDMA!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceID != nil {
            map["WorkspaceID"] = self.workspaceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterID"] as? String {
            self.clusterID = value
        }
        if let value = dict["ComputingResourceProvider"] as? String {
            self.computingResourceProvider = value
        }
        if let value = dict["CreatorID"] as? String {
            self.creatorID = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportRDMA"] as? Bool {
            self.supportRDMA = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetResourceGroupResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceID"] as? String {
            self.workspaceID = value
        }
    }
}

public class GetResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupMachineGroupRequest : Tea.TeaModel {
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
    public var tag: [GetResourceGroupMachineGroupRequest.Tag]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetResourceGroupMachineGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupMachineGroupRequest.Tag()
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

public class GetResourceGroupMachineGroupShrinkRequest : Tea.TeaModel {
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class GetResourceGroupMachineGroupResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var cpu: String?

    public var defaultDriver: String?

    public var ecsCount: Int64?

    public var ecsSpec: String?

    public var gmtCreatedTime: String?

    public var gmtExpiredTime: String?

    public var gmtModifiedTime: String?

    public var gmtStartedTime: String?

    public var gpu: String?

    public var gpuType: String?

    public var machineGroupID: String?

    public var memory: String?

    public var name: String?

    public var paymentDuration: String?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var requestId: String?

    public var resourceGroupID: String?

    public var status: String?

    public var supportedDrivers: [String]?

    public var tags: [GetResourceGroupMachineGroupResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.defaultDriver != nil {
            map["DefaultDriver"] = self.defaultDriver!
        }
        if self.ecsCount != nil {
            map["EcsCount"] = self.ecsCount!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.gmtCreatedTime != nil {
            map["GmtCreatedTime"] = self.gmtCreatedTime!
        }
        if self.gmtExpiredTime != nil {
            map["GmtExpiredTime"] = self.gmtExpiredTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtStartedTime != nil {
            map["GmtStartedTime"] = self.gmtStartedTime!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportedDrivers != nil {
            map["SupportedDrivers"] = self.supportedDrivers!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cpu"] as? String {
            self.cpu = value
        }
        if let value = dict["DefaultDriver"] as? String {
            self.defaultDriver = value
        }
        if let value = dict["EcsCount"] as? Int64 {
            self.ecsCount = value
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["GmtCreatedTime"] as? String {
            self.gmtCreatedTime = value
        }
        if let value = dict["GmtExpiredTime"] as? String {
            self.gmtExpiredTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtStartedTime"] as? String {
            self.gmtStartedTime = value
        }
        if let value = dict["Gpu"] as? String {
            self.gpu = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PaymentDuration"] as? String {
            self.paymentDuration = value
        }
        if let value = dict["PaymentDurationUnit"] as? String {
            self.paymentDurationUnit = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportedDrivers"] as? [String] {
            self.supportedDrivers = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetResourceGroupMachineGroupResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupMachineGroupResponseBody.Tags()
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

public class GetResourceGroupMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupMachineGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceGroupMachineGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupRequestRequest : Tea.TeaModel {
    public var podStatus: String?

    public var resourceGroupID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.podStatus != nil {
            map["PodStatus"] = self.podStatus!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PodStatus"] as? String {
            self.podStatus = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class GetResourceGroupRequestResponseBody : Tea.TeaModel {
    public var requestCPU: Int32?

    public var requestGPU: Int32?

    public var requestGPUInfos: [GPUInfo]?

    public var requestMemory: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestCPU != nil {
            map["requestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["requestGPU"] = self.requestGPU!
        }
        if self.requestGPUInfos != nil {
            var tmp : [Any] = []
            for k in self.requestGPUInfos! {
                tmp.append(k.toMap())
            }
            map["requestGPUInfos"] = tmp
        }
        if self.requestMemory != nil {
            map["requestMemory"] = self.requestMemory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestCPU"] as? Int32 {
            self.requestCPU = value
        }
        if let value = dict["requestGPU"] as? Int32 {
            self.requestGPU = value
        }
        if let value = dict["requestGPUInfos"] as? [Any?] {
            var tmp : [GPUInfo] = []
            for v in value {
                if v != nil {
                    var model = GPUInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.requestGPUInfos = tmp
        }
        if let value = dict["requestMemory"] as? Int32 {
            self.requestMemory = value
        }
    }
}

public class GetResourceGroupRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupRequestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceGroupRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupTotalRequest : Tea.TeaModel {
    public var resourceGroupID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class GetResourceGroupTotalResponseBody : Tea.TeaModel {
    public var totalCPU: Int32?

    public var totalGPU: Int32?

    public var totalGPUInfos: [GPUInfo]?

    public var totalMemory: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.totalCPU != nil {
            map["totalCPU"] = self.totalCPU!
        }
        if self.totalGPU != nil {
            map["totalGPU"] = self.totalGPU!
        }
        if self.totalGPUInfos != nil {
            var tmp : [Any] = []
            for k in self.totalGPUInfos! {
                tmp.append(k.toMap())
            }
            map["totalGPUInfos"] = tmp
        }
        if self.totalMemory != nil {
            map["totalMemory"] = self.totalMemory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["totalCPU"] as? Int32 {
            self.totalCPU = value
        }
        if let value = dict["totalGPU"] as? Int32 {
            self.totalGPU = value
        }
        if let value = dict["totalGPUInfos"] as? [Any?] {
            var tmp : [GPUInfo] = []
            for v in value {
                if v != nil {
                    var model = GPUInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.totalGPUInfos = tmp
        }
        if let value = dict["totalMemory"] as? Int32 {
            self.totalMemory = value
        }
    }
}

public class GetResourceGroupTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupTotalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceGroupTotalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserAliUidByInstanceIdRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceOwnerUid: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerUid != nil {
            map["ResourceOwnerUid"] = self.resourceOwnerUid!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerUid"] as? String {
            self.resourceOwnerUid = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetUserAliUidByInstanceIdResponseBody : Tea.TeaModel {
    public var applicationId: String?

    public var applicationName: String?

    public var code: String?

    public var cpus: Int64?

    public var createTime: Int64?

    public var intranetIp: String?

    public var memory: Int64?

    public var message: String?

    public var namespaceId: String?

    public var podName: String?

    public var podUid: String?

    public var requestId: String?

    public var resouceType: String?

    public var resourceInstanceId: String?

    public var status: String?

    public var updateTime: Int64?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cpus != nil {
            map["Cpus"] = self.cpus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.intranetIp != nil {
            map["IntranetIp"] = self.intranetIp!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.podName != nil {
            map["PodName"] = self.podName!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resouceType != nil {
            map["ResouceType"] = self.resouceType!
        }
        if self.resourceInstanceId != nil {
            map["ResourceInstanceId"] = self.resourceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.userUid != nil {
            map["UserUid"] = self.userUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Cpus"] as? Int64 {
            self.cpus = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["IntranetIp"] as? String {
            self.intranetIp = value
        }
        if let value = dict["Memory"] as? Int64 {
            self.memory = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PodName"] as? String {
            self.podName = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResouceType"] as? String {
            self.resouceType = value
        }
        if let value = dict["ResourceInstanceId"] as? String {
            self.resourceInstanceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
        if let value = dict["UserUid"] as? String {
            self.userUid = value
        }
    }
}

public class GetUserAliUidByInstanceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserAliUidByInstanceIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserAliUidByInstanceIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserViewMetricsRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sortBy: String?

    public var timeStep: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["Order"] = self.order!
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
        if self.timeStep != nil {
            map["TimeStep"] = self.timeStep!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["TimeStep"] as? String {
            self.timeStep = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetUserViewMetricsResponseBody : Tea.TeaModel {
    public var resourceGroupId: String?

    public var summary: UserViewMetric?

    public var total: Int32?

    public var userMetrics: [UserViewMetric]?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.summary != nil {
            map["Summary"] = self.summary?.toMap()
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.userMetrics != nil {
            var tmp : [Any] = []
            for k in self.userMetrics! {
                tmp.append(k.toMap())
            }
            map["UserMetrics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Summary"] as? [String: Any?] {
            var model = UserViewMetric()
            model.fromMap(value)
            self.summary = model
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["UserMetrics"] as? [Any?] {
            var tmp : [UserViewMetric] = []
            for v in value {
                if v != nil {
                    var model = UserViewMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userMetrics = tmp
        }
    }
}

public class GetUserViewMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserViewMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserViewMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCacheServicesRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var quotaId: String?

    public override init() {
        super.init()
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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
    }
}

public class ListDataCacheServicesResponseBody : Tea.TeaModel {
    public var cacheServices: [CacheService]?

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
        if self.cacheServices != nil {
            var tmp : [Any] = []
            for k in self.cacheServices! {
                tmp.append(k.toMap())
            }
            map["CacheServices"] = tmp
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
        if let value = dict["CacheServices"] as? [Any?] {
            var tmp : [CacheService] = []
            for v in value {
                if v != nil {
                    var model = CacheService()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cacheServices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListDataCacheServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCacheServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataCacheServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public class HealthCount : Tea.TeaModel {
        public var operation: String?

        public var value: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operation != nil {
                map["operation"] = self.operation!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["operation"] as? String {
                self.operation = value
            }
            if let value = dict["value"] as? Int32 {
                self.value = value
            }
        }
    }
    public class HealthRate : Tea.TeaModel {
        public var operation: String?

        public var value: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operation != nil {
                map["operation"] = self.operation!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["operation"] as? String {
                self.operation = value
            }
            if let value = dict["value"] as? Int32 {
                self.value = value
            }
        }
    }
    public var acceleratorType: String?

    public var availabilityZone: String?

    public var cliqueID: String?

    public var filterByQuotaId: String?

    public var filterByResourceGroupIds: String?

    public var GPUType: String?

    public var healthCount: ListNodesRequest.HealthCount?

    public var healthRate: ListNodesRequest.HealthRate?

    public var hyperNode: String?

    public var hyperZone: String?

    public var layoutMode: String?

    public var machineGroupIds: String?

    public var nodeNames: String?

    public var nodeStatuses: String?

    public var nodeTypes: String?

    public var order: String?

    public var orderInstanceIds: String?

    public var orderStatuses: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentType: String?

    public var quotaId: String?

    public var reasonCodes: String?

    public var resourceGroupIds: String?

    public var sortBy: String?

    public var verbose: Bool?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.healthCount?.validate()
        try self.healthRate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.availabilityZone != nil {
            map["AvailabilityZone"] = self.availabilityZone!
        }
        if self.cliqueID != nil {
            map["CliqueID"] = self.cliqueID!
        }
        if self.filterByQuotaId != nil {
            map["FilterByQuotaId"] = self.filterByQuotaId!
        }
        if self.filterByResourceGroupIds != nil {
            map["FilterByResourceGroupIds"] = self.filterByResourceGroupIds!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.healthCount != nil {
            map["HealthCount"] = self.healthCount?.toMap()
        }
        if self.healthRate != nil {
            map["HealthRate"] = self.healthRate?.toMap()
        }
        if self.hyperNode != nil {
            map["HyperNode"] = self.hyperNode!
        }
        if self.hyperZone != nil {
            map["HyperZone"] = self.hyperZone!
        }
        if self.layoutMode != nil {
            map["LayoutMode"] = self.layoutMode!
        }
        if self.machineGroupIds != nil {
            map["MachineGroupIds"] = self.machineGroupIds!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.nodeStatuses != nil {
            map["NodeStatuses"] = self.nodeStatuses!
        }
        if self.nodeTypes != nil {
            map["NodeTypes"] = self.nodeTypes!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderInstanceIds != nil {
            map["OrderInstanceIds"] = self.orderInstanceIds!
        }
        if self.orderStatuses != nil {
            map["OrderStatuses"] = self.orderStatuses!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.reasonCodes != nil {
            map["ReasonCodes"] = self.reasonCodes!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["AvailabilityZone"] as? String {
            self.availabilityZone = value
        }
        if let value = dict["CliqueID"] as? String {
            self.cliqueID = value
        }
        if let value = dict["FilterByQuotaId"] as? String {
            self.filterByQuotaId = value
        }
        if let value = dict["FilterByResourceGroupIds"] as? String {
            self.filterByResourceGroupIds = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["HealthCount"] as? [String: Any?] {
            var model = ListNodesRequest.HealthCount()
            model.fromMap(value)
            self.healthCount = model
        }
        if let value = dict["HealthRate"] as? [String: Any?] {
            var model = ListNodesRequest.HealthRate()
            model.fromMap(value)
            self.healthRate = model
        }
        if let value = dict["HyperNode"] as? String {
            self.hyperNode = value
        }
        if let value = dict["HyperZone"] as? String {
            self.hyperZone = value
        }
        if let value = dict["LayoutMode"] as? String {
            self.layoutMode = value
        }
        if let value = dict["MachineGroupIds"] as? String {
            self.machineGroupIds = value
        }
        if let value = dict["NodeNames"] as? String {
            self.nodeNames = value
        }
        if let value = dict["NodeStatuses"] as? String {
            self.nodeStatuses = value
        }
        if let value = dict["NodeTypes"] as? String {
            self.nodeTypes = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderInstanceIds"] as? String {
            self.orderInstanceIds = value
        }
        if let value = dict["OrderStatuses"] as? String {
            self.orderStatuses = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["ReasonCodes"] as? String {
            self.reasonCodes = value
        }
        if let value = dict["ResourceGroupIds"] as? String {
            self.resourceGroupIds = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListNodesShrinkRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var availabilityZone: String?

    public var cliqueID: String?

    public var filterByQuotaId: String?

    public var filterByResourceGroupIds: String?

    public var GPUType: String?

    public var healthCountShrink: String?

    public var healthRateShrink: String?

    public var hyperNode: String?

    public var hyperZone: String?

    public var layoutMode: String?

    public var machineGroupIds: String?

    public var nodeNames: String?

    public var nodeStatuses: String?

    public var nodeTypes: String?

    public var order: String?

    public var orderInstanceIds: String?

    public var orderStatuses: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentType: String?

    public var quotaId: String?

    public var reasonCodes: String?

    public var resourceGroupIds: String?

    public var sortBy: String?

    public var verbose: Bool?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.availabilityZone != nil {
            map["AvailabilityZone"] = self.availabilityZone!
        }
        if self.cliqueID != nil {
            map["CliqueID"] = self.cliqueID!
        }
        if self.filterByQuotaId != nil {
            map["FilterByQuotaId"] = self.filterByQuotaId!
        }
        if self.filterByResourceGroupIds != nil {
            map["FilterByResourceGroupIds"] = self.filterByResourceGroupIds!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.healthCountShrink != nil {
            map["HealthCount"] = self.healthCountShrink!
        }
        if self.healthRateShrink != nil {
            map["HealthRate"] = self.healthRateShrink!
        }
        if self.hyperNode != nil {
            map["HyperNode"] = self.hyperNode!
        }
        if self.hyperZone != nil {
            map["HyperZone"] = self.hyperZone!
        }
        if self.layoutMode != nil {
            map["LayoutMode"] = self.layoutMode!
        }
        if self.machineGroupIds != nil {
            map["MachineGroupIds"] = self.machineGroupIds!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.nodeStatuses != nil {
            map["NodeStatuses"] = self.nodeStatuses!
        }
        if self.nodeTypes != nil {
            map["NodeTypes"] = self.nodeTypes!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderInstanceIds != nil {
            map["OrderInstanceIds"] = self.orderInstanceIds!
        }
        if self.orderStatuses != nil {
            map["OrderStatuses"] = self.orderStatuses!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.reasonCodes != nil {
            map["ReasonCodes"] = self.reasonCodes!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["AvailabilityZone"] as? String {
            self.availabilityZone = value
        }
        if let value = dict["CliqueID"] as? String {
            self.cliqueID = value
        }
        if let value = dict["FilterByQuotaId"] as? String {
            self.filterByQuotaId = value
        }
        if let value = dict["FilterByResourceGroupIds"] as? String {
            self.filterByResourceGroupIds = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["HealthCount"] as? String {
            self.healthCountShrink = value
        }
        if let value = dict["HealthRate"] as? String {
            self.healthRateShrink = value
        }
        if let value = dict["HyperNode"] as? String {
            self.hyperNode = value
        }
        if let value = dict["HyperZone"] as? String {
            self.hyperZone = value
        }
        if let value = dict["LayoutMode"] as? String {
            self.layoutMode = value
        }
        if let value = dict["MachineGroupIds"] as? String {
            self.machineGroupIds = value
        }
        if let value = dict["NodeNames"] as? String {
            self.nodeNames = value
        }
        if let value = dict["NodeStatuses"] as? String {
            self.nodeStatuses = value
        }
        if let value = dict["NodeTypes"] as? String {
            self.nodeTypes = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderInstanceIds"] as? String {
            self.orderInstanceIds = value
        }
        if let value = dict["OrderStatuses"] as? String {
            self.orderStatuses = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["ReasonCodes"] as? String {
            self.reasonCodes = value
        }
        if let value = dict["ResourceGroupIds"] as? String {
            self.resourceGroupIds = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public var nodes: [Node]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
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
        if let value = dict["Nodes"] as? [Any?] {
            var tmp : [Node] = []
            for v in value {
                if v != nil {
                    var model = Node()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotasRequest : Tea.TeaModel {
    public var labels: String?

    public var layoutMode: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentQuotaId: String?

    public var quotaIds: String?

    public var quotaName: String?

    public var resourceType: String?

    public var sortBy: String?

    public var statuses: String?

    public var verbose: Bool?

    public var workspaceIds: String?

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
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.layoutMode != nil {
            map["LayoutMode"] = self.layoutMode!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentQuotaId != nil {
            map["ParentQuotaId"] = self.parentQuotaId!
        }
        if self.quotaIds != nil {
            map["QuotaIds"] = self.quotaIds!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["LayoutMode"] as? String {
            self.layoutMode = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentQuotaId"] as? String {
            self.parentQuotaId = value
        }
        if let value = dict["QuotaIds"] as? String {
            self.quotaIds = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Statuses"] as? String {
            self.statuses = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceIds"] as? String {
            self.workspaceIds = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class ListQuotasResponseBody : Tea.TeaModel {
    public var quotas: [Quota]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Quotas"] as? [Any?] {
            var tmp : [Quota] = []
            for v in value {
                if v != nil {
                    var model = Quota()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceGroupMachineGroupsRequest : Tea.TeaModel {
    public var creatorID: String?

    public var ecsSpec: String?

    public var name: String?

    public var order: String?

    public var orderInstanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentDuration: String?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var sortBy: String?

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
        if self.creatorID != nil {
            map["CreatorID"] = self.creatorID!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderInstanceId != nil {
            map["OrderInstanceId"] = self.orderInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorID"] as? String {
            self.creatorID = value
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderInstanceId"] as? String {
            self.orderInstanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentDuration"] as? String {
            self.paymentDuration = value
        }
        if let value = dict["PaymentDurationUnit"] as? String {
            self.paymentDurationUnit = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListResourceGroupMachineGroupsResponseBody : Tea.TeaModel {
    public var machineGroups: [MachineGroup]?

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
        if self.machineGroups != nil {
            var tmp : [Any] = []
            for k in self.machineGroups! {
                tmp.append(k.toMap())
            }
            map["MachineGroups"] = tmp
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
        if let value = dict["MachineGroups"] as? [Any?] {
            var tmp : [MachineGroup] = []
            for v in value {
                if v != nil {
                    var model = MachineGroup()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.machineGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListResourceGroupMachineGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceGroupMachineGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceGroupMachineGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceGroupsRequest : Tea.TeaModel {
    public var computingResourceProvider: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceType: String?

    public var showAll: Bool?

    public var sortBy: String?

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
        if self.computingResourceProvider != nil {
            map["ComputingResourceProvider"] = self.computingResourceProvider!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.showAll != nil {
            map["ShowAll"] = self.showAll!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingResourceProvider"] as? String {
            self.computingResourceProvider = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ShowAll"] as? Bool {
            self.showAll = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListResourceGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceGroups: [ResourceGroup]?

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
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroups != nil {
            var tmp : [Any] = []
            for k in self.resourceGroups! {
                tmp.append(k.toMap())
            }
            map["ResourceGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroups"] as? [Any?] {
            var tmp : [ResourceGroup] = []
            for v in value {
                if v != nil {
                    var model = ResourceGroup()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceGroupsResponseBody()
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
    public var category: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var scope: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Tag"] as? [Any?] {
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
        if let value = dict["TagOwnerUid"] as? Int64 {
            self.tagOwnerUid = value
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var scope: String?

    public var tagShrink: String?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdShrink != nil {
            map["ResourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["TagOwnerUid"] as? Int64 {
            self.tagOwnerUid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
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

public class TagResourcesSystemTagsRequest : Tea.TeaModel {
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
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var scope: String?

    public var tag: [TagResourcesSystemTagsRequest.Tag]?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesSystemTagsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesSystemTagsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TagOwnerUid"] as? Int64 {
            self.tagOwnerUid = value
        }
    }
}

public class TagResourcesSystemTagsResponseBody : Tea.TeaModel {
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

public class TagResourcesSystemTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesSystemTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesSystemTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesSystemTagsRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
        if let value = dict["TagOwnerUid"] as? Int64 {
            self.tagOwnerUid = value
        }
    }
}

public class UntagResourcesSystemTagsShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagKeyShrink: String?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.resourceIdShrink != nil {
            map["ResourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeyShrink != nil {
            map["TagKey"] = self.tagKeyShrink!
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKeyShrink = value
        }
        if let value = dict["TagOwnerUid"] as? Int64 {
            self.tagOwnerUid = value
        }
    }
}

public class UntagResourcesSystemTagsResponseBody : Tea.TeaModel {
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

public class UntagResourcesSystemTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesSystemTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesSystemTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
