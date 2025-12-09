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

public class AssignNodeSpec : Tea.TeaModel {
    public var antiAffinityNodeNames: String?

    public var enableAssignNode: Bool?

    public var nodeNames: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antiAffinityNodeNames != nil {
            map["AntiAffinityNodeNames"] = self.antiAffinityNodeNames!
        }
        if self.enableAssignNode != nil {
            map["EnableAssignNode"] = self.enableAssignNode!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AntiAffinityNodeNames"] as? String {
            self.antiAffinityNodeNames = value
        }
        if let value = dict["EnableAssignNode"] as? Bool {
            self.enableAssignNode = value
        }
        if let value = dict["NodeNames"] as? String {
            self.nodeNames = value
        }
    }
}

public class BindingPolicy : Tea.TeaModel {
    public var excludeNodes: [String]?

    public var includeNodes: [String]?

    public var nodeSpecCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.includeNodes != nil {
            map["IncludeNodes"] = self.includeNodes!
        }
        if self.nodeSpecCount != nil {
            map["NodeSpecCount"] = self.nodeSpecCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeNodes"] as? [String] {
            self.excludeNodes = value
        }
        if let value = dict["IncludeNodes"] as? [String] {
            self.includeNodes = value
        }
        if let value = dict["NodeSpecCount"] as? Int64 {
            self.nodeSpecCount = value
        }
    }
}

public class CacheInfo : Tea.TeaModel {
    public var mountPoint: String?

    public var port: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mountPoint != nil {
            map["MountPoint"] = self.mountPoint!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPoint"] as? String {
            self.mountPoint = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
    }
}

public class CacheService : Tea.TeaModel {
    public var cacheInfos: [CacheInfo]?

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
        if self.cacheInfos != nil {
            var tmp : [Any] = []
            for k in self.cacheInfos! {
                tmp.append(k.toMap())
            }
            map["CacheInfos"] = tmp
        }
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
        if let value = dict["CacheInfos"] as? [Any?] {
            var tmp : [CacheInfo] = []
            for v in value {
                if v != nil {
                    var model = CacheInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cacheInfos = tmp
        }
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

public class CapacityLock : Tea.TeaModel {
    public var availableCount: Int32?

    public var crsReservationId: String?

    public var description_: String?

    public var expireTime: String?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var id: String?

    public var instanceType: String?

    public var lastReconcileAttemptTime: String?

    public var lastSyncTime: String?

    public var lockProvider: String?

    public var lockedCount: Int32?

    public var operator_: String?

    public var paymentType: String?

    public var privatePoolId: String?

    public var requestedCount: Int32?

    public var status: String?

    public var tenantId: String?

    public var usedCount: Int32?

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
        if self.availableCount != nil {
            map["availableCount"] = self.availableCount!
        }
        if self.crsReservationId != nil {
            map["crsReservationId"] = self.crsReservationId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.lastReconcileAttemptTime != nil {
            map["lastReconcileAttemptTime"] = self.lastReconcileAttemptTime!
        }
        if self.lastSyncTime != nil {
            map["lastSyncTime"] = self.lastSyncTime!
        }
        if self.lockProvider != nil {
            map["lockProvider"] = self.lockProvider!
        }
        if self.lockedCount != nil {
            map["lockedCount"] = self.lockedCount!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.privatePoolId != nil {
            map["privatePoolId"] = self.privatePoolId!
        }
        if self.requestedCount != nil {
            map["requestedCount"] = self.requestedCount!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.usedCount != nil {
            map["usedCount"] = self.usedCount!
        }
        if self.zoneId != nil {
            map["zoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["availableCount"] as? Int32 {
            self.availableCount = value
        }
        if let value = dict["crsReservationId"] as? String {
            self.crsReservationId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["instanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["lastReconcileAttemptTime"] as? String {
            self.lastReconcileAttemptTime = value
        }
        if let value = dict["lastSyncTime"] as? String {
            self.lastSyncTime = value
        }
        if let value = dict["lockProvider"] as? String {
            self.lockProvider = value
        }
        if let value = dict["lockedCount"] as? Int32 {
            self.lockedCount = value
        }
        if let value = dict["operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["privatePoolId"] as? String {
            self.privatePoolId = value
        }
        if let value = dict["requestedCount"] as? Int32 {
            self.requestedCount = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["usedCount"] as? Int32 {
            self.usedCount = value
        }
        if let value = dict["zoneId"] as? String {
            self.zoneId = value
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

public class ClusterSpec : Tea.TeaModel {
    public var clusterType: String?

    public var dataSources: [DataSource]?

    public var image: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["DataSources"] as? [Any?] {
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
        if let value = dict["Image"] as? String {
            self.image = value
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

public class DataSource : Tea.TeaModel {
    public var dataSourceId: String?

    public var mountPath: String?

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
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class EcsSpec : Tea.TeaModel {
    public var acceleratorType: String?

    public var cpu: Int32?

    public var ecsImageId: String?

    public var eriQuantity: Int32?

    public var gpu: Int32?

    public var gpuGUSpec: String?

    public var gpuMemory: Int32?

    public var gpuType: String?

    public var gpuTypeAlias: String?

    public var instanceType: String?

    public var machineModel: String?

    public var memory: Int32?

    public var networkMode: String?

    public var plannedCpu: Int32?

    public var plannedMemory: Int32?

    public var resourceType: String?

    public var supportGPUShare: Bool?

    public var supportRDMA: Bool?

    public var supportSetNetworkCardIndex: Bool?

    public override init() {
        super.init()
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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.ecsImageId != nil {
            map["EcsImageId"] = self.ecsImageId!
        }
        if self.eriQuantity != nil {
            map["EriQuantity"] = self.eriQuantity!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.gpuGUSpec != nil {
            map["GpuGUSpec"] = self.gpuGUSpec!
        }
        if self.gpuMemory != nil {
            map["GpuMemory"] = self.gpuMemory!
        }
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.gpuTypeAlias != nil {
            map["GpuTypeAlias"] = self.gpuTypeAlias!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.machineModel != nil {
            map["MachineModel"] = self.machineModel!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.networkMode != nil {
            map["NetworkMode"] = self.networkMode!
        }
        if self.plannedCpu != nil {
            map["PlannedCpu"] = self.plannedCpu!
        }
        if self.plannedMemory != nil {
            map["PlannedMemory"] = self.plannedMemory!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.supportGPUShare != nil {
            map["SupportGPUShare"] = self.supportGPUShare!
        }
        if self.supportRDMA != nil {
            map["SupportRDMA"] = self.supportRDMA!
        }
        if self.supportSetNetworkCardIndex != nil {
            map["SupportSetNetworkCardIndex"] = self.supportSetNetworkCardIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Cpu"] as? Int32 {
            self.cpu = value
        }
        if let value = dict["EcsImageId"] as? String {
            self.ecsImageId = value
        }
        if let value = dict["EriQuantity"] as? Int32 {
            self.eriQuantity = value
        }
        if let value = dict["Gpu"] as? Int32 {
            self.gpu = value
        }
        if let value = dict["GpuGUSpec"] as? String {
            self.gpuGUSpec = value
        }
        if let value = dict["GpuMemory"] as? Int32 {
            self.gpuMemory = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["GpuTypeAlias"] as? String {
            self.gpuTypeAlias = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MachineModel"] as? String {
            self.machineModel = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["NetworkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["PlannedCpu"] as? Int32 {
            self.plannedCpu = value
        }
        if let value = dict["PlannedMemory"] as? Int32 {
            self.plannedMemory = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SupportGPUShare"] as? Bool {
            self.supportGPUShare = value
        }
        if let value = dict["SupportRDMA"] as? Bool {
            self.supportRDMA = value
        }
        if let value = dict["SupportSetNetworkCardIndex"] as? Bool {
            self.supportSetNetworkCardIndex = value
        }
    }
}

public class EniCacheConfig : Tea.TeaModel {
    public var cachePoolSize: Int32?

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
        if self.cachePoolSize != nil {
            map["CachePoolSize"] = self.cachePoolSize!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CachePoolSize"] as? Int32 {
            self.cachePoolSize = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
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
    public var allocatableCpu: Int64?

    public var allocatableMemory: Int64?

    public var cpu: Int64?

    public var creatorID: String?

    public var defaultDriver: String?

    public var diskCapacity: Int64?

    public var diskPL: String?

    public var ecsCount: Int64?

    public var ecsSpec: String?

    public var gmtCreatedTime: String?

    public var gmtExpiredTime: String?

    public var gmtModifiedTime: String?

    public var gmtStartedTime: String?

    public var gpu: Int64?

    public var gpuMemory: Int64?

    public var gpuType: String?

    public var machineGroupID: String?

    public var memory: Int64?

    public var orderInstanceId: String?

    public var paymentDuration: String?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var resourceGroupID: String?

    public var resourceType: String?

    public var status: String?

    public var supportedDrivers: [String]?

    public var systemReservedCpu: Int64?

    public var systemReservedMemory: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocatableCpu != nil {
            map["AllocatableCpu"] = self.allocatableCpu!
        }
        if self.allocatableMemory != nil {
            map["AllocatableMemory"] = self.allocatableMemory!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.creatorID != nil {
            map["CreatorID"] = self.creatorID!
        }
        if self.defaultDriver != nil {
            map["DefaultDriver"] = self.defaultDriver!
        }
        if self.diskCapacity != nil {
            map["DiskCapacity"] = self.diskCapacity!
        }
        if self.diskPL != nil {
            map["DiskPL"] = self.diskPL!
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
        if self.gpuMemory != nil {
            map["GpuMemory"] = self.gpuMemory!
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportedDrivers != nil {
            map["SupportedDrivers"] = self.supportedDrivers!
        }
        if self.systemReservedCpu != nil {
            map["SystemReservedCpu"] = self.systemReservedCpu!
        }
        if self.systemReservedMemory != nil {
            map["SystemReservedMemory"] = self.systemReservedMemory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocatableCpu"] as? Int64 {
            self.allocatableCpu = value
        }
        if let value = dict["AllocatableMemory"] as? Int64 {
            self.allocatableMemory = value
        }
        if let value = dict["Cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["CreatorID"] as? String {
            self.creatorID = value
        }
        if let value = dict["DefaultDriver"] as? String {
            self.defaultDriver = value
        }
        if let value = dict["DiskCapacity"] as? Int64 {
            self.diskCapacity = value
        }
        if let value = dict["DiskPL"] as? String {
            self.diskPL = value
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
        if let value = dict["Gpu"] as? Int64 {
            self.gpu = value
        }
        if let value = dict["GpuMemory"] as? Int64 {
            self.gpuMemory = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["Memory"] as? Int64 {
            self.memory = value
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
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportedDrivers"] as? [String] {
            self.supportedDrivers = value
        }
        if let value = dict["SystemReservedCpu"] as? Int64 {
            self.systemReservedCpu = value
        }
        if let value = dict["SystemReservedMemory"] as? Int64 {
            self.systemReservedMemory = value
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

public class Node : Tea.TeaModel {
    public var acceleratorType: String?

    public var allocatableCPU: String?

    public var allocatableMemory: String?

    public var ancestorQuotaWorkloadNum: Int64?

    public var availabilityZone: String?

    public var boundQuotas: [QuotaIdName]?

    public var CPU: String?

    public var creatorId: String?

    public var descendantQuotaWorkloadNum: Int64?

    public var diskCapacity: Int64?

    public var diskPL: String?

    public var GPU: String?

    public var GPUMemory: String?

    public var GPUType: String?

    public var gmtCreateTime: String?

    public var gmtExpiredTime: String?

    public var gmtModifiedTime: String?

    public var hyperZone: String?

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

    public var selfQuotaWorkloadNum: Int64?

    public var systemReservedCPU: String?

    public var systemReservedMemory: String?

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
        if self.allocatableCPU != nil {
            map["AllocatableCPU"] = self.allocatableCPU!
        }
        if self.allocatableMemory != nil {
            map["AllocatableMemory"] = self.allocatableMemory!
        }
        if self.ancestorQuotaWorkloadNum != nil {
            map["AncestorQuotaWorkloadNum"] = self.ancestorQuotaWorkloadNum!
        }
        if self.availabilityZone != nil {
            map["AvailabilityZone"] = self.availabilityZone!
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
        if self.descendantQuotaWorkloadNum != nil {
            map["DescendantQuotaWorkloadNum"] = self.descendantQuotaWorkloadNum!
        }
        if self.diskCapacity != nil {
            map["DiskCapacity"] = self.diskCapacity!
        }
        if self.diskPL != nil {
            map["DiskPL"] = self.diskPL!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUMemory != nil {
            map["GPUMemory"] = self.GPUMemory!
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
        if self.hyperZone != nil {
            map["HyperZone"] = self.hyperZone!
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
        if self.selfQuotaWorkloadNum != nil {
            map["SelfQuotaWorkloadNum"] = self.selfQuotaWorkloadNum!
        }
        if self.systemReservedCPU != nil {
            map["SystemReservedCPU"] = self.systemReservedCPU!
        }
        if self.systemReservedMemory != nil {
            map["SystemReservedMemory"] = self.systemReservedMemory!
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
        if let value = dict["AllocatableCPU"] as? String {
            self.allocatableCPU = value
        }
        if let value = dict["AllocatableMemory"] as? String {
            self.allocatableMemory = value
        }
        if let value = dict["AncestorQuotaWorkloadNum"] as? Int64 {
            self.ancestorQuotaWorkloadNum = value
        }
        if let value = dict["AvailabilityZone"] as? String {
            self.availabilityZone = value
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
        if let value = dict["DescendantQuotaWorkloadNum"] as? Int64 {
            self.descendantQuotaWorkloadNum = value
        }
        if let value = dict["DiskCapacity"] as? Int64 {
            self.diskCapacity = value
        }
        if let value = dict["DiskPL"] as? String {
            self.diskPL = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUMemory"] as? String {
            self.GPUMemory = value
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
        if let value = dict["HyperZone"] as? String {
            self.hyperZone = value
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
        if let value = dict["SelfQuotaWorkloadNum"] as? Int64 {
            self.selfQuotaWorkloadNum = value
        }
        if let value = dict["SystemReservedCPU"] as? String {
            self.systemReservedCPU = value
        }
        if let value = dict["SystemReservedMemory"] as? String {
            self.systemReservedMemory = value
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

public class NodeOperationResult : Tea.TeaModel {
    public var message: String?

    public var nodeName: String?

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
            map["Message"] = self.message!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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
    public var bindingPolicy: BindingPolicy?

    public var count: Int64?

    public var hyperType: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bindingPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindingPolicy != nil {
            map["BindingPolicy"] = self.bindingPolicy?.toMap()
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.hyperType != nil {
            map["HyperType"] = self.hyperType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindingPolicy"] as? [String: Any?] {
            var model = BindingPolicy()
            model.fromMap(value)
            self.bindingPolicy = model
        }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["HyperType"] as? String {
            self.hyperType = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class NodeType : Tea.TeaModel {
    public var acceleratorType: String?

    public var allocatableCPU: String?

    public var allocatableMemory: String?

    public var CPU: String?

    public var GPU: String?

    public var GPUMemory: String?

    public var GPUType: String?

    public var memory: String?

    public var nodeType: String?

    public var systemReservedCPU: String?

    public var systemReservedMemory: String?

    public override init() {
        super.init()
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
        if self.allocatableCPU != nil {
            map["AllocatableCPU"] = self.allocatableCPU!
        }
        if self.allocatableMemory != nil {
            map["AllocatableMemory"] = self.allocatableMemory!
        }
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUMemory != nil {
            map["GPUMemory"] = self.GPUMemory!
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
        if self.systemReservedCPU != nil {
            map["SystemReservedCPU"] = self.systemReservedCPU!
        }
        if self.systemReservedMemory != nil {
            map["SystemReservedMemory"] = self.systemReservedMemory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["AllocatableCPU"] as? String {
            self.allocatableCPU = value
        }
        if let value = dict["AllocatableMemory"] as? String {
            self.allocatableMemory = value
        }
        if let value = dict["CPU"] as? String {
            self.CPU = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUMemory"] as? String {
            self.GPUMemory = value
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
        if let value = dict["SystemReservedCPU"] as? String {
            self.systemReservedCPU = value
        }
        if let value = dict["SystemReservedMemory"] as? String {
            self.systemReservedMemory = value
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

public class OversoldUsageConfig : Tea.TeaModel {
    public var disabled: String?

    public var disabledBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.disabledBy != nil {
            map["DisabledBy"] = self.disabledBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Disabled"] as? String {
            self.disabled = value
        }
        if let value = dict["DisabledBy"] as? String {
            self.disabledBy = value
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

    public var useOversoldResource: Bool?

    public var userId: String?

    public var userName: String?

    public var workloadId: String?

    public var workloadName: String?

    public var workloadStatus: String?

    public var workloadType: String?

    public var workspaceId: String?

    public var workspaceName: String?

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
        if self.useOversoldResource != nil {
            map["UseOversoldResource"] = self.useOversoldResource!
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
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
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
        if let value = dict["UseOversoldResource"] as? Bool {
            self.useOversoldResource = value
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
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class Quota : Tea.TeaModel {
    public var allocateStrategy: String?

    public var creatorId: String?

    public var description_: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var hyperZones: [String]?

    public var labels: [Label]?

    public var latestOperationId: String?

    public var min: ResourceSpec?

    public var parentQuotaId: String?

    public var queueStrategy: String?

    public var quotaCluster: QuotaCluster?

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

    public var version: String?

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
        try self.quotaCluster?.validate()
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
        if self.hyperZones != nil {
            map["HyperZones"] = self.hyperZones!
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
        if self.quotaCluster != nil {
            map["QuotaCluster"] = self.quotaCluster?.toMap()
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
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["HyperZones"] as? [String] {
            self.hyperZones = value
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
        if let value = dict["QuotaCluster"] as? [String: Any?] {
            var model = QuotaCluster()
            model.fromMap(value)
            self.quotaCluster = model
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
        if let value = dict["Version"] as? String {
            self.version = value
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

public class QuotaCluster : Tea.TeaModel {
    public var clusterType: String?

    public var dataSources: [DataSource]?

    public var endpoints: [String: String]?

    public var image: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.endpoints != nil {
            map["Endpoints"] = self.endpoints!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["DataSources"] as? [Any?] {
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
        if let value = dict["Endpoints"] as? [String: String] {
            self.endpoints = value
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QuotaConfig : Tea.TeaModel {
    public var ACS: ACS?

    public var clusterId: String?

    public var defaultGPUDriver: String?

    public var enableGPUShare: Bool?

    public var enablePreemptSubquotaWorkloads: Bool?

    public var enableSubQuotaPreemption: Bool?

    public var eniCacheConfig: EniCacheConfig?

    public var oversoldUsageInfo: OversoldUsageConfig?

    public var resourceSpecs: [WorkspaceSpecs]?

    public var sandboxCacheConfig: SandboxCacheConfig?

    public var selfQuotaPreemptionConfig: SelfQuotaPreemptionConfig?

    public var subQuotaPreemptionConfig: SubQuotaPreemptionConfig?

    public var supportGPUDrivers: [String]?

    public var supportRDMA: Bool?

    public var useCase: String?

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
        try self.eniCacheConfig?.validate()
        try self.oversoldUsageInfo?.validate()
        try self.sandboxCacheConfig?.validate()
        try self.selfQuotaPreemptionConfig?.validate()
        try self.subQuotaPreemptionConfig?.validate()
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
        if self.enableGPUShare != nil {
            map["EnableGPUShare"] = self.enableGPUShare!
        }
        if self.enablePreemptSubquotaWorkloads != nil {
            map["EnablePreemptSubquotaWorkloads"] = self.enablePreemptSubquotaWorkloads!
        }
        if self.enableSubQuotaPreemption != nil {
            map["EnableSubQuotaPreemption"] = self.enableSubQuotaPreemption!
        }
        if self.eniCacheConfig != nil {
            map["EniCacheConfig"] = self.eniCacheConfig?.toMap()
        }
        if self.oversoldUsageInfo != nil {
            map["OversoldUsageInfo"] = self.oversoldUsageInfo?.toMap()
        }
        if self.resourceSpecs != nil {
            var tmp : [Any] = []
            for k in self.resourceSpecs! {
                tmp.append(k.toMap())
            }
            map["ResourceSpecs"] = tmp
        }
        if self.sandboxCacheConfig != nil {
            map["SandboxCacheConfig"] = self.sandboxCacheConfig?.toMap()
        }
        if self.selfQuotaPreemptionConfig != nil {
            map["SelfQuotaPreemptionConfig"] = self.selfQuotaPreemptionConfig?.toMap()
        }
        if self.subQuotaPreemptionConfig != nil {
            map["SubQuotaPreemptionConfig"] = self.subQuotaPreemptionConfig?.toMap()
        }
        if self.supportGPUDrivers != nil {
            map["SupportGPUDrivers"] = self.supportGPUDrivers!
        }
        if self.supportRDMA != nil {
            map["SupportRDMA"] = self.supportRDMA!
        }
        if self.useCase != nil {
            map["UseCase"] = self.useCase!
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
        if let value = dict["EnableGPUShare"] as? Bool {
            self.enableGPUShare = value
        }
        if let value = dict["EnablePreemptSubquotaWorkloads"] as? Bool {
            self.enablePreemptSubquotaWorkloads = value
        }
        if let value = dict["EnableSubQuotaPreemption"] as? Bool {
            self.enableSubQuotaPreemption = value
        }
        if let value = dict["EniCacheConfig"] as? [String: Any?] {
            var model = EniCacheConfig()
            model.fromMap(value)
            self.eniCacheConfig = model
        }
        if let value = dict["OversoldUsageInfo"] as? [String: Any?] {
            var model = OversoldUsageConfig()
            model.fromMap(value)
            self.oversoldUsageInfo = model
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
        if let value = dict["SandboxCacheConfig"] as? [String: Any?] {
            var model = SandboxCacheConfig()
            model.fromMap(value)
            self.sandboxCacheConfig = model
        }
        if let value = dict["SelfQuotaPreemptionConfig"] as? [String: Any?] {
            var model = SelfQuotaPreemptionConfig()
            model.fromMap(value)
            self.selfQuotaPreemptionConfig = model
        }
        if let value = dict["SubQuotaPreemptionConfig"] as? [String: Any?] {
            var model = SubQuotaPreemptionConfig()
            model.fromMap(value)
            self.subQuotaPreemptionConfig = model
        }
        if let value = dict["SupportGPUDrivers"] as? [String] {
            self.supportGPUDrivers = value
        }
        if let value = dict["SupportRDMA"] as? Bool {
            self.supportRDMA = value
        }
        if let value = dict["UseCase"] as? String {
            self.useCase = value
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

    public var allocatableQuota: ResourceAmount?

    public var allocatedQuota: ResourceAmount?

    public var ancestorsAllocatedQuota: ResourceAmount?

    public var descendantsAllocatedQuota: ResourceAmount?

    public var desiredMinQuota: ResourceAmount?

    public var requestedQuota: ResourceAmount?

    public var selfAllocatedQuota: ResourceAmount?

    public var selfSubmittedQuota: ResourceAmount?

    public var systemReservedQuota: ResourceAmount?

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
        try self.allocatableQuota?.validate()
        try self.allocatedQuota?.validate()
        try self.ancestorsAllocatedQuota?.validate()
        try self.descendantsAllocatedQuota?.validate()
        try self.desiredMinQuota?.validate()
        try self.requestedQuota?.validate()
        try self.selfAllocatedQuota?.validate()
        try self.selfSubmittedQuota?.validate()
        try self.systemReservedQuota?.validate()
        try self.usedQuota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualMinQuota != nil {
            map["ActualMinQuota"] = self.actualMinQuota?.toMap()
        }
        if self.allocatableQuota != nil {
            map["AllocatableQuota"] = self.allocatableQuota?.toMap()
        }
        if self.allocatedQuota != nil {
            map["AllocatedQuota"] = self.allocatedQuota?.toMap()
        }
        if self.ancestorsAllocatedQuota != nil {
            map["AncestorsAllocatedQuota"] = self.ancestorsAllocatedQuota?.toMap()
        }
        if self.descendantsAllocatedQuota != nil {
            map["DescendantsAllocatedQuota"] = self.descendantsAllocatedQuota?.toMap()
        }
        if self.desiredMinQuota != nil {
            map["DesiredMinQuota"] = self.desiredMinQuota?.toMap()
        }
        if self.requestedQuota != nil {
            map["RequestedQuota"] = self.requestedQuota?.toMap()
        }
        if self.selfAllocatedQuota != nil {
            map["SelfAllocatedQuota"] = self.selfAllocatedQuota?.toMap()
        }
        if self.selfSubmittedQuota != nil {
            map["SelfSubmittedQuota"] = self.selfSubmittedQuota?.toMap()
        }
        if self.systemReservedQuota != nil {
            map["SystemReservedQuota"] = self.systemReservedQuota?.toMap()
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
        if let value = dict["AllocatableQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.allocatableQuota = model
        }
        if let value = dict["AllocatedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.allocatedQuota = model
        }
        if let value = dict["AncestorsAllocatedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.ancestorsAllocatedQuota = model
        }
        if let value = dict["DescendantsAllocatedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.descendantsAllocatedQuota = model
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
        if let value = dict["SelfAllocatedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.selfAllocatedQuota = model
        }
        if let value = dict["SelfSubmittedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.selfSubmittedQuota = model
        }
        if let value = dict["SystemReservedQuota"] as? [String: Any?] {
            var model = ResourceAmount()
            model.fromMap(value)
            self.systemReservedQuota = model
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

    public override init() {
        super.init()
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

    public override init() {
        super.init()
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

    public var version: String?

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
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["Version"] as? String {
            self.version = value
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

public class ResourceInfo : Tea.TeaModel {

    public override init() {
        super.init()
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

public class ResourceInfos : Tea.TeaModel {
    public var clusterId: String?

    public var ecsSpec: String?

    public var gpuCardType: String?

    public var machineModel: String?

    public var maxQuota: Int64?

    public var networkPodId: String?

    public var regionId: String?

    public var usedQuota: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.gpuCardType != nil {
            map["GpuCardType"] = self.gpuCardType!
        }
        if self.machineModel != nil {
            map["MachineModel"] = self.machineModel!
        }
        if self.maxQuota != nil {
            map["MaxQuota"] = self.maxQuota!
        }
        if self.networkPodId != nil {
            map["NetworkPodId"] = self.networkPodId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.usedQuota != nil {
            map["UsedQuota"] = self.usedQuota!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["GpuCardType"] as? String {
            self.gpuCardType = value
        }
        if let value = dict["MachineModel"] as? String {
            self.machineModel = value
        }
        if let value = dict["MaxQuota"] as? Int64 {
            self.maxQuota = value
        }
        if let value = dict["NetworkPodId"] as? String {
            self.networkPodId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UsedQuota"] as? Int64 {
            self.usedQuota = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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
    public var scheduling: SchedulingRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scheduling?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scheduling != nil {
            map["Scheduling"] = self.scheduling?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scheduling"] as? [String: Any?] {
            var model = SchedulingRule()
            model.fromMap(value)
            self.scheduling = model
        }
    }
}

public class SandboxCacheConfig : Tea.TeaModel {
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
            map["Enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
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

public class SelfQuotaPreemptionConfig : Tea.TeaModel {
    public var preemptedPriorities: [Int32]?

    public var preemptedProducts: [String]?

    public var preemptorPriorities: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preemptedPriorities != nil {
            map["PreemptedPriorities"] = self.preemptedPriorities!
        }
        if self.preemptedProducts != nil {
            map["PreemptedProducts"] = self.preemptedProducts!
        }
        if self.preemptorPriorities != nil {
            map["PreemptorPriorities"] = self.preemptorPriorities!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PreemptedPriorities"] as? [Int32] {
            self.preemptedPriorities = value
        }
        if let value = dict["PreemptedProducts"] as? [String] {
            self.preemptedProducts = value
        }
        if let value = dict["PreemptorPriorities"] as? [Int32] {
            self.preemptorPriorities = value
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

public class SubQuotaPreemptionConfig : Tea.TeaModel {
    public var preemptedPriorityUpperBound: Int64?

    public var preemptedProducts: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preemptedPriorityUpperBound != nil {
            map["PreemptedPriorityUpperBound"] = self.preemptedPriorityUpperBound!
        }
        if self.preemptedProducts != nil {
            map["PreemptedProducts"] = self.preemptedProducts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PreemptedPriorityUpperBound"] as? Int64 {
            self.preemptedPriorityUpperBound = value
        }
        if let value = dict["PreemptedProducts"] as? [String] {
            self.preemptedProducts = value
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

public class CheckInstanceWebTerminalRequest : Tea.TeaModel {
    public var checkInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkInfo != nil {
            map["CheckInfo"] = self.checkInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckInfo"] as? String {
            self.checkInfo = value
        }
    }
}

public class CheckInstanceWebTerminalResponseBody : Tea.TeaModel {
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

public class CheckInstanceWebTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckInstanceWebTerminalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckInstanceWebTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAlgorithmRequest : Tea.TeaModel {
    public var algorithmDescription: String?

    public var algorithmName: String?

    public var displayName: String?

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
        if self.algorithmDescription != nil {
            map["AlgorithmDescription"] = self.algorithmDescription!
        }
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmDescription"] as? String {
            self.algorithmDescription = value
        }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateAlgorithmResponseBody : Tea.TeaModel {
    public var algorithmId: String?

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
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAlgorithmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlgorithmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAlgorithmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAlgorithmVersionRequest : Tea.TeaModel {
    public var algorithmSpec: AlgorithmSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.algorithmSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmSpec != nil {
            map["AlgorithmSpec"] = self.algorithmSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmSpec"] as? [String: Any?] {
            var model = AlgorithmSpec()
            model.fromMap(value)
            self.algorithmSpec = model
        }
    }
}

public class CreateAlgorithmVersionShrinkRequest : Tea.TeaModel {
    public var algorithmSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmSpecShrink != nil {
            map["AlgorithmSpec"] = self.algorithmSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmSpec"] as? String {
            self.algorithmSpecShrink = value
        }
    }
}

public class CreateAlgorithmVersionResponseBody : Tea.TeaModel {
    public var algorithmId: String?

    public var algorithmVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
    }
}

public class CreateAlgorithmVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlgorithmVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAlgorithmVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceWebTerminalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var webTerminalId: String?

    public override init() {
        super.init()
    }

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
        if self.webTerminalId != nil {
            map["WebTerminalId"] = self.webTerminalId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebTerminalId"] as? String {
            self.webTerminalId = value
        }
    }
}

public class CreateInstanceWebTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceWebTerminalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceWebTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQuotaRequest : Tea.TeaModel {
    public var allocateStrategy: String?

    public var clusterSpec: ClusterSpec?

    public var description_: String?

    public var labels: [Label]?

    public var min: ResourceSpec?

    public var parentQuotaId: String?

    public var queueStrategy: String?

    public var quotaConfig: QuotaConfig?

    public var quotaName: String?

    public var resourceGroupIds: [String]?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterSpec?.validate()
        try self.min?.validate()
        try self.quotaConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocateStrategy != nil {
            map["AllocateStrategy"] = self.allocateStrategy!
        }
        if self.clusterSpec != nil {
            map["ClusterSpec"] = self.clusterSpec?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
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
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocateStrategy"] as? String {
            self.allocateStrategy = value
        }
        if let value = dict["ClusterSpec"] as? [String: Any?] {
            var model = ClusterSpec()
            model.fromMap(value)
            self.clusterSpec = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class CreateQuotaResponseBody : Tea.TeaModel {
    public var quotaId: String?

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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceGroupRequest : Tea.TeaModel {
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
    public var computingResourceProvider: String?

    public var description_: String?

    public var name: String?

    public var resourceType: String?

    public var tag: [CreateResourceGroupRequest.Tag]?

    public var userVpc: UserVpc?

    public var version: String?

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
        if self.computingResourceProvider != nil {
            map["ComputingResourceProvider"] = self.computingResourceProvider!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingResourceProvider"] as? String {
            self.computingResourceProvider = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateResourceGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class CreateResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class CreateResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrainingJobRequest : Tea.TeaModel {
    public class ComputeResource : Tea.TeaModel {
        public class InstanceSpec : Tea.TeaModel {
            public var CPU: String?

            public var GPU: String?

            public var GPUType: String?

            public var memory: String?

            public var sharedMemory: String?

            public override init() {
                super.init()
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
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
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
                if let value = dict["SharedMemory"] as? String {
                    self.sharedMemory = value
                }
            }
        }
        public class SpotSpec : Tea.TeaModel {
            public var spotDiscountLimit: Double?

            public var spotStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.spotDiscountLimit != nil {
                    map["SpotDiscountLimit"] = self.spotDiscountLimit!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpotDiscountLimit"] as? Double {
                    self.spotDiscountLimit = value
                }
                if let value = dict["SpotStrategy"] as? String {
                    self.spotStrategy = value
                }
            }
        }
        public var ecsCount: Int64?

        public var ecsSpec: String?

        public var instanceCount: Int64?

        public var instanceSpec: CreateTrainingJobRequest.ComputeResource.InstanceSpec?

        public var resourceId: String?

        public var spotSpec: CreateTrainingJobRequest.ComputeResource.SpotSpec?

        public var useSpotInstance: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceSpec?.validate()
            try self.spotSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsCount != nil {
                map["EcsCount"] = self.ecsCount!
            }
            if self.ecsSpec != nil {
                map["EcsSpec"] = self.ecsSpec!
            }
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec?.toMap()
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.spotSpec != nil {
                map["SpotSpec"] = self.spotSpec?.toMap()
            }
            if self.useSpotInstance != nil {
                map["UseSpotInstance"] = self.useSpotInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsCount"] as? Int64 {
                self.ecsCount = value
            }
            if let value = dict["EcsSpec"] as? String {
                self.ecsSpec = value
            }
            if let value = dict["InstanceCount"] as? Int64 {
                self.instanceCount = value
            }
            if let value = dict["InstanceSpec"] as? [String: Any?] {
                var model = CreateTrainingJobRequest.ComputeResource.InstanceSpec()
                model.fromMap(value)
                self.instanceSpec = model
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["SpotSpec"] as? [String: Any?] {
                var model = CreateTrainingJobRequest.ComputeResource.SpotSpec()
                model.fromMap(value)
                self.spotSpec = model
            }
            if let value = dict["UseSpotInstance"] as? Bool {
                self.useSpotInstance = value
            }
        }
    }
    public class ExperimentConfig : Tea.TeaModel {
        public var experimentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExperimentId"] as? String {
                self.experimentId = value
            }
        }
    }
    public class HyperParameters : Tea.TeaModel {
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
    public class InputChannels : Tea.TeaModel {
        public var datasetId: String?

        public var inputUri: String?

        public var name: String?

        public var options: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.inputUri != nil {
                map["InputUri"] = self.inputUri!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["InputUri"] as? String {
                self.inputUri = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public class Labels : Tea.TeaModel {
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
    public class OutputChannels : Tea.TeaModel {
        public var datasetId: String?

        public var name: String?

        public var outputUri: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outputUri != nil {
                map["OutputUri"] = self.outputUri!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OutputUri"] as? String {
                self.outputUri = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public class Scheduler : Tea.TeaModel {
        public var maxRunningTimeInMinutes: Int64?

        public var maxRunningTimeInSeconds: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxRunningTimeInMinutes != nil {
                map["MaxRunningTimeInMinutes"] = self.maxRunningTimeInMinutes!
            }
            if self.maxRunningTimeInSeconds != nil {
                map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxRunningTimeInMinutes"] as? Int64 {
                self.maxRunningTimeInMinutes = value
            }
            if let value = dict["MaxRunningTimeInSeconds"] as? Int64 {
                self.maxRunningTimeInSeconds = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
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
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
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
    public var algorithmName: String?

    public var algorithmProvider: String?

    public var algorithmSpec: AlgorithmSpec?

    public var algorithmVersion: String?

    public var assignNodeSpec: AssignNodeSpec?

    public var codeDir: Location?

    public var computeResource: CreateTrainingJobRequest.ComputeResource?

    public var environments: [String: String]?

    public var experimentConfig: CreateTrainingJobRequest.ExperimentConfig?

    public var hyperParameters: [CreateTrainingJobRequest.HyperParameters]?

    public var inputChannels: [CreateTrainingJobRequest.InputChannels]?

    public var labels: [CreateTrainingJobRequest.Labels]?

    public var outputChannels: [CreateTrainingJobRequest.OutputChannels]?

    public var priority: Int32?

    public var pythonRequirements: [String]?

    public var roleArn: String?

    public var scheduler: CreateTrainingJobRequest.Scheduler?

    public var settings: JobSettings?

    public var trainingJobDescription: String?

    public var trainingJobName: String?

    public var userVpc: CreateTrainingJobRequest.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.algorithmSpec?.validate()
        try self.assignNodeSpec?.validate()
        try self.codeDir?.validate()
        try self.computeResource?.validate()
        try self.experimentConfig?.validate()
        try self.scheduler?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.algorithmSpec != nil {
            map["AlgorithmSpec"] = self.algorithmSpec?.toMap()
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
        }
        if self.codeDir != nil {
            map["CodeDir"] = self.codeDir?.toMap()
        }
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource?.toMap()
        }
        if self.environments != nil {
            map["Environments"] = self.environments!
        }
        if self.experimentConfig != nil {
            map["ExperimentConfig"] = self.experimentConfig?.toMap()
        }
        if self.hyperParameters != nil {
            var tmp : [Any] = []
            for k in self.hyperParameters! {
                tmp.append(k.toMap())
            }
            map["HyperParameters"] = tmp
        }
        if self.inputChannels != nil {
            var tmp : [Any] = []
            for k in self.inputChannels! {
                tmp.append(k.toMap())
            }
            map["InputChannels"] = tmp
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.outputChannels != nil {
            var tmp : [Any] = []
            for k in self.outputChannels! {
                tmp.append(k.toMap())
            }
            map["OutputChannels"] = tmp
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.pythonRequirements != nil {
            map["PythonRequirements"] = self.pythonRequirements!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler?.toMap()
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.trainingJobDescription != nil {
            map["TrainingJobDescription"] = self.trainingJobDescription!
        }
        if self.trainingJobName != nil {
            map["TrainingJobName"] = self.trainingJobName!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["AlgorithmSpec"] as? [String: Any?] {
            var model = AlgorithmSpec()
            model.fromMap(value)
            self.algorithmSpec = model
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
        if let value = dict["AssignNodeSpec"] as? [String: Any?] {
            var model = AssignNodeSpec()
            model.fromMap(value)
            self.assignNodeSpec = model
        }
        if let value = dict["CodeDir"] as? [String: Any?] {
            var model = Location()
            model.fromMap(value)
            self.codeDir = model
        }
        if let value = dict["ComputeResource"] as? [String: Any?] {
            var model = CreateTrainingJobRequest.ComputeResource()
            model.fromMap(value)
            self.computeResource = model
        }
        if let value = dict["Environments"] as? [String: String] {
            self.environments = value
        }
        if let value = dict["ExperimentConfig"] as? [String: Any?] {
            var model = CreateTrainingJobRequest.ExperimentConfig()
            model.fromMap(value)
            self.experimentConfig = model
        }
        if let value = dict["HyperParameters"] as? [Any?] {
            var tmp : [CreateTrainingJobRequest.HyperParameters] = []
            for v in value {
                if v != nil {
                    var model = CreateTrainingJobRequest.HyperParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hyperParameters = tmp
        }
        if let value = dict["InputChannels"] as? [Any?] {
            var tmp : [CreateTrainingJobRequest.InputChannels] = []
            for v in value {
                if v != nil {
                    var model = CreateTrainingJobRequest.InputChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inputChannels = tmp
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [CreateTrainingJobRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = CreateTrainingJobRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["OutputChannels"] as? [Any?] {
            var tmp : [CreateTrainingJobRequest.OutputChannels] = []
            for v in value {
                if v != nil {
                    var model = CreateTrainingJobRequest.OutputChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputChannels = tmp
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["PythonRequirements"] as? [String] {
            self.pythonRequirements = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Scheduler"] as? [String: Any?] {
            var model = CreateTrainingJobRequest.Scheduler()
            model.fromMap(value)
            self.scheduler = model
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = JobSettings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["TrainingJobDescription"] as? String {
            self.trainingJobDescription = value
        }
        if let value = dict["TrainingJobName"] as? String {
            self.trainingJobName = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = CreateTrainingJobRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateTrainingJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trainingJobId: String?

    public override init() {
        super.init()
    }

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
        if self.trainingJobId != nil {
            map["TrainingJobId"] = self.trainingJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrainingJobId"] as? String {
            self.trainingJobId = value
        }
    }
}

public class CreateTrainingJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrainingJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTrainingJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAlgorithmResponseBody : Tea.TeaModel {
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

public class DeleteAlgorithmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlgorithmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAlgorithmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAlgorithmVersionResponseBody : Tea.TeaModel {
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

public class DeleteAlgorithmVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlgorithmVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAlgorithmVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMachineGroupResponseBody : Tea.TeaModel {
    public var machineGroupID: String?

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
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMachineGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMachineGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQuotaResponseBody : Tea.TeaModel {
    public var quotaId: String?

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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class DeleteResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceGroupMachineGroupResponseBody : Tea.TeaModel {
    public var machineGroupID: String?

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
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceGroupMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceGroupMachineGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteResourceGroupMachineGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrainingJobResponseBody : Tea.TeaModel {
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

public class DeleteTrainingJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrainingJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTrainingJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrainingJobLabelsRequest : Tea.TeaModel {
    public var keys: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? String {
            self.keys = value
        }
    }
}

public class DeleteTrainingJobLabelsResponseBody : Tea.TeaModel {
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

public class DeleteTrainingJobLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrainingJobLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTrainingJobLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlgorithmResponseBody : Tea.TeaModel {
    public var algorithmDescription: String?

    public var algorithmId: String?

    public var algorithmName: String?

    public var algorithmProvider: String?

    public var displayName: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var requestId: String?

    public var tenantId: String?

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
        if self.algorithmDescription != nil {
            map["AlgorithmDescription"] = self.algorithmDescription!
        }
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
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
        if let value = dict["AlgorithmDescription"] as? String {
            self.algorithmDescription = value
        }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetAlgorithmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlgorithmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAlgorithmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlgorithmVersionResponseBody : Tea.TeaModel {
    public var algorithmId: String?

    public var algorithmName: String?

    public var algorithmProvider: String?

    public var algorithmSpec: AlgorithmSpec?

    public var algorithmVersion: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

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
        try self.algorithmSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.algorithmSpec != nil {
            map["AlgorithmSpec"] = self.algorithmSpec?.toMap()
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
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
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["AlgorithmSpec"] as? [String: Any?] {
            var model = AlgorithmSpec()
            model.fromMap(value)
            self.algorithmSpec = model
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetAlgorithmVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlgorithmVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAlgorithmVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMachineGroupResponseBody : Tea.TeaModel {
    public var count: Int64?

    public var defaultDriver: String?

    public var duration: String?

    public var ecsType: String?

    public var gmtCreated: String?

    public var gmtExpired: String?

    public var gmtModified: String?

    public var gmtStarted: String?

    public var machineGroupID: String?

    public var orderID: String?

    public var orderInstanceId: String?

    public var PAIResourceID: String?

    public var payType: String?

    public var pricingCycle: String?

    public var regionID: String?

    public var requestId: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.defaultDriver != nil {
            map["DefaultDriver"] = self.defaultDriver!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ecsType != nil {
            map["EcsType"] = self.ecsType!
        }
        if self.gmtCreated != nil {
            map["GmtCreated"] = self.gmtCreated!
        }
        if self.gmtExpired != nil {
            map["GmtExpired"] = self.gmtExpired!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.gmtStarted != nil {
            map["GmtStarted"] = self.gmtStarted!
        }
        if self.machineGroupID != nil {
            map["MachineGroupID"] = self.machineGroupID!
        }
        if self.orderID != nil {
            map["OrderID"] = self.orderID!
        }
        if self.orderInstanceId != nil {
            map["OrderInstanceId"] = self.orderInstanceId!
        }
        if self.PAIResourceID != nil {
            map["PAIResourceID"] = self.PAIResourceID!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.regionID != nil {
            map["RegionID"] = self.regionID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["DefaultDriver"] as? String {
            self.defaultDriver = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["EcsType"] as? String {
            self.ecsType = value
        }
        if let value = dict["GmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["GmtExpired"] as? String {
            self.gmtExpired = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GmtStarted"] as? String {
            self.gmtStarted = value
        }
        if let value = dict["MachineGroupID"] as? String {
            self.machineGroupID = value
        }
        if let value = dict["OrderID"] as? String {
            self.orderID = value
        }
        if let value = dict["OrderInstanceId"] as? String {
            self.orderInstanceId = value
        }
        if let value = dict["PAIResourceID"] as? String {
            self.PAIResourceID = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["RegionID"] as? String {
            self.regionID = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupportedDrivers"] as? [String] {
            self.supportedDrivers = value
        }
    }
}

public class GetMachineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMachineGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMachineGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNodeMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var GPUType: String?

    public var startTime: String?

    public var timeStep: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeStep != nil {
            map["TimeStep"] = self.timeStep!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeStep"] as? String {
            self.timeStep = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class GetNodeMetricsResponseBody : Tea.TeaModel {
    public var metricType: String?

    public var nodesMetrics: [NodeMetric]?

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
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.nodesMetrics != nil {
            var tmp : [Any] = []
            for k in self.nodesMetrics! {
                tmp.append(k.toMap())
            }
            map["NodesMetrics"] = tmp
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["NodesMetrics"] as? [Any?] {
            var tmp : [NodeMetric] = []
            for v in value {
                if v != nil {
                    var model = NodeMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodesMetrics = tmp
        }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
    }
}

public class GetNodeMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNodeMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaRequest : Tea.TeaModel {
    public var verbose: Bool?

    public var withNodeMeta: Bool?

    public override init() {
        super.init()
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
        if self.withNodeMeta != nil {
            map["WithNodeMeta"] = self.withNodeMeta!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WithNodeMeta"] as? Bool {
            self.withNodeMeta = value
        }
    }
}

public class GetQuotaResponseBody : Tea.TeaModel {
    public var allocateStrategy: String?

    public var creatorId: String?

    public var description_: String?

    public var gmtCreatedTime: String?

    public var gmtModifiedTime: String?

    public var hyperZones: [String]?

    public var labels: [Label]?

    public var latestOperationId: String?

    public var min: ResourceSpec?

    public var parentQuotaId: String?

    public var queueStrategy: String?

    public var quotaCluster: QuotaCluster?

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

    public var version: String?

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
        try self.quotaCluster?.validate()
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
        if self.hyperZones != nil {
            map["HyperZones"] = self.hyperZones!
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
        if self.quotaCluster != nil {
            map["QuotaCluster"] = self.quotaCluster?.toMap()
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
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["HyperZones"] as? [String] {
            self.hyperZones = value
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
        if let value = dict["QuotaCluster"] as? [String: Any?] {
            var model = QuotaCluster()
            model.fromMap(value)
            self.quotaCluster = model
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
        if let value = dict["Version"] as? String {
            self.version = value
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

    public var version: String?

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
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["Version"] as? String {
            self.version = value
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
    public var allocatableCpu: String?

    public var allocatableMemory: String?

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

    public var systemReservedCpu: String?

    public var systemReservedMemory: String?

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
        if self.allocatableCpu != nil {
            map["AllocatableCpu"] = self.allocatableCpu!
        }
        if self.allocatableMemory != nil {
            map["AllocatableMemory"] = self.allocatableMemory!
        }
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
        if self.systemReservedCpu != nil {
            map["SystemReservedCpu"] = self.systemReservedCpu!
        }
        if self.systemReservedMemory != nil {
            map["SystemReservedMemory"] = self.systemReservedMemory!
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
        if let value = dict["AllocatableCpu"] as? String {
            self.allocatableCpu = value
        }
        if let value = dict["AllocatableMemory"] as? String {
            self.allocatableMemory = value
        }
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
        if let value = dict["SystemReservedCpu"] as? String {
            self.systemReservedCpu = value
        }
        if let value = dict["SystemReservedMemory"] as? String {
            self.systemReservedMemory = value
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

public class GetSpotPriceHistoryRequest : Tea.TeaModel {
    public var endTime: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var spotDuration: Int32?

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
        if self.spotDuration != nil {
            map["SpotDuration"] = self.spotDuration!
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
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SpotDuration"] as? Int32 {
            self.spotDuration = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetSpotPriceHistoryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var spotPriceHistory: [SpotPriceItem]?

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
            map["RequestId"] = self.requestId!
        }
        if self.spotPriceHistory != nil {
            var tmp : [Any] = []
            for k in self.spotPriceHistory! {
                tmp.append(k.toMap())
            }
            map["SpotPriceHistory"] = tmp
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
        if let value = dict["SpotPriceHistory"] as? [Any?] {
            var tmp : [SpotPriceItem] = []
            for v in value {
                if v != nil {
                    var model = SpotPriceItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spotPriceHistory = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetSpotPriceHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpotPriceHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSpotPriceHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var expireTime: Int64?

    public var trainingJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.trainingJobId != nil {
            map["TrainingJobId"] = self.trainingJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["TrainingJobId"] as? String {
            self.trainingJobId = value
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrainingJobResponseBody : Tea.TeaModel {
    public class ComputeResource : Tea.TeaModel {
        public class InstanceSpec : Tea.TeaModel {
            public var CPU: String?

            public var GPU: String?

            public var GPUType: String?

            public var memory: String?

            public var sharedMemory: String?

            public override init() {
                super.init()
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
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
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
                if let value = dict["SharedMemory"] as? String {
                    self.sharedMemory = value
                }
            }
        }
        public class SpotSpec : Tea.TeaModel {
            public var spotDiscountLimit: Double?

            public var spotStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.spotDiscountLimit != nil {
                    map["SpotDiscountLimit"] = self.spotDiscountLimit!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpotDiscountLimit"] as? Double {
                    self.spotDiscountLimit = value
                }
                if let value = dict["SpotStrategy"] as? String {
                    self.spotStrategy = value
                }
            }
        }
        public var ecsCount: Int64?

        public var ecsSpec: String?

        public var instanceCount: Int64?

        public var instanceSpec: GetTrainingJobResponseBody.ComputeResource.InstanceSpec?

        public var resourceId: String?

        public var resourceName: String?

        public var spotSpec: GetTrainingJobResponseBody.ComputeResource.SpotSpec?

        public var useSpotInstance: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceSpec?.validate()
            try self.spotSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsCount != nil {
                map["EcsCount"] = self.ecsCount!
            }
            if self.ecsSpec != nil {
                map["EcsSpec"] = self.ecsSpec!
            }
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec?.toMap()
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.spotSpec != nil {
                map["SpotSpec"] = self.spotSpec?.toMap()
            }
            if self.useSpotInstance != nil {
                map["UseSpotInstance"] = self.useSpotInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsCount"] as? Int64 {
                self.ecsCount = value
            }
            if let value = dict["EcsSpec"] as? String {
                self.ecsSpec = value
            }
            if let value = dict["InstanceCount"] as? Int64 {
                self.instanceCount = value
            }
            if let value = dict["InstanceSpec"] as? [String: Any?] {
                var model = GetTrainingJobResponseBody.ComputeResource.InstanceSpec()
                model.fromMap(value)
                self.instanceSpec = model
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["SpotSpec"] as? [String: Any?] {
                var model = GetTrainingJobResponseBody.ComputeResource.SpotSpec()
                model.fromMap(value)
                self.spotSpec = model
            }
            if let value = dict["UseSpotInstance"] as? Bool {
                self.useSpotInstance = value
            }
        }
    }
    public class ExperimentConfig : Tea.TeaModel {
        public var experimentId: String?

        public var experimentName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.experimentName != nil {
                map["ExperimentName"] = self.experimentName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExperimentId"] as? String {
                self.experimentId = value
            }
            if let value = dict["ExperimentName"] as? String {
                self.experimentName = value
            }
        }
    }
    public class HyperParameters : Tea.TeaModel {
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
    public class InputChannels : Tea.TeaModel {
        public var datasetId: String?

        public var inputUri: String?

        public var name: String?

        public var options: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.inputUri != nil {
                map["InputUri"] = self.inputUri!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["InputUri"] as? String {
                self.inputUri = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public class Instances : Tea.TeaModel {
        public var name: String?

        public var role: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class Labels : Tea.TeaModel {
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
    public class LatestMetrics : Tea.TeaModel {
        public var name: String?

        public var timestamp: String?

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
            if self.name != nil {
                map["Name"] = self.name!
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
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public class LatestProgress : Tea.TeaModel {
        public class OverallProgress : Tea.TeaModel {
            public var timestamp: String?

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
                if let value = dict["Timestamp"] as? String {
                    self.timestamp = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
                }
            }
        }
        public class RemainingTime : Tea.TeaModel {
            public var timestamp: String?

            public var value: Int64?

            public override init() {
                super.init()
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
                if let value = dict["Timestamp"] as? String {
                    self.timestamp = value
                }
                if let value = dict["Value"] as? Int64 {
                    self.value = value
                }
            }
        }
        public var overallProgress: GetTrainingJobResponseBody.LatestProgress.OverallProgress?

        public var remainingTime: GetTrainingJobResponseBody.LatestProgress.RemainingTime?

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
                var model = GetTrainingJobResponseBody.LatestProgress.OverallProgress()
                model.fromMap(value)
                self.overallProgress = model
            }
            if let value = dict["RemainingTime"] as? [String: Any?] {
                var model = GetTrainingJobResponseBody.LatestProgress.RemainingTime()
                model.fromMap(value)
                self.remainingTime = model
            }
        }
    }
    public class OutputChannels : Tea.TeaModel {
        public var datasetId: String?

        public var name: String?

        public var outputUri: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outputUri != nil {
                map["OutputUri"] = self.outputUri!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OutputUri"] as? String {
                self.outputUri = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public class OutputModel : Tea.TeaModel {
        public var outputChannelName: String?

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
            if self.outputChannelName != nil {
                map["OutputChannelName"] = self.outputChannelName!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OutputChannelName"] as? String {
                self.outputChannelName = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class Scheduler : Tea.TeaModel {
        public var maxRunningTimeInMinutes: String?

        public var maxRunningTimeInSeconds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxRunningTimeInMinutes != nil {
                map["MaxRunningTimeInMinutes"] = self.maxRunningTimeInMinutes!
            }
            if self.maxRunningTimeInSeconds != nil {
                map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxRunningTimeInMinutes"] as? String {
                self.maxRunningTimeInMinutes = value
            }
            if let value = dict["MaxRunningTimeInSeconds"] as? String {
                self.maxRunningTimeInSeconds = value
            }
        }
    }
    public class StatusTransitions : Tea.TeaModel {
        public var endTime: String?

        public var reasonCode: String?

        public var reasonMessage: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
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
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var extendedCIDRs: [String]?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
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
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
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
    public var algorithmId: String?

    public var algorithmName: String?

    public var algorithmProvider: String?

    public var algorithmSpec: AlgorithmSpec?

    public var algorithmVersion: String?

    public var assignNodeSpec: AssignNodeSpec?

    public var computeResource: GetTrainingJobResponseBody.ComputeResource?

    public var duration: Int64?

    public var environments: [String: String]?

    public var experimentConfig: GetTrainingJobResponseBody.ExperimentConfig?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var hyperParameters: [GetTrainingJobResponseBody.HyperParameters]?

    public var inputChannels: [GetTrainingJobResponseBody.InputChannels]?

    public var instances: [GetTrainingJobResponseBody.Instances]?

    public var isTempAlgo: Bool?

    public var labels: [GetTrainingJobResponseBody.Labels]?

    public var latestMetrics: [GetTrainingJobResponseBody.LatestMetrics]?

    public var latestProgress: GetTrainingJobResponseBody.LatestProgress?

    public var outputChannels: [GetTrainingJobResponseBody.OutputChannels]?

    public var outputModel: GetTrainingJobResponseBody.OutputModel?

    public var priority: Int32?

    public var pythonRequirements: [String]?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var roleArn: String?

    public var scheduler: GetTrainingJobResponseBody.Scheduler?

    public var settings: JobSettings?

    public var status: String?

    public var statusTransitions: [GetTrainingJobResponseBody.StatusTransitions]?

    public var trainingJobDescription: String?

    public var trainingJobId: String?

    public var trainingJobName: String?

    public var trainingJobUrl: String?

    public var userId: String?

    public var userVpc: GetTrainingJobResponseBody.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.algorithmSpec?.validate()
        try self.assignNodeSpec?.validate()
        try self.computeResource?.validate()
        try self.experimentConfig?.validate()
        try self.latestProgress?.validate()
        try self.outputModel?.validate()
        try self.scheduler?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.algorithmSpec != nil {
            map["AlgorithmSpec"] = self.algorithmSpec?.toMap()
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
        }
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource?.toMap()
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.environments != nil {
            map["Environments"] = self.environments!
        }
        if self.experimentConfig != nil {
            map["ExperimentConfig"] = self.experimentConfig?.toMap()
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.hyperParameters != nil {
            var tmp : [Any] = []
            for k in self.hyperParameters! {
                tmp.append(k.toMap())
            }
            map["HyperParameters"] = tmp
        }
        if self.inputChannels != nil {
            var tmp : [Any] = []
            for k in self.inputChannels! {
                tmp.append(k.toMap())
            }
            map["InputChannels"] = tmp
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.isTempAlgo != nil {
            map["IsTempAlgo"] = self.isTempAlgo!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestMetrics != nil {
            var tmp : [Any] = []
            for k in self.latestMetrics! {
                tmp.append(k.toMap())
            }
            map["LatestMetrics"] = tmp
        }
        if self.latestProgress != nil {
            map["LatestProgress"] = self.latestProgress?.toMap()
        }
        if self.outputChannels != nil {
            var tmp : [Any] = []
            for k in self.outputChannels! {
                tmp.append(k.toMap())
            }
            map["OutputChannels"] = tmp
        }
        if self.outputModel != nil {
            map["OutputModel"] = self.outputModel?.toMap()
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.pythonRequirements != nil {
            map["PythonRequirements"] = self.pythonRequirements!
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
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler?.toMap()
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusTransitions != nil {
            var tmp : [Any] = []
            for k in self.statusTransitions! {
                tmp.append(k.toMap())
            }
            map["StatusTransitions"] = tmp
        }
        if self.trainingJobDescription != nil {
            map["TrainingJobDescription"] = self.trainingJobDescription!
        }
        if self.trainingJobId != nil {
            map["TrainingJobId"] = self.trainingJobId!
        }
        if self.trainingJobName != nil {
            map["TrainingJobName"] = self.trainingJobName!
        }
        if self.trainingJobUrl != nil {
            map["TrainingJobUrl"] = self.trainingJobUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["AlgorithmSpec"] as? [String: Any?] {
            var model = AlgorithmSpec()
            model.fromMap(value)
            self.algorithmSpec = model
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
        if let value = dict["AssignNodeSpec"] as? [String: Any?] {
            var model = AssignNodeSpec()
            model.fromMap(value)
            self.assignNodeSpec = model
        }
        if let value = dict["ComputeResource"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.ComputeResource()
            model.fromMap(value)
            self.computeResource = model
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["Environments"] as? [String: String] {
            self.environments = value
        }
        if let value = dict["ExperimentConfig"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.ExperimentConfig()
            model.fromMap(value)
            self.experimentConfig = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["HyperParameters"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.HyperParameters] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.HyperParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hyperParameters = tmp
        }
        if let value = dict["InputChannels"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.InputChannels] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.InputChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inputChannels = tmp
        }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["IsTempAlgo"] as? Bool {
            self.isTempAlgo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestMetrics"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.LatestMetrics] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.LatestMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.latestMetrics = tmp
        }
        if let value = dict["LatestProgress"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.LatestProgress()
            model.fromMap(value)
            self.latestProgress = model
        }
        if let value = dict["OutputChannels"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.OutputChannels] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.OutputChannels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputChannels = tmp
        }
        if let value = dict["OutputModel"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.OutputModel()
            model.fromMap(value)
            self.outputModel = model
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["PythonRequirements"] as? [String] {
            self.pythonRequirements = value
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
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Scheduler"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.Scheduler()
            model.fromMap(value)
            self.scheduler = model
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = JobSettings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusTransitions"] as? [Any?] {
            var tmp : [GetTrainingJobResponseBody.StatusTransitions] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobResponseBody.StatusTransitions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statusTransitions = tmp
        }
        if let value = dict["TrainingJobDescription"] as? String {
            self.trainingJobDescription = value
        }
        if let value = dict["TrainingJobId"] as? String {
            self.trainingJobId = value
        }
        if let value = dict["TrainingJobName"] as? String {
            self.trainingJobName = value
        }
        if let value = dict["TrainingJobUrl"] as? String {
            self.trainingJobUrl = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetTrainingJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrainingJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrainingJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrainingJobErrorInfoResponseBody : Tea.TeaModel {
    public class ErrorInfo : Tea.TeaModel {
        public var additionalInfo: String?

        public var code: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalInfo != nil {
                map["AdditionalInfo"] = self.additionalInfo!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalInfo"] as? String {
                self.additionalInfo = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var errorInfo: GetTrainingJobErrorInfoResponseBody.ErrorInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorInfo != nil {
            map["ErrorInfo"] = self.errorInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorInfo"] as? [String: Any?] {
            var model = GetTrainingJobErrorInfoResponseBody.ErrorInfo()
            model.fromMap(value)
            self.errorInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetTrainingJobErrorInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrainingJobErrorInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrainingJobErrorInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrainingJobLatestMetricsRequest : Tea.TeaModel {
    public var names: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Names"] as? String {
            self.names = value
        }
    }
}

public class GetTrainingJobLatestMetricsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var name: String?

        public var timestamp: String?

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
            if self.name != nil {
                map["Name"] = self.name!
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
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var metrics: [GetTrainingJobLatestMetricsResponseBody.Metrics]?

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
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [GetTrainingJobLatestMetricsResponseBody.Metrics] = []
            for v in value {
                if v != nil {
                    var model = GetTrainingJobLatestMetricsResponseBody.Metrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetTrainingJobLatestMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrainingJobLatestMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrainingJobLatestMetricsResponseBody()
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

public class ListAlgorithmVersionsRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
    }
}

public class ListAlgorithmVersionsResponseBody : Tea.TeaModel {
    public class AlgorithmVersions : Tea.TeaModel {
        public var algorithmId: String?

        public var algorithmName: String?

        public var algorithmProvider: String?

        public var algorithmVersion: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

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
            if self.algorithmId != nil {
                map["AlgorithmId"] = self.algorithmId!
            }
            if self.algorithmName != nil {
                map["AlgorithmName"] = self.algorithmName!
            }
            if self.algorithmProvider != nil {
                map["AlgorithmProvider"] = self.algorithmProvider!
            }
            if self.algorithmVersion != nil {
                map["AlgorithmVersion"] = self.algorithmVersion!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
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
            if let value = dict["AlgorithmId"] as? String {
                self.algorithmId = value
            }
            if let value = dict["AlgorithmName"] as? String {
                self.algorithmName = value
            }
            if let value = dict["AlgorithmProvider"] as? String {
                self.algorithmProvider = value
            }
            if let value = dict["AlgorithmVersion"] as? String {
                self.algorithmVersion = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var algorithmVersions: [ListAlgorithmVersionsResponseBody.AlgorithmVersions]?

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
        if self.algorithmVersions != nil {
            var tmp : [Any] = []
            for k in self.algorithmVersions! {
                tmp.append(k.toMap())
            }
            map["AlgorithmVersions"] = tmp
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
        if let value = dict["AlgorithmVersions"] as? [Any?] {
            var tmp : [ListAlgorithmVersionsResponseBody.AlgorithmVersions] = []
            for v in value {
                if v != nil {
                    var model = ListAlgorithmVersionsResponseBody.AlgorithmVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.algorithmVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListAlgorithmVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlgorithmVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAlgorithmVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlgorithmsRequest : Tea.TeaModel {
    public var algorithmId: String?

    public var algorithmName: String?

    public var algorithmProvider: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListAlgorithmsResponseBody : Tea.TeaModel {
    public class Algorithms : Tea.TeaModel {
        public var algorithmDescription: String?

        public var algorithmId: String?

        public var algorithmName: String?

        public var algorithmProvider: String?

        public var displayName: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

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
            if self.algorithmDescription != nil {
                map["AlgorithmDescription"] = self.algorithmDescription!
            }
            if self.algorithmId != nil {
                map["AlgorithmId"] = self.algorithmId!
            }
            if self.algorithmName != nil {
                map["AlgorithmName"] = self.algorithmName!
            }
            if self.algorithmProvider != nil {
                map["AlgorithmProvider"] = self.algorithmProvider!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
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
            if let value = dict["AlgorithmDescription"] as? String {
                self.algorithmDescription = value
            }
            if let value = dict["AlgorithmId"] as? String {
                self.algorithmId = value
            }
            if let value = dict["AlgorithmName"] as? String {
                self.algorithmName = value
            }
            if let value = dict["AlgorithmProvider"] as? String {
                self.algorithmProvider = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var algorithms: [ListAlgorithmsResponseBody.Algorithms]?

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
        if self.algorithms != nil {
            var tmp : [Any] = []
            for k in self.algorithms! {
                tmp.append(k.toMap())
            }
            map["Algorithms"] = tmp
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
        if let value = dict["Algorithms"] as? [Any?] {
            var tmp : [ListAlgorithmsResponseBody.Algorithms] = []
            for v in value {
                if v != nil {
                    var model = ListAlgorithmsResponseBody.Algorithms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.algorithms = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListAlgorithmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlgorithmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAlgorithmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var availabilityZone: String?

    public var cliqueID: String?

    public var filterByQuotaId: String?

    public var filterByResourceGroupIds: String?

    public var GPUType: String?

    public var hyperNode: String?

    public var hyperZone: String?

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
        if self.hyperNode != nil {
            map["HyperNode"] = self.hyperNode!
        }
        if self.hyperZone != nil {
            map["HyperZone"] = self.hyperZone!
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
        if let value = dict["HyperNode"] as? String {
            self.hyperNode = value
        }
        if let value = dict["HyperZone"] as? String {
            self.hyperZone = value
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

public class ListQuotaWorkloadsRequest : Tea.TeaModel {
    public var beforeWorkloadId: String?

    public var gmtDequeuedTimeRange: TimeRangeFilter?

    public var gmtEnqueuedTimeRange: TimeRangeFilter?

    public var gmtPositionModifiedTimeRange: TimeRangeFilter?

    public var nodeName: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var showOwn: Bool?

    public var sortBy: String?

    public var status: String?

    public var subQuotaIds: String?

    public var userIds: String?

    public var withHistoricalData: Bool?

    public var workloadCreatedTimeRange: TimeRangeFilter?

    public var workloadIds: String?

    public var workloadStatuses: String?

    public var workloadType: String?

    public var workspaceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gmtDequeuedTimeRange?.validate()
        try self.gmtEnqueuedTimeRange?.validate()
        try self.gmtPositionModifiedTimeRange?.validate()
        try self.workloadCreatedTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beforeWorkloadId != nil {
            map["BeforeWorkloadId"] = self.beforeWorkloadId!
        }
        if self.gmtDequeuedTimeRange != nil {
            map["GmtDequeuedTimeRange"] = self.gmtDequeuedTimeRange?.toMap()
        }
        if self.gmtEnqueuedTimeRange != nil {
            map["GmtEnqueuedTimeRange"] = self.gmtEnqueuedTimeRange?.toMap()
        }
        if self.gmtPositionModifiedTimeRange != nil {
            map["GmtPositionModifiedTimeRange"] = self.gmtPositionModifiedTimeRange?.toMap()
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
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
        if self.showOwn != nil {
            map["ShowOwn"] = self.showOwn!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subQuotaIds != nil {
            map["SubQuotaIds"] = self.subQuotaIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        if self.withHistoricalData != nil {
            map["WithHistoricalData"] = self.withHistoricalData!
        }
        if self.workloadCreatedTimeRange != nil {
            map["WorkloadCreatedTimeRange"] = self.workloadCreatedTimeRange?.toMap()
        }
        if self.workloadIds != nil {
            map["WorkloadIds"] = self.workloadIds!
        }
        if self.workloadStatuses != nil {
            map["WorkloadStatuses"] = self.workloadStatuses!
        }
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeforeWorkloadId"] as? String {
            self.beforeWorkloadId = value
        }
        if let value = dict["GmtDequeuedTimeRange"] as? [String: Any?] {
            var model = TimeRangeFilter()
            model.fromMap(value)
            self.gmtDequeuedTimeRange = model
        }
        if let value = dict["GmtEnqueuedTimeRange"] as? [String: Any?] {
            var model = TimeRangeFilter()
            model.fromMap(value)
            self.gmtEnqueuedTimeRange = model
        }
        if let value = dict["GmtPositionModifiedTimeRange"] as? [String: Any?] {
            var model = TimeRangeFilter()
            model.fromMap(value)
            self.gmtPositionModifiedTimeRange = model
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
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
        if let value = dict["ShowOwn"] as? Bool {
            self.showOwn = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubQuotaIds"] as? String {
            self.subQuotaIds = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
        if let value = dict["WithHistoricalData"] as? Bool {
            self.withHistoricalData = value
        }
        if let value = dict["WorkloadCreatedTimeRange"] as? [String: Any?] {
            var model = TimeRangeFilter()
            model.fromMap(value)
            self.workloadCreatedTimeRange = model
        }
        if let value = dict["WorkloadIds"] as? String {
            self.workloadIds = value
        }
        if let value = dict["WorkloadStatuses"] as? String {
            self.workloadStatuses = value
        }
        if let value = dict["WorkloadType"] as? String {
            self.workloadType = value
        }
        if let value = dict["WorkspaceIds"] as? String {
            self.workspaceIds = value
        }
    }
}

public class ListQuotaWorkloadsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int64?

    public var workloads: [QueueInfo]?

    public override init() {
        super.init()
    }

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Workloads"] as? [Any?] {
            var tmp : [QueueInfo] = []
            for v in value {
                if v != nil {
                    var model = QueueInfo()
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

public class ListQuotaWorkloadsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaWorkloadsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaWorkloadsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotasRequest : Tea.TeaModel {
    public var clusterType: String?

    public var hasResource: String?

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

    public var versions: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.hasResource != nil {
            map["HasResource"] = self.hasResource!
        }
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
        if self.versions != nil {
            map["Versions"] = self.versions!
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
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["HasResource"] as? String {
            self.hasResource = value
        }
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
        if let value = dict["Versions"] as? String {
            self.versions = value
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

    public var machineGroupIDs: String?

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
        if self.machineGroupIDs != nil {
            map["MachineGroupIDs"] = self.machineGroupIDs!
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
        if let value = dict["MachineGroupIDs"] as? String {
            self.machineGroupIDs = value
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

    public var hasResource: Bool?

    public var name: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceGroupIDs: String?

    public var resourceType: String?

    public var showAll: Bool?

    public var sortBy: String?

    public var status: String?

    public var versions: String?

    public override init() {
        super.init()
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
        if self.hasResource != nil {
            map["HasResource"] = self.hasResource!
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
        if self.resourceGroupIDs != nil {
            map["ResourceGroupIDs"] = self.resourceGroupIDs!
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
        if self.versions != nil {
            map["Versions"] = self.versions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingResourceProvider"] as? String {
            self.computingResourceProvider = value
        }
        if let value = dict["HasResource"] as? Bool {
            self.hasResource = value
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
        if let value = dict["ResourceGroupIDs"] as? String {
            self.resourceGroupIDs = value
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
        if let value = dict["Versions"] as? String {
            self.versions = value
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
    public var nextToken: String?

    public var regionId: String?

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
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

public class ListTrainingJobEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTrainingJobEventsResponseBody : Tea.TeaModel {
    public var events: [String]?

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
        if self.events != nil {
            map["Events"] = self.events!
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
        if let value = dict["Events"] as? [String] {
            self.events = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListTrainingJobEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobInstanceEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTrainingJobInstanceEventsResponseBody : Tea.TeaModel {
    public var events: [String]?

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
        if self.events != nil {
            map["Events"] = self.events!
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
        if let value = dict["Events"] as? [String] {
            self.events = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListTrainingJobInstanceEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobInstanceEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobInstanceEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobInstanceMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var metricType: String?

    public var startTime: String?

    public var timeStep: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeStep != nil {
            map["TimeStep"] = self.timeStep!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeStep"] as? String {
            self.timeStep = value
        }
    }
}

public class ListTrainingJobInstanceMetricsResponseBody : Tea.TeaModel {
    public class InstanceMetrics : Tea.TeaModel {
        public class Metrics : Tea.TeaModel {
            public var time: String?

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
                if let value = dict["Time"] as? String {
                    self.time = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
                }
            }
        }
        public var instanceId: String?

        public var metrics: [ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics.Metrics]?

        public var nodeName: String?

        public override init() {
            super.init()
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
            if self.metrics != nil {
                var tmp : [Any] = []
                for k in self.metrics! {
                    tmp.append(k.toMap())
                }
                map["Metrics"] = tmp
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Metrics"] as? [Any?] {
                var tmp : [ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics.Metrics] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics.Metrics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metrics = tmp
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
        }
    }
    public var instanceMetrics: [ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics]?

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
        if self.instanceMetrics != nil {
            var tmp : [Any] = []
            for k in self.instanceMetrics! {
                tmp.append(k.toMap())
            }
            map["InstanceMetrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceMetrics"] as? [Any?] {
            var tmp : [ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics] = []
            for v in value {
                if v != nil {
                    var model = ListTrainingJobInstanceMetricsResponseBody.InstanceMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceMetrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTrainingJobInstanceMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobInstanceMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobInstanceMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobLogsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var startTime: String?

    public var workerId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.workerId != nil {
            map["WorkerId"] = self.workerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["WorkerId"] as? String {
            self.workerId = value
        }
    }
}

public class ListTrainingJobLogsResponseBody : Tea.TeaModel {
    public var logs: [String]?

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
        if self.logs != nil {
            map["Logs"] = self.logs!
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
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListTrainingJobLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTrainingJobMetricsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var name: String?

        public var timestamp: String?

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
            if self.name != nil {
                map["Name"] = self.name!
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
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var metrics: [ListTrainingJobMetricsResponseBody.Metrics]?

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
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
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
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [ListTrainingJobMetricsResponseBody.Metrics] = []
            for v in value {
                if v != nil {
                    var model = ListTrainingJobMetricsResponseBody.Metrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTrainingJobMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobOutputModelsResponseBody : Tea.TeaModel {
    public class OutputModels : Tea.TeaModel {
        public class Labels : Tea.TeaModel {
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
        public var compressionSpec: [String: Any]?

        public var evaluationSpec: [String: Any]?

        public var inferenceSpec: [String: Any]?

        public var labels: [ListTrainingJobOutputModelsResponseBody.OutputModels.Labels]?

        public var metrics: [String: Any]?

        public var outputChannelName: String?

        public var sourceId: String?

        public var sourceType: String?

        public var trainingSpec: [String: Any]?

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
            if self.compressionSpec != nil {
                map["CompressionSpec"] = self.compressionSpec!
            }
            if self.evaluationSpec != nil {
                map["EvaluationSpec"] = self.evaluationSpec!
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
            if self.outputChannelName != nil {
                map["OutputChannelName"] = self.outputChannelName!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompressionSpec"] as? [String: Any] {
                self.compressionSpec = value
            }
            if let value = dict["EvaluationSpec"] as? [String: Any] {
                self.evaluationSpec = value
            }
            if let value = dict["InferenceSpec"] as? [String: Any] {
                self.inferenceSpec = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListTrainingJobOutputModelsResponseBody.OutputModels.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobOutputModelsResponseBody.OutputModels.Labels()
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
            if let value = dict["OutputChannelName"] as? String {
                self.outputChannelName = value
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
        }
    }
    public var outputModels: [ListTrainingJobOutputModelsResponseBody.OutputModels]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputModels != nil {
            var tmp : [Any] = []
            for k in self.outputModels! {
                tmp.append(k.toMap())
            }
            map["OutputModels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutputModels"] as? [Any?] {
            var tmp : [ListTrainingJobOutputModelsResponseBody.OutputModels] = []
            for v in value {
                if v != nil {
                    var model = ListTrainingJobOutputModelsResponseBody.OutputModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputModels = tmp
        }
    }
}

public class ListTrainingJobOutputModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobOutputModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobOutputModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrainingJobsRequest : Tea.TeaModel {
    public var algorithmName: String?

    public var algorithmProvider: String?

    public var endTime: String?

    public var isTempAlgo: Bool?

    public var labels: [String: Any]?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var startTime: String?

    public var status: String?

    public var trainingJobId: String?

    public var trainingJobName: String?

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
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isTempAlgo != nil {
            map["IsTempAlgo"] = self.isTempAlgo!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trainingJobId != nil {
            map["TrainingJobId"] = self.trainingJobId!
        }
        if self.trainingJobName != nil {
            map["TrainingJobName"] = self.trainingJobName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsTempAlgo"] as? Bool {
            self.isTempAlgo = value
        }
        if let value = dict["Labels"] as? [String: Any] {
            self.labels = value
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
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TrainingJobId"] as? String {
            self.trainingJobId = value
        }
        if let value = dict["TrainingJobName"] as? String {
            self.trainingJobName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTrainingJobsShrinkRequest : Tea.TeaModel {
    public var algorithmName: String?

    public var algorithmProvider: String?

    public var endTime: String?

    public var isTempAlgo: Bool?

    public var labelsShrink: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var startTime: String?

    public var status: String?

    public var trainingJobId: String?

    public var trainingJobName: String?

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
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isTempAlgo != nil {
            map["IsTempAlgo"] = self.isTempAlgo!
        }
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trainingJobId != nil {
            map["TrainingJobId"] = self.trainingJobId!
        }
        if self.trainingJobName != nil {
            map["TrainingJobName"] = self.trainingJobName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsTempAlgo"] as? Bool {
            self.isTempAlgo = value
        }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
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
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TrainingJobId"] as? String {
            self.trainingJobId = value
        }
        if let value = dict["TrainingJobName"] as? String {
            self.trainingJobName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTrainingJobsResponseBody : Tea.TeaModel {
    public class TrainingJobs : Tea.TeaModel {
        public class ComputeResource : Tea.TeaModel {
            public class InstanceSpec : Tea.TeaModel {
                public var CPU: String?

                public var GPU: String?

                public var GPUType: String?

                public var memory: String?

                public var sharedMemory: String?

                public override init() {
                    super.init()
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
                    if self.sharedMemory != nil {
                        map["SharedMemory"] = self.sharedMemory!
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
                    if let value = dict["SharedMemory"] as? String {
                        self.sharedMemory = value
                    }
                }
            }
            public var ecsCount: Int64?

            public var ecsSpec: String?

            public var instanceCount: Int64?

            public var instanceSpec: ListTrainingJobsResponseBody.TrainingJobs.ComputeResource.InstanceSpec?

            public var resourceId: String?

            public var resourceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.instanceSpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsCount != nil {
                    map["EcsCount"] = self.ecsCount!
                }
                if self.ecsSpec != nil {
                    map["EcsSpec"] = self.ecsSpec!
                }
                if self.instanceCount != nil {
                    map["InstanceCount"] = self.instanceCount!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec?.toMap()
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EcsCount"] as? Int64 {
                    self.ecsCount = value
                }
                if let value = dict["EcsSpec"] as? String {
                    self.ecsSpec = value
                }
                if let value = dict["InstanceCount"] as? Int64 {
                    self.instanceCount = value
                }
                if let value = dict["InstanceSpec"] as? [String: Any?] {
                    var model = ListTrainingJobsResponseBody.TrainingJobs.ComputeResource.InstanceSpec()
                    model.fromMap(value)
                    self.instanceSpec = model
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
            }
        }
        public class ExperimentConfig : Tea.TeaModel {
            public var experimentId: String?

            public var experimentName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.experimentId != nil {
                    map["ExperimentId"] = self.experimentId!
                }
                if self.experimentName != nil {
                    map["ExperimentName"] = self.experimentName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExperimentId"] as? String {
                    self.experimentId = value
                }
                if let value = dict["ExperimentName"] as? String {
                    self.experimentName = value
                }
            }
        }
        public class HyperParameters : Tea.TeaModel {
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
        public class InputChannels : Tea.TeaModel {
            public var datasetId: String?

            public var inputUri: String?

            public var name: String?

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
                if self.datasetId != nil {
                    map["DatasetId"] = self.datasetId!
                }
                if self.inputUri != nil {
                    map["InputUri"] = self.inputUri!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DatasetId"] as? String {
                    self.datasetId = value
                }
                if let value = dict["InputUri"] as? String {
                    self.inputUri = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
        public class Labels : Tea.TeaModel {
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
        public class OutputChannels : Tea.TeaModel {
            public var datasetId: String?

            public var name: String?

            public var outputUri: String?

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
                if self.datasetId != nil {
                    map["DatasetId"] = self.datasetId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.outputUri != nil {
                    map["OutputUri"] = self.outputUri!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DatasetId"] as? String {
                    self.datasetId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OutputUri"] as? String {
                    self.outputUri = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
        public class Scheduler : Tea.TeaModel {
            public var maxRunningTimeInSeconds: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxRunningTimeInSeconds != nil {
                    map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaxRunningTimeInSeconds"] as? Int64 {
                    self.maxRunningTimeInSeconds = value
                }
            }
        }
        public class StatusTransitions : Tea.TeaModel {
            public var endTime: String?

            public var reasonCode: String?

            public var reasonMessage: String?

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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.reasonCode != nil {
                    map["ReasonCode"] = self.reasonCode!
                }
                if self.reasonMessage != nil {
                    map["ReasonMessage"] = self.reasonMessage!
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
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ReasonCode"] as? String {
                    self.reasonCode = value
                }
                if let value = dict["ReasonMessage"] as? String {
                    self.reasonMessage = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class UserVpc : Tea.TeaModel {
            public var defaultRoute: String?

            public var extendedCIDRs: [String]?

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
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultRoute != nil {
                    map["DefaultRoute"] = self.defaultRoute!
                }
                if self.extendedCIDRs != nil {
                    map["ExtendedCIDRs"] = self.extendedCIDRs!
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
                if let value = dict["DefaultRoute"] as? String {
                    self.defaultRoute = value
                }
                if let value = dict["ExtendedCIDRs"] as? [String] {
                    self.extendedCIDRs = value
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
        public var algorithmName: String?

        public var algorithmProvider: String?

        public var algorithmVersion: String?

        public var assignNodeSpec: AssignNodeSpec?

        public var computeResource: ListTrainingJobsResponseBody.TrainingJobs.ComputeResource?

        public var dlcJobId: String?

        public var environments: [String: String]?

        public var experimentConfig: ListTrainingJobsResponseBody.TrainingJobs.ExperimentConfig?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var hyperParameters: [ListTrainingJobsResponseBody.TrainingJobs.HyperParameters]?

        public var inputChannels: [ListTrainingJobsResponseBody.TrainingJobs.InputChannels]?

        public var isTempAlgo: Bool?

        public var labels: [ListTrainingJobsResponseBody.TrainingJobs.Labels]?

        public var outputChannels: [ListTrainingJobsResponseBody.TrainingJobs.OutputChannels]?

        public var pythonRequirements: [String]?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var roleArn: String?

        public var scheduler: ListTrainingJobsResponseBody.TrainingJobs.Scheduler?

        public var status: String?

        public var statusTransitions: [ListTrainingJobsResponseBody.TrainingJobs.StatusTransitions]?

        public var trainingJobDescription: String?

        public var trainingJobId: String?

        public var trainingJobName: String?

        public var userId: String?

        public var userVpc: ListTrainingJobsResponseBody.TrainingJobs.UserVpc?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.assignNodeSpec?.validate()
            try self.computeResource?.validate()
            try self.experimentConfig?.validate()
            try self.scheduler?.validate()
            try self.userVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithmName != nil {
                map["AlgorithmName"] = self.algorithmName!
            }
            if self.algorithmProvider != nil {
                map["AlgorithmProvider"] = self.algorithmProvider!
            }
            if self.algorithmVersion != nil {
                map["AlgorithmVersion"] = self.algorithmVersion!
            }
            if self.assignNodeSpec != nil {
                map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
            }
            if self.computeResource != nil {
                map["ComputeResource"] = self.computeResource?.toMap()
            }
            if self.dlcJobId != nil {
                map["DlcJobId"] = self.dlcJobId!
            }
            if self.environments != nil {
                map["Environments"] = self.environments!
            }
            if self.experimentConfig != nil {
                map["ExperimentConfig"] = self.experimentConfig?.toMap()
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.hyperParameters != nil {
                var tmp : [Any] = []
                for k in self.hyperParameters! {
                    tmp.append(k.toMap())
                }
                map["HyperParameters"] = tmp
            }
            if self.inputChannels != nil {
                var tmp : [Any] = []
                for k in self.inputChannels! {
                    tmp.append(k.toMap())
                }
                map["InputChannels"] = tmp
            }
            if self.isTempAlgo != nil {
                map["IsTempAlgo"] = self.isTempAlgo!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.outputChannels != nil {
                var tmp : [Any] = []
                for k in self.outputChannels! {
                    tmp.append(k.toMap())
                }
                map["OutputChannels"] = tmp
            }
            if self.pythonRequirements != nil {
                map["PythonRequirements"] = self.pythonRequirements!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusTransitions != nil {
                var tmp : [Any] = []
                for k in self.statusTransitions! {
                    tmp.append(k.toMap())
                }
                map["StatusTransitions"] = tmp
            }
            if self.trainingJobDescription != nil {
                map["TrainingJobDescription"] = self.trainingJobDescription!
            }
            if self.trainingJobId != nil {
                map["TrainingJobId"] = self.trainingJobId!
            }
            if self.trainingJobName != nil {
                map["TrainingJobName"] = self.trainingJobName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userVpc != nil {
                map["UserVpc"] = self.userVpc?.toMap()
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlgorithmName"] as? String {
                self.algorithmName = value
            }
            if let value = dict["AlgorithmProvider"] as? String {
                self.algorithmProvider = value
            }
            if let value = dict["AlgorithmVersion"] as? String {
                self.algorithmVersion = value
            }
            if let value = dict["AssignNodeSpec"] as? [String: Any?] {
                var model = AssignNodeSpec()
                model.fromMap(value)
                self.assignNodeSpec = model
            }
            if let value = dict["ComputeResource"] as? [String: Any?] {
                var model = ListTrainingJobsResponseBody.TrainingJobs.ComputeResource()
                model.fromMap(value)
                self.computeResource = model
            }
            if let value = dict["DlcJobId"] as? String {
                self.dlcJobId = value
            }
            if let value = dict["Environments"] as? [String: String] {
                self.environments = value
            }
            if let value = dict["ExperimentConfig"] as? [String: Any?] {
                var model = ListTrainingJobsResponseBody.TrainingJobs.ExperimentConfig()
                model.fromMap(value)
                self.experimentConfig = model
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["HyperParameters"] as? [Any?] {
                var tmp : [ListTrainingJobsResponseBody.TrainingJobs.HyperParameters] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobsResponseBody.TrainingJobs.HyperParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hyperParameters = tmp
            }
            if let value = dict["InputChannels"] as? [Any?] {
                var tmp : [ListTrainingJobsResponseBody.TrainingJobs.InputChannels] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobsResponseBody.TrainingJobs.InputChannels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inputChannels = tmp
            }
            if let value = dict["IsTempAlgo"] as? Bool {
                self.isTempAlgo = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListTrainingJobsResponseBody.TrainingJobs.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobsResponseBody.TrainingJobs.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["OutputChannels"] as? [Any?] {
                var tmp : [ListTrainingJobsResponseBody.TrainingJobs.OutputChannels] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobsResponseBody.TrainingJobs.OutputChannels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outputChannels = tmp
            }
            if let value = dict["PythonRequirements"] as? [String] {
                self.pythonRequirements = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["Scheduler"] as? [String: Any?] {
                var model = ListTrainingJobsResponseBody.TrainingJobs.Scheduler()
                model.fromMap(value)
                self.scheduler = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusTransitions"] as? [Any?] {
                var tmp : [ListTrainingJobsResponseBody.TrainingJobs.StatusTransitions] = []
                for v in value {
                    if v != nil {
                        var model = ListTrainingJobsResponseBody.TrainingJobs.StatusTransitions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.statusTransitions = tmp
            }
            if let value = dict["TrainingJobDescription"] as? String {
                self.trainingJobDescription = value
            }
            if let value = dict["TrainingJobId"] as? String {
                self.trainingJobId = value
            }
            if let value = dict["TrainingJobName"] as? String {
                self.trainingJobName = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserVpc"] as? [String: Any?] {
                var model = ListTrainingJobsResponseBody.TrainingJobs.UserVpc()
                model.fromMap(value)
                self.userVpc = model
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var trainingJobs: [ListTrainingJobsResponseBody.TrainingJobs]?

    public override init() {
        super.init()
    }

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trainingJobs != nil {
            var tmp : [Any] = []
            for k in self.trainingJobs! {
                tmp.append(k.toMap())
            }
            map["TrainingJobs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TrainingJobs"] as? [Any?] {
            var tmp : [ListTrainingJobsResponseBody.TrainingJobs] = []
            for v in value {
                if v != nil {
                    var model = ListTrainingJobsResponseBody.TrainingJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trainingJobs = tmp
        }
    }
}

public class ListTrainingJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrainingJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrainingJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScaleQuotaRequest : Tea.TeaModel {
    public var min: ResourceSpec?

    public var resourceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.min?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.min != nil {
            map["Min"] = self.min?.toMap()
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Min"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.min = model
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
    }
}

public class ScaleQuotaResponseBody : Tea.TeaModel {
    public var quotaId: String?

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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScaleQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScaleQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTrainingJobResponseBody : Tea.TeaModel {
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

public class StopTrainingJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTrainingJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopTrainingJobResponseBody()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
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

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

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
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class UpdateAlgorithmRequest : Tea.TeaModel {
    public var algorithmDescription: String?

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
        if self.algorithmDescription != nil {
            map["AlgorithmDescription"] = self.algorithmDescription!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmDescription"] as? String {
            self.algorithmDescription = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
    }
}

public class UpdateAlgorithmResponseBody : Tea.TeaModel {
    public var algorithmId: String?

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
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAlgorithmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlgorithmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAlgorithmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAlgorithmVersionRequest : Tea.TeaModel {
    public var algorithmSpec: AlgorithmSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.algorithmSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmSpec != nil {
            map["AlgorithmSpec"] = self.algorithmSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmSpec"] as? [String: Any?] {
            var model = AlgorithmSpec()
            model.fromMap(value)
            self.algorithmSpec = model
        }
    }
}

public class UpdateAlgorithmVersionShrinkRequest : Tea.TeaModel {
    public var algorithmSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmSpecShrink != nil {
            map["AlgorithmSpec"] = self.algorithmSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmSpec"] as? String {
            self.algorithmSpecShrink = value
        }
    }
}

public class UpdateAlgorithmVersionResponseBody : Tea.TeaModel {
    public var algorithmId: String?

    public var algorithmVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmId != nil {
            map["AlgorithmId"] = self.algorithmId!
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmId"] as? String {
            self.algorithmId = value
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
    }
}

public class UpdateAlgorithmVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlgorithmVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAlgorithmVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQuotaRequest : Tea.TeaModel {
    public var description_: String?

    public var labels: [Label]?

    public var queueStrategy: String?

    public var quotaConfig: QuotaConfig?

    public var quotaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.queueStrategy != nil {
            map["QueueStrategy"] = self.queueStrategy!
        }
        if self.quotaConfig != nil {
            map["QuotaConfig"] = self.quotaConfig?.toMap()
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
        if let value = dict["QueueStrategy"] as? String {
            self.queueStrategy = value
        }
        if let value = dict["QuotaConfig"] as? [String: Any?] {
            var model = QuotaConfig()
            model.fromMap(value)
            self.quotaConfig = model
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
    }
}

public class UpdateQuotaResponseBody : Tea.TeaModel {
    public var quotaId: String?

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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var unbind: Bool?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.unbind != nil {
            map["Unbind"] = self.unbind!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
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
        if let value = dict["Unbind"] as? Bool {
            self.unbind = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
    }
}

public class UpdateResourceGroupResponseBody : Tea.TeaModel {
    public var resourceGroupID: String?

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
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTrainingJobLabelsRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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
    public var labels: [UpdateTrainingJobLabelsRequest.Labels]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [UpdateTrainingJobLabelsRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = UpdateTrainingJobLabelsRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
    }
}

public class UpdateTrainingJobLabelsResponseBody : Tea.TeaModel {
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

public class UpdateTrainingJobLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrainingJobLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTrainingJobLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
