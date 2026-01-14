import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AutoUpdateConfig : Tea.TeaModel {
    public class EcsSpecs : Tea.TeaModel {
        public var CPU: Int32?

        public var driver: String?

        public var GPU: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var sharedMemory: Int32?

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
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.driver != nil {
                map["Driver"] = self.driver!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["Driver"] as? String {
                self.driver = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var batchSize: Int32?

        public var concurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
        }
    }
    public var ecsSpecs: [AutoUpdateConfig.EcsSpecs]?

    public var embeddingConfig: AutoUpdateConfig.EmbeddingConfig?

    public var maxRunningTimeInSeconds: Int32?

    public var resourceId: String?

    public var status: String?

    public var userVpc: UserVpc?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embeddingConfig?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.maxRunningTimeInSeconds != nil {
            map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [AutoUpdateConfig.EcsSpecs] = []
            for v in value {
                if v != nil {
                    var model = AutoUpdateConfig.EcsSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = AutoUpdateConfig.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
            self.maxRunningTimeInSeconds = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
    }
}

public class Connection : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var displayName: String?

        public var maxModelLength: Int32?

        public var model: String?

        public var modelType: String?

        public var supportReasoning: Bool?

        public var supportResponseSchema: Bool?

        public var supportVision: Bool?

        public var toolCall: Bool?

        public override init() {
            super.init()
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
                map["DisplayName"] = self.displayName!
            }
            if self.maxModelLength != nil {
                map["MaxModelLength"] = self.maxModelLength!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.supportReasoning != nil {
                map["SupportReasoning"] = self.supportReasoning!
            }
            if self.supportResponseSchema != nil {
                map["SupportResponseSchema"] = self.supportResponseSchema!
            }
            if self.supportVision != nil {
                map["SupportVision"] = self.supportVision!
            }
            if self.toolCall != nil {
                map["ToolCall"] = self.toolCall!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["MaxModelLength"] as? Int32 {
                self.maxModelLength = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["SupportReasoning"] as? Bool {
                self.supportReasoning = value
            }
            if let value = dict["SupportResponseSchema"] as? Bool {
                self.supportResponseSchema = value
            }
            if let value = dict["SupportVision"] as? Bool {
                self.supportVision = value
            }
            if let value = dict["ToolCall"] as? Bool {
                self.toolCall = value
            }
        }
    }
    public class ResourceMeta : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public var accessibility: String?

    public var configs: [String: String]?

    public var connectionId: String?

    public var connectionName: String?

    public var connectionType: String?

    public var creator: String?

    public var customType: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var models: [Connection.Models]?

    public var resourceMeta: Connection.ResourceMeta?

    public var secrets: [String: String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.connectionId != nil {
            map["ConnectionId"] = self.connectionId!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.customType != nil {
            map["CustomType"] = self.customType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["Models"] = tmp
        }
        if self.resourceMeta != nil {
            map["ResourceMeta"] = self.resourceMeta?.toMap()
        }
        if self.secrets != nil {
            map["Secrets"] = self.secrets!
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
        if let value = dict["Configs"] as? [String: String] {
            self.configs = value
        }
        if let value = dict["ConnectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CustomType"] as? String {
            self.customType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [Connection.Models] = []
            for v in value {
                if v != nil {
                    var model = Connection.Models()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["ResourceMeta"] as? [String: Any?] {
            var model = Connection.ResourceMeta()
            model.fromMap(value)
            self.resourceMeta = model
        }
        if let value = dict["Secrets"] as? [String: String] {
            self.secrets = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Deployment : Tea.TeaModel {
    public class ChatHistoryConfig : Tea.TeaModel {
        public var connectionName: String?

        public var storageType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionName != nil {
                map["ConnectionName"] = self.connectionName!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionName"] as? String {
                self.connectionName = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
        }
    }
    public class ContentModerationConfig : Tea.TeaModel {
        public var enableInputModeration: Bool?

        public var enableOutputModeration: Bool?

        public var streamingModerationThreshold: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInputModeration != nil {
                map["EnableInputModeration"] = self.enableInputModeration!
            }
            if self.enableOutputModeration != nil {
                map["EnableOutputModeration"] = self.enableOutputModeration!
            }
            if self.streamingModerationThreshold != nil {
                map["StreamingModerationThreshold"] = self.streamingModerationThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableInputModeration"] as? Bool {
                self.enableInputModeration = value
            }
            if let value = dict["EnableOutputModeration"] as? Bool {
                self.enableOutputModeration = value
            }
            if let value = dict["StreamingModerationThreshold"] as? Int32 {
                self.streamingModerationThreshold = value
            }
        }
    }
    public class CredentialConfig : Tea.TeaModel {
        public class CredentialConfigItems : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public var assumeRoleFor: String?

                public var roleArn: String?

                public var roleType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.assumeRoleFor != nil {
                        map["AssumeRoleFor"] = self.assumeRoleFor!
                    }
                    if self.roleArn != nil {
                        map["RoleArn"] = self.roleArn!
                    }
                    if self.roleType != nil {
                        map["RoleType"] = self.roleType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AssumeRoleFor"] as? String {
                        self.assumeRoleFor = value
                    }
                    if let value = dict["RoleArn"] as? String {
                        self.roleArn = value
                    }
                    if let value = dict["RoleType"] as? String {
                        self.roleType = value
                    }
                }
            }
            public var key: String?

            public var roles: [Deployment.CredentialConfig.CredentialConfigItems.Roles]?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [Deployment.CredentialConfig.CredentialConfigItems.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = Deployment.CredentialConfig.CredentialConfigItems.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var aliyunEnvRoleKey: String?

        public var credentialConfigItems: [Deployment.CredentialConfig.CredentialConfigItems]?

        public var enableCredentialInject: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunEnvRoleKey != nil {
                map["AliyunEnvRoleKey"] = self.aliyunEnvRoleKey!
            }
            if self.credentialConfigItems != nil {
                var tmp : [Any] = []
                for k in self.credentialConfigItems! {
                    tmp.append(k.toMap())
                }
                map["CredentialConfigItems"] = tmp
            }
            if self.enableCredentialInject != nil {
                map["EnableCredentialInject"] = self.enableCredentialInject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunEnvRoleKey"] as? String {
                self.aliyunEnvRoleKey = value
            }
            if let value = dict["CredentialConfigItems"] as? [Any?] {
                var tmp : [Deployment.CredentialConfig.CredentialConfigItems] = []
                for v in value {
                    if v != nil {
                        var model = Deployment.CredentialConfig.CredentialConfigItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentialConfigItems = tmp
            }
            if let value = dict["EnableCredentialInject"] as? Bool {
                self.enableCredentialInject = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var datasetId: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
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
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class DeploymentStages : Tea.TeaModel {
        public var description_: String?

        public var errorMessage: String?

        public var gmtEndTime: String?

        public var gmtStartTime: String?

        public var stage: Int32?

        public var stageInfo: String?

        public var stageName: String?

        public var stageStatus: String?

        public override init() {
            super.init()
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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.stage != nil {
                map["Stage"] = self.stage!
            }
            if self.stageInfo != nil {
                map["StageInfo"] = self.stageInfo!
            }
            if self.stageName != nil {
                map["StageName"] = self.stageName!
            }
            if self.stageStatus != nil {
                map["StageStatus"] = self.stageStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["Stage"] as? Int32 {
                self.stage = value
            }
            if let value = dict["StageInfo"] as? String {
                self.stageInfo = value
            }
            if let value = dict["StageName"] as? String {
                self.stageName = value
            }
            if let value = dict["StageStatus"] as? String {
                self.stageStatus = value
            }
        }
    }
    public class EcsSpec : Tea.TeaModel {
        public class ComputingInstanceConfig : Tea.TeaModel {
            public class ComputingInstances : Tea.TeaModel {
                public var spotPriceLimit: Double?

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
                    if self.spotPriceLimit != nil {
                        map["SpotPriceLimit"] = self.spotPriceLimit!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SpotPriceLimit"] as? Double {
                        self.spotPriceLimit = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var computingInstances: [Deployment.EcsSpec.ComputingInstanceConfig.ComputingInstances]?

            public var disableSpotProtectionPeriod: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computingInstances != nil {
                    var tmp : [Any] = []
                    for k in self.computingInstances! {
                        tmp.append(k.toMap())
                    }
                    map["ComputingInstances"] = tmp
                }
                if self.disableSpotProtectionPeriod != nil {
                    map["DisableSpotProtectionPeriod"] = self.disableSpotProtectionPeriod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComputingInstances"] as? [Any?] {
                    var tmp : [Deployment.EcsSpec.ComputingInstanceConfig.ComputingInstances] = []
                    for v in value {
                        if v != nil {
                            var model = Deployment.EcsSpec.ComputingInstanceConfig.ComputingInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.computingInstances = tmp
                }
                if let value = dict["DisableSpotProtectionPeriod"] as? Bool {
                    self.disableSpotProtectionPeriod = value
                }
            }
        }
        public var CPU: Int32?

        public var computingInstanceConfig: Deployment.EcsSpec.ComputingInstanceConfig?

        public var extraEphemeralStorage: Int32?

        public var GPU: Int32?

        public var GPUCorePercentage: Int32?

        public var GPUMemory: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var quotaId: String?

        public var quotaType: String?

        public var resourceBurstable: Bool?

        public var resourceId: String?

        public var sharedMemory: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.computingInstanceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.computingInstanceConfig != nil {
                map["ComputingInstanceConfig"] = self.computingInstanceConfig?.toMap()
            }
            if self.extraEphemeralStorage != nil {
                map["ExtraEphemeralStorage"] = self.extraEphemeralStorage!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUCorePercentage != nil {
                map["GPUCorePercentage"] = self.GPUCorePercentage!
            }
            if self.GPUMemory != nil {
                map["GPUMemory"] = self.GPUMemory!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.resourceBurstable != nil {
                map["ResourceBurstable"] = self.resourceBurstable!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["ComputingInstanceConfig"] as? [String: Any?] {
                var model = Deployment.EcsSpec.ComputingInstanceConfig()
                model.fromMap(value)
                self.computingInstanceConfig = model
            }
            if let value = dict["ExtraEphemeralStorage"] as? Int32 {
                self.extraEphemeralStorage = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUCorePercentage"] as? Int32 {
                self.GPUCorePercentage = value
            }
            if let value = dict["GPUMemory"] as? Int32 {
                self.GPUMemory = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["ResourceBurstable"] as? Bool {
                self.resourceBurstable = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
        }
    }
    public class Envs : Tea.TeaModel {
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
    public class UserVpc : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var autoApproval: Bool?

    public var chatHistoryConfig: Deployment.ChatHistoryConfig?

    public var contentModerationConfig: Deployment.ContentModerationConfig?

    public var creator: String?

    public var credentialConfig: Deployment.CredentialConfig?

    public var dataSources: [Deployment.DataSources]?

    public var deploymentConfig: String?

    public var deploymentId: String?

    public var deploymentStages: [Deployment.DeploymentStages]?

    public var deploymentStatus: String?

    public var description_: String?

    public var ecsSpec: Deployment.EcsSpec?

    public var enableTrace: Bool?

    public var envs: [Deployment.Envs]?

    public var errorMessage: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Deployment.Labels]?

    public var operationType: String?

    public var resourceId: String?

    public var resourceSnapshotId: String?

    public var resourceType: String?

    public var serviceGroup: String?

    public var serviceName: String?

    public var userVpc: Deployment.UserVpc?

    public var workDir: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.chatHistoryConfig?.validate()
        try self.contentModerationConfig?.validate()
        try self.credentialConfig?.validate()
        try self.ecsSpec?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.autoApproval != nil {
            map["AutoApproval"] = self.autoApproval!
        }
        if self.chatHistoryConfig != nil {
            map["ChatHistoryConfig"] = self.chatHistoryConfig?.toMap()
        }
        if self.contentModerationConfig != nil {
            map["ContentModerationConfig"] = self.contentModerationConfig?.toMap()
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.deploymentConfig != nil {
            map["DeploymentConfig"] = self.deploymentConfig!
        }
        if self.deploymentId != nil {
            map["DeploymentId"] = self.deploymentId!
        }
        if self.deploymentStages != nil {
            var tmp : [Any] = []
            for k in self.deploymentStages! {
                tmp.append(k.toMap())
            }
            map["DeploymentStages"] = tmp
        }
        if self.deploymentStatus != nil {
            map["DeploymentStatus"] = self.deploymentStatus!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec?.toMap()
        }
        if self.enableTrace != nil {
            map["EnableTrace"] = self.enableTrace!
        }
        if self.envs != nil {
            var tmp : [Any] = []
            for k in self.envs! {
                tmp.append(k.toMap())
            }
            map["Envs"] = tmp
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceSnapshotId != nil {
            map["ResourceSnapshotId"] = self.resourceSnapshotId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceGroup != nil {
            map["ServiceGroup"] = self.serviceGroup!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workDir != nil {
            map["WorkDir"] = self.workDir!
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
        if let value = dict["AutoApproval"] as? Bool {
            self.autoApproval = value
        }
        if let value = dict["ChatHistoryConfig"] as? [String: Any?] {
            var model = Deployment.ChatHistoryConfig()
            model.fromMap(value)
            self.chatHistoryConfig = model
        }
        if let value = dict["ContentModerationConfig"] as? [String: Any?] {
            var model = Deployment.ContentModerationConfig()
            model.fromMap(value)
            self.contentModerationConfig = model
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = Deployment.CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [Deployment.DataSources] = []
            for v in value {
                if v != nil {
                    var model = Deployment.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DeploymentConfig"] as? String {
            self.deploymentConfig = value
        }
        if let value = dict["DeploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["DeploymentStages"] as? [Any?] {
            var tmp : [Deployment.DeploymentStages] = []
            for v in value {
                if v != nil {
                    var model = Deployment.DeploymentStages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deploymentStages = tmp
        }
        if let value = dict["DeploymentStatus"] as? String {
            self.deploymentStatus = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EcsSpec"] as? [String: Any?] {
            var model = Deployment.EcsSpec()
            model.fromMap(value)
            self.ecsSpec = model
        }
        if let value = dict["EnableTrace"] as? Bool {
            self.enableTrace = value
        }
        if let value = dict["Envs"] as? [Any?] {
            var tmp : [Deployment.Envs] = []
            for v in value {
                if v != nil {
                    var model = Deployment.Envs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.envs = tmp
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Deployment.Labels] = []
            for v in value {
                if v != nil {
                    var model = Deployment.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceSnapshotId"] as? String {
            self.resourceSnapshotId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceGroup"] as? String {
            self.serviceGroup = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = Deployment.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkDir"] as? String {
            self.workDir = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class EcsSpec : Tea.TeaModel {
    public var CPU: Int32?

    public var driver: String?

    public var GPU: Int32?

    public var GPUType: String?

    public var instanceType: String?

    public var memory: Int32?

    public var podCount: Int32?

    public var sharedMemory: Int32?

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
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.podCount != nil {
            map["PodCount"] = self.podCount!
        }
        if self.sharedMemory != nil {
            map["SharedMemory"] = self.sharedMemory!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPU"] as? Int32 {
            self.CPU = value
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["GPU"] as? Int32 {
            self.GPU = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["PodCount"] as? Int32 {
            self.podCount = value
        }
        if let value = dict["SharedMemory"] as? Int32 {
            self.sharedMemory = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class Flow : Tea.TeaModel {
    public class Runtime : Tea.TeaModel {
        public var runtimeId: String?

        public var runtimeName: String?

        public var runtimeStatus: String?

        public var runtimeType: String?

        public var supportSSEStream: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.runtimeId != nil {
                map["RuntimeId"] = self.runtimeId!
            }
            if self.runtimeName != nil {
                map["RuntimeName"] = self.runtimeName!
            }
            if self.runtimeStatus != nil {
                map["RuntimeStatus"] = self.runtimeStatus!
            }
            if self.runtimeType != nil {
                map["RuntimeType"] = self.runtimeType!
            }
            if self.supportSSEStream != nil {
                map["SupportSSEStream"] = self.supportSSEStream!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RuntimeId"] as? String {
                self.runtimeId = value
            }
            if let value = dict["RuntimeName"] as? String {
                self.runtimeName = value
            }
            if let value = dict["RuntimeStatus"] as? String {
                self.runtimeStatus = value
            }
            if let value = dict["RuntimeType"] as? String {
                self.runtimeType = value
            }
            if let value = dict["SupportSSEStream"] as? Bool {
                self.supportSSEStream = value
            }
        }
    }
    public var accessibility: String?

    public var codeModeRunInfo: String?

    public var createFrom: String?

    public var creator: String?

    public var description_: String?

    public var flowId: String?

    public var flowName: String?

    public var flowStoragePath: String?

    public var flowTemplateId: String?

    public var flowType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var runtime: Flow.Runtime?

    public var runtimeId: String?

    public var sourceUri: String?

    public var version: String?

    public var workDir: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.codeModeRunInfo != nil {
            map["CodeModeRunInfo"] = self.codeModeRunInfo!
        }
        if self.createFrom != nil {
            map["CreateFrom"] = self.createFrom!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowStoragePath != nil {
            map["FlowStoragePath"] = self.flowStoragePath!
        }
        if self.flowTemplateId != nil {
            map["FlowTemplateId"] = self.flowTemplateId!
        }
        if self.flowType != nil {
            map["FlowType"] = self.flowType!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.runtime != nil {
            map["Runtime"] = self.runtime?.toMap()
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.workDir != nil {
            map["WorkDir"] = self.workDir!
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
        if let value = dict["CodeModeRunInfo"] as? String {
            self.codeModeRunInfo = value
        }
        if let value = dict["CreateFrom"] as? String {
            self.createFrom = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowStoragePath"] as? String {
            self.flowStoragePath = value
        }
        if let value = dict["FlowTemplateId"] as? String {
            self.flowTemplateId = value
        }
        if let value = dict["FlowType"] as? String {
            self.flowType = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Runtime"] as? [String: Any?] {
            var model = Flow.Runtime()
            model.fromMap(value)
            self.runtime = model
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["SourceUri"] as? String {
            self.sourceUri = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["WorkDir"] as? String {
            self.workDir = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class FlowRun : Tea.TeaModel {
    public class ChildRuns : Tea.TeaModel {
        public class FlowSource : Tea.TeaModel {
            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class JobInfo : Tea.TeaModel {
            public var jobId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
            }
        }
        public var duration: Int32?

        public var flowRunId: String?

        public var flowSource: FlowRun.ChildRuns.FlowSource?

        public var gmtCreateTime: String?

        public var gmtFinishTime: String?

        public var gmtModifiedTime: String?

        public var gmtStartTime: String?

        public var jobInfo: FlowRun.ChildRuns.JobInfo?

        public var runMode: String?

        public var runName: String?

        public var runResult: String?

        public var runStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flowSource?.validate()
            try self.jobInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.flowRunId != nil {
                map["FlowRunId"] = self.flowRunId!
            }
            if self.flowSource != nil {
                map["FlowSource"] = self.flowSource?.toMap()
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtFinishTime != nil {
                map["GmtFinishTime"] = self.gmtFinishTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.jobInfo != nil {
                map["JobInfo"] = self.jobInfo?.toMap()
            }
            if self.runMode != nil {
                map["RunMode"] = self.runMode!
            }
            if self.runName != nil {
                map["RunName"] = self.runName!
            }
            if self.runResult != nil {
                map["RunResult"] = self.runResult!
            }
            if self.runStatus != nil {
                map["RunStatus"] = self.runStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["FlowRunId"] as? String {
                self.flowRunId = value
            }
            if let value = dict["FlowSource"] as? [String: Any?] {
                var model = FlowRun.ChildRuns.FlowSource()
                model.fromMap(value)
                self.flowSource = model
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtFinishTime"] as? String {
                self.gmtFinishTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["JobInfo"] as? [String: Any?] {
                var model = FlowRun.ChildRuns.JobInfo()
                model.fromMap(value)
                self.jobInfo = model
            }
            if let value = dict["RunMode"] as? String {
                self.runMode = value
            }
            if let value = dict["RunName"] as? String {
                self.runName = value
            }
            if let value = dict["RunResult"] as? String {
                self.runResult = value
            }
            if let value = dict["RunStatus"] as? String {
                self.runStatus = value
            }
        }
    }
    public class CredentialConfig : Tea.TeaModel {
        public class CredentialConfigItems : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public var assumeRoleFor: String?

                public var roleArn: String?

                public var roleType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.assumeRoleFor != nil {
                        map["AssumeRoleFor"] = self.assumeRoleFor!
                    }
                    if self.roleArn != nil {
                        map["RoleArn"] = self.roleArn!
                    }
                    if self.roleType != nil {
                        map["RoleType"] = self.roleType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AssumeRoleFor"] as? String {
                        self.assumeRoleFor = value
                    }
                    if let value = dict["RoleArn"] as? String {
                        self.roleArn = value
                    }
                    if let value = dict["RoleType"] as? String {
                        self.roleType = value
                    }
                }
            }
            public var key: String?

            public var roles: [FlowRun.CredentialConfig.CredentialConfigItems.Roles]?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [FlowRun.CredentialConfig.CredentialConfigItems.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = FlowRun.CredentialConfig.CredentialConfigItems.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var aliyunEnvRoleKey: String?

        public var credentialConfigItems: [FlowRun.CredentialConfig.CredentialConfigItems]?

        public var enableCredentialInject: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunEnvRoleKey != nil {
                map["AliyunEnvRoleKey"] = self.aliyunEnvRoleKey!
            }
            if self.credentialConfigItems != nil {
                var tmp : [Any] = []
                for k in self.credentialConfigItems! {
                    tmp.append(k.toMap())
                }
                map["CredentialConfigItems"] = tmp
            }
            if self.enableCredentialInject != nil {
                map["EnableCredentialInject"] = self.enableCredentialInject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunEnvRoleKey"] as? String {
                self.aliyunEnvRoleKey = value
            }
            if let value = dict["CredentialConfigItems"] as? [Any?] {
                var tmp : [FlowRun.CredentialConfig.CredentialConfigItems] = []
                for v in value {
                    if v != nil {
                        var model = FlowRun.CredentialConfig.CredentialConfigItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentialConfigItems = tmp
            }
            if let value = dict["EnableCredentialInject"] as? Bool {
                self.enableCredentialInject = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var datasetId: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
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
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
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
        public var CPU: Int32?

        public var extraEphemeralStorage: Int32?

        public var GPU: Int32?

        public var GPUCorePercentage: Int32?

        public var GPUMemory: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var quotaId: String?

        public var quotaType: String?

        public var sharedMemory: Int32?

        public override init() {
            super.init()
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
            if self.extraEphemeralStorage != nil {
                map["ExtraEphemeralStorage"] = self.extraEphemeralStorage!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUCorePercentage != nil {
                map["GPUCorePercentage"] = self.GPUCorePercentage!
            }
            if self.GPUMemory != nil {
                map["GPUMemory"] = self.GPUMemory!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["ExtraEphemeralStorage"] as? Int32 {
                self.extraEphemeralStorage = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUCorePercentage"] as? Int32 {
                self.GPUCorePercentage = value
            }
            if let value = dict["GPUMemory"] as? Int32 {
                self.GPUMemory = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
        }
    }
    public class Envs : Tea.TeaModel {
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
    public class EvaluationConfigs : Tea.TeaModel {
        public class FlowSource : Tea.TeaModel {
            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var dataColumnMapping: [String: String]?

        public var flowSource: FlowRun.EvaluationConfigs.FlowSource?

        public var inputsOverrideConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flowSource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataColumnMapping != nil {
                map["DataColumnMapping"] = self.dataColumnMapping!
            }
            if self.flowSource != nil {
                map["FlowSource"] = self.flowSource?.toMap()
            }
            if self.inputsOverrideConfig != nil {
                map["InputsOverrideConfig"] = self.inputsOverrideConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataColumnMapping"] as? [String: String] {
                self.dataColumnMapping = value
            }
            if let value = dict["FlowSource"] as? [String: Any?] {
                var model = FlowRun.EvaluationConfigs.FlowSource()
                model.fromMap(value)
                self.flowSource = model
            }
            if let value = dict["InputsOverrideConfig"] as? String {
                self.inputsOverrideConfig = value
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
    public class NodeRunInfos : Tea.TeaModel {
        public var duration: String?

        public var errorMessage: String?

        public var inputs: String?

        public var nodeName: String?

        public var output: String?

        public var status: String?

        public var stdout: String?

        public override init() {
            super.init()
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
                map["Duration"] = self.duration!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.inputs != nil {
                map["Inputs"] = self.inputs!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stdout != nil {
                map["Stdout"] = self.stdout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Inputs"] as? String {
                self.inputs = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Stdout"] as? String {
                self.stdout = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var childRuns: [FlowRun.ChildRuns]?

    public var creator: String?

    public var credentialConfig: FlowRun.CredentialConfig?

    public var dataColumnMapping: [String: String]?

    public var dataSources: [FlowRun.DataSources]?

    public var duration: Int32?

    public var ecsSpec: FlowRun.EcsSpec?

    public var envs: [FlowRun.Envs]?

    public var evaluationConfigs: [FlowRun.EvaluationConfigs]?

    public var evaluationWorkerCount: Int32?

    public var exception: String?

    public var flowId: String?

    public var flowName: String?

    public var flowRunId: String?

    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtModifiedTime: String?

    public var gmtStartTime: String?

    public var labels: [FlowRun.Labels]?

    public var nodeName: String?

    public var nodeRunInfos: [FlowRun.NodeRunInfos]?

    public var resourceId: String?

    public var runMode: String?

    public var runName: String?

    public var runResult: String?

    public var runStatus: String?

    public var runTimeout: Int32?

    public var userVpc: FlowRun.UserVpc?

    public var variant: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.ecsSpec?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.childRuns != nil {
            var tmp : [Any] = []
            for k in self.childRuns! {
                tmp.append(k.toMap())
            }
            map["ChildRuns"] = tmp
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataColumnMapping != nil {
            map["DataColumnMapping"] = self.dataColumnMapping!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec?.toMap()
        }
        if self.envs != nil {
            var tmp : [Any] = []
            for k in self.envs! {
                tmp.append(k.toMap())
            }
            map["Envs"] = tmp
        }
        if self.evaluationConfigs != nil {
            var tmp : [Any] = []
            for k in self.evaluationConfigs! {
                tmp.append(k.toMap())
            }
            map["EvaluationConfigs"] = tmp
        }
        if self.evaluationWorkerCount != nil {
            map["EvaluationWorkerCount"] = self.evaluationWorkerCount!
        }
        if self.exception != nil {
            map["Exception"] = self.exception!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowRunId != nil {
            map["FlowRunId"] = self.flowRunId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.nodeRunInfos != nil {
            var tmp : [Any] = []
            for k in self.nodeRunInfos! {
                tmp.append(k.toMap())
            }
            map["NodeRunInfos"] = tmp
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        if self.runName != nil {
            map["RunName"] = self.runName!
        }
        if self.runResult != nil {
            map["RunResult"] = self.runResult!
        }
        if self.runStatus != nil {
            map["RunStatus"] = self.runStatus!
        }
        if self.runTimeout != nil {
            map["RunTimeout"] = self.runTimeout!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.variant != nil {
            map["Variant"] = self.variant!
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
        if let value = dict["ChildRuns"] as? [Any?] {
            var tmp : [FlowRun.ChildRuns] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.ChildRuns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.childRuns = tmp
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = FlowRun.CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataColumnMapping"] as? [String: String] {
            self.dataColumnMapping = value
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [FlowRun.DataSources] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EcsSpec"] as? [String: Any?] {
            var model = FlowRun.EcsSpec()
            model.fromMap(value)
            self.ecsSpec = model
        }
        if let value = dict["Envs"] as? [Any?] {
            var tmp : [FlowRun.Envs] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.Envs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.envs = tmp
        }
        if let value = dict["EvaluationConfigs"] as? [Any?] {
            var tmp : [FlowRun.EvaluationConfigs] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.EvaluationConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluationConfigs = tmp
        }
        if let value = dict["EvaluationWorkerCount"] as? Int32 {
            self.evaluationWorkerCount = value
        }
        if let value = dict["Exception"] as? String {
            self.exception = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowRunId"] as? String {
            self.flowRunId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [FlowRun.Labels] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["NodeRunInfos"] as? [Any?] {
            var tmp : [FlowRun.NodeRunInfos] = []
            for v in value {
                if v != nil {
                    var model = FlowRun.NodeRunInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeRunInfos = tmp
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
        if let value = dict["RunName"] as? String {
            self.runName = value
        }
        if let value = dict["RunResult"] as? String {
            self.runResult = value
        }
        if let value = dict["RunStatus"] as? String {
            self.runStatus = value
        }
        if let value = dict["RunTimeout"] as? Int32 {
            self.runTimeout = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = FlowRun.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["Variant"] as? String {
            self.variant = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class FlowTemplate : Tea.TeaModel {
    public var accessibility: String?

    public var aliyunDocumentId: String?

    public var description_: String?

    public var descriptionI18N: [String: String]?

    public var displayName: String?

    public var displayNameI18N: [String: String]?

    public var flowFiles: String?

    public var flowStoragePath: String?

    public var flowTemplateId: String?

    public var flowType: String?

    public var locale: String?

    public var referenceCount: Int32?

    public var templateGroup: String?

    public var templateName: String?

    public var url: String?

    public var version: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.aliyunDocumentId != nil {
            map["AliyunDocumentId"] = self.aliyunDocumentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.descriptionI18N != nil {
            map["DescriptionI18N"] = self.descriptionI18N!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.displayNameI18N != nil {
            map["DisplayNameI18N"] = self.displayNameI18N!
        }
        if self.flowFiles != nil {
            map["FlowFiles"] = self.flowFiles!
        }
        if self.flowStoragePath != nil {
            map["FlowStoragePath"] = self.flowStoragePath!
        }
        if self.flowTemplateId != nil {
            map["FlowTemplateId"] = self.flowTemplateId!
        }
        if self.flowType != nil {
            map["FlowType"] = self.flowType!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.referenceCount != nil {
            map["ReferenceCount"] = self.referenceCount!
        }
        if self.templateGroup != nil {
            map["TemplateGroup"] = self.templateGroup!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["AliyunDocumentId"] as? String {
            self.aliyunDocumentId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DescriptionI18N"] as? [String: String] {
            self.descriptionI18N = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["DisplayNameI18N"] as? [String: String] {
            self.displayNameI18N = value
        }
        if let value = dict["FlowFiles"] as? String {
            self.flowFiles = value
        }
        if let value = dict["FlowStoragePath"] as? String {
            self.flowStoragePath = value
        }
        if let value = dict["FlowTemplateId"] as? String {
            self.flowTemplateId = value
        }
        if let value = dict["FlowType"] as? String {
            self.flowType = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
        if let value = dict["ReferenceCount"] as? Int32 {
            self.referenceCount = value
        }
        if let value = dict["TemplateGroup"] as? String {
            self.templateGroup = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class KnowledgeBase : Tea.TeaModel {
    public class AutoUpdateConfig : Tea.TeaModel {
        public class EcsSpecs : Tea.TeaModel {
            public var CPU: Int32?

            public var driver: String?

            public var GPU: Int32?

            public var GPUType: String?

            public var instanceType: String?

            public var memory: Int32?

            public var podCount: Int32?

            public var sharedMemory: Int32?

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
                if self.CPU != nil {
                    map["CPU"] = self.CPU!
                }
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.GPU != nil {
                    map["GPU"] = self.GPU!
                }
                if self.GPUType != nil {
                    map["GPUType"] = self.GPUType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.podCount != nil {
                    map["PodCount"] = self.podCount!
                }
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? Int32 {
                    self.CPU = value
                }
                if let value = dict["Driver"] as? String {
                    self.driver = value
                }
                if let value = dict["GPU"] as? Int32 {
                    self.GPU = value
                }
                if let value = dict["GPUType"] as? String {
                    self.GPUType = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["PodCount"] as? Int32 {
                    self.podCount = value
                }
                if let value = dict["SharedMemory"] as? Int32 {
                    self.sharedMemory = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class EmbeddingConfig : Tea.TeaModel {
            public var batchSize: Int32?

            public var concurrency: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchSize != nil {
                    map["BatchSize"] = self.batchSize!
                }
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BatchSize"] as? Int32 {
                    self.batchSize = value
                }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
            }
        }
        public var ecsSpecs: [KnowledgeBase.AutoUpdateConfig.EcsSpecs]?

        public var embeddingConfig: KnowledgeBase.AutoUpdateConfig.EmbeddingConfig?

        public var maxRunningTimeInSeconds: Int32?

        public var resourceId: String?

        public var status: String?

        public var userVpc: UserVpc?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.embeddingConfig?.validate()
            try self.userVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsSpecs != nil {
                var tmp : [Any] = []
                for k in self.ecsSpecs! {
                    tmp.append(k.toMap())
                }
                map["EcsSpecs"] = tmp
            }
            if self.embeddingConfig != nil {
                map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
            }
            if self.maxRunningTimeInSeconds != nil {
                map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userVpc != nil {
                map["UserVpc"] = self.userVpc?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsSpecs"] as? [Any?] {
                var tmp : [KnowledgeBase.AutoUpdateConfig.EcsSpecs] = []
                for v in value {
                    if v != nil {
                        var model = KnowledgeBase.AutoUpdateConfig.EcsSpecs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ecsSpecs = tmp
            }
            if let value = dict["EmbeddingConfig"] as? [String: Any?] {
                var model = KnowledgeBase.AutoUpdateConfig.EmbeddingConfig()
                model.fromMap(value)
                self.embeddingConfig = model
            }
            if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
                self.maxRunningTimeInSeconds = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserVpc"] as? [String: Any?] {
                var model = UserVpc()
                model.fromMap(value)
                self.userVpc = model
            }
        }
    }
    public class ChunkConfig : Tea.TeaModel {
        public var chunkDuration: Int32?

        public var chunkOverlap: Int32?

        public var chunkSize: Int32?

        public var chunkStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkDuration != nil {
                map["ChunkDuration"] = self.chunkDuration!
            }
            if self.chunkOverlap != nil {
                map["ChunkOverlap"] = self.chunkOverlap!
            }
            if self.chunkSize != nil {
                map["ChunkSize"] = self.chunkSize!
            }
            if self.chunkStrategy != nil {
                map["ChunkStrategy"] = self.chunkStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChunkDuration"] as? Int32 {
                self.chunkDuration = value
            }
            if let value = dict["ChunkOverlap"] as? Int32 {
                self.chunkOverlap = value
            }
            if let value = dict["ChunkSize"] as? Int32 {
                self.chunkSize = value
            }
            if let value = dict["ChunkStrategy"] as? String {
                self.chunkStrategy = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
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
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var connectionId: String?

        public var connectionName: String?

        public var model: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.connectionName != nil {
                map["ConnectionName"] = self.connectionName!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["ConnectionName"] as? String {
                self.connectionName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
        }
    }
    public class IndexColumnConfig : Tea.TeaModel {
        public class ColumnDefinitions : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class ContentColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class EmbeddingColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public var columnDefinitions: [KnowledgeBase.IndexColumnConfig.ColumnDefinitions]?

        public var contentColumns: [KnowledgeBase.IndexColumnConfig.ContentColumns]?

        public var embeddingColumns: [KnowledgeBase.IndexColumnConfig.EmbeddingColumns]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnDefinitions != nil {
                var tmp : [Any] = []
                for k in self.columnDefinitions! {
                    tmp.append(k.toMap())
                }
                map["ColumnDefinitions"] = tmp
            }
            if self.contentColumns != nil {
                var tmp : [Any] = []
                for k in self.contentColumns! {
                    tmp.append(k.toMap())
                }
                map["ContentColumns"] = tmp
            }
            if self.embeddingColumns != nil {
                var tmp : [Any] = []
                for k in self.embeddingColumns! {
                    tmp.append(k.toMap())
                }
                map["EmbeddingColumns"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColumnDefinitions"] as? [Any?] {
                var tmp : [KnowledgeBase.IndexColumnConfig.ColumnDefinitions] = []
                for v in value {
                    if v != nil {
                        var model = KnowledgeBase.IndexColumnConfig.ColumnDefinitions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columnDefinitions = tmp
            }
            if let value = dict["ContentColumns"] as? [Any?] {
                var tmp : [KnowledgeBase.IndexColumnConfig.ContentColumns] = []
                for v in value {
                    if v != nil {
                        var model = KnowledgeBase.IndexColumnConfig.ContentColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contentColumns = tmp
            }
            if let value = dict["EmbeddingColumns"] as? [Any?] {
                var tmp : [KnowledgeBase.IndexColumnConfig.EmbeddingColumns] = []
                for v in value {
                    if v != nil {
                        var model = KnowledgeBase.IndexColumnConfig.EmbeddingColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.embeddingColumns = tmp
            }
        }
    }
    public class MetaDataConfig : Tea.TeaModel {
        public class CustomMetaData : Tea.TeaModel {
            public var key: String?

            public var referenceCount: Int32?

            public var valueCount: Int32?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.referenceCount != nil {
                    map["ReferenceCount"] = self.referenceCount!
                }
                if self.valueCount != nil {
                    map["ValueCount"] = self.valueCount!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["ReferenceCount"] as? Int32 {
                    self.referenceCount = value
                }
                if let value = dict["ValueCount"] as? Int32 {
                    self.valueCount = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public var customMetaData: [KnowledgeBase.MetaDataConfig.CustomMetaData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customMetaData != nil {
                var tmp : [Any] = []
                for k in self.customMetaData! {
                    tmp.append(k.toMap())
                }
                map["CustomMetaData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomMetaData"] as? [Any?] {
                var tmp : [KnowledgeBase.MetaDataConfig.CustomMetaData] = []
                for v in value {
                    if v != nil {
                        var model = KnowledgeBase.MetaDataConfig.CustomMetaData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customMetaData = tmp
            }
        }
    }
    public class VectorDBConfig : Tea.TeaModel {
        public var collectionName: String?

        public var connectionId: String?

        public var connectionName: String?

        public var vectorDBType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collectionName != nil {
                map["CollectionName"] = self.collectionName!
            }
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.connectionName != nil {
                map["ConnectionName"] = self.connectionName!
            }
            if self.vectorDBType != nil {
                map["VectorDBType"] = self.vectorDBType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CollectionName"] as? String {
                self.collectionName = value
            }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["ConnectionName"] as? String {
                self.connectionName = value
            }
            if let value = dict["VectorDBType"] as? String {
                self.vectorDBType = value
            }
        }
    }
    public var accessibility: String?

    public var autoUpdateConfig: KnowledgeBase.AutoUpdateConfig?

    public var chunkConfig: KnowledgeBase.ChunkConfig?

    public var creator: String?

    public var dataSources: [KnowledgeBase.DataSources]?

    public var datasetId: String?

    public var description_: String?

    public var embeddingConfig: KnowledgeBase.EmbeddingConfig?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var indexColumnConfig: KnowledgeBase.IndexColumnConfig?

    public var knowledgeBaseId: String?

    public var knowledgeBaseType: String?

    public var metaDataConfig: KnowledgeBase.MetaDataConfig?

    public var name: String?

    public var outputDir: String?

    public var runtimeId: String?

    public var vectorDBConfig: KnowledgeBase.VectorDBConfig?

    public var versionName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoUpdateConfig?.validate()
        try self.chunkConfig?.validate()
        try self.embeddingConfig?.validate()
        try self.indexColumnConfig?.validate()
        try self.metaDataConfig?.validate()
        try self.vectorDBConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.autoUpdateConfig != nil {
            map["AutoUpdateConfig"] = self.autoUpdateConfig?.toMap()
        }
        if self.chunkConfig != nil {
            map["ChunkConfig"] = self.chunkConfig?.toMap()
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.indexColumnConfig != nil {
            map["IndexColumnConfig"] = self.indexColumnConfig?.toMap()
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseType != nil {
            map["KnowledgeBaseType"] = self.knowledgeBaseType!
        }
        if self.metaDataConfig != nil {
            map["MetaDataConfig"] = self.metaDataConfig?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outputDir != nil {
            map["OutputDir"] = self.outputDir!
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.vectorDBConfig != nil {
            map["VectorDBConfig"] = self.vectorDBConfig?.toMap()
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
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
        if let value = dict["AutoUpdateConfig"] as? [String: Any?] {
            var model = KnowledgeBase.AutoUpdateConfig()
            model.fromMap(value)
            self.autoUpdateConfig = model
        }
        if let value = dict["ChunkConfig"] as? [String: Any?] {
            var model = KnowledgeBase.ChunkConfig()
            model.fromMap(value)
            self.chunkConfig = model
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [KnowledgeBase.DataSources] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBase.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = KnowledgeBase.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["IndexColumnConfig"] as? [String: Any?] {
            var model = KnowledgeBase.IndexColumnConfig()
            model.fromMap(value)
            self.indexColumnConfig = model
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["KnowledgeBaseType"] as? String {
            self.knowledgeBaseType = value
        }
        if let value = dict["MetaDataConfig"] as? [String: Any?] {
            var model = KnowledgeBase.MetaDataConfig()
            model.fromMap(value)
            self.metaDataConfig = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OutputDir"] as? String {
            self.outputDir = value
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["VectorDBConfig"] as? [String: Any?] {
            var model = KnowledgeBase.VectorDBConfig()
            model.fromMap(value)
            self.vectorDBConfig = model
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class KnowledgeBaseFileChunk : Tea.TeaModel {
    public class ChunkAttachment : Tea.TeaModel {
        public var downloadUrl: String?

        public var placeholderId: String?

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
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.placeholderId != nil {
                map["PlaceholderId"] = self.placeholderId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["PlaceholderId"] as? String {
                self.placeholderId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class MetaData : Tea.TeaModel {
        public var fileMetaId: String?

        public var fileName: String?

        public var fileUri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileMetaId != nil {
                map["FileMetaId"] = self.fileMetaId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUri != nil {
                map["FileUri"] = self.fileUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileMetaId"] as? String {
                self.fileMetaId = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUri"] as? String {
                self.fileUri = value
            }
        }
    }
    public var chunkAttachment: [KnowledgeBaseFileChunk.ChunkAttachment]?

    public var chunkContent: String?

    public var chunkEnd: Int32?

    public var chunkId: String?

    public var chunkSequence: Int32?

    public var chunkSize: Int32?

    public var chunkStart: Int32?

    public var chunkStatus: String?

    public var downloadUrl: String?

    public var metaData: KnowledgeBaseFileChunk.MetaData?

    public var score: Double?

    public var thumbnailUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkAttachment != nil {
            var tmp : [Any] = []
            for k in self.chunkAttachment! {
                tmp.append(k.toMap())
            }
            map["ChunkAttachment"] = tmp
        }
        if self.chunkContent != nil {
            map["ChunkContent"] = self.chunkContent!
        }
        if self.chunkEnd != nil {
            map["ChunkEnd"] = self.chunkEnd!
        }
        if self.chunkId != nil {
            map["ChunkId"] = self.chunkId!
        }
        if self.chunkSequence != nil {
            map["ChunkSequence"] = self.chunkSequence!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.chunkStart != nil {
            map["ChunkStart"] = self.chunkStart!
        }
        if self.chunkStatus != nil {
            map["ChunkStatus"] = self.chunkStatus!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData?.toMap()
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.thumbnailUrl != nil {
            map["ThumbnailUrl"] = self.thumbnailUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkAttachment"] as? [Any?] {
            var tmp : [KnowledgeBaseFileChunk.ChunkAttachment] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseFileChunk.ChunkAttachment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chunkAttachment = tmp
        }
        if let value = dict["ChunkContent"] as? String {
            self.chunkContent = value
        }
        if let value = dict["ChunkEnd"] as? Int32 {
            self.chunkEnd = value
        }
        if let value = dict["ChunkId"] as? String {
            self.chunkId = value
        }
        if let value = dict["ChunkSequence"] as? Int32 {
            self.chunkSequence = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["ChunkStart"] as? Int32 {
            self.chunkStart = value
        }
        if let value = dict["ChunkStatus"] as? String {
            self.chunkStatus = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["MetaData"] as? [String: Any?] {
            var model = KnowledgeBaseFileChunk.MetaData()
            model.fromMap(value)
            self.metaData = model
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["ThumbnailUrl"] as? String {
            self.thumbnailUrl = value
        }
    }
}

public class KnowledgeBaseJob : Tea.TeaModel {
    public class EcsSpecs : Tea.TeaModel {
        public var CPU: Int32?

        public var driver: String?

        public var GPU: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var sharedMemory: Int32?

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
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.driver != nil {
                map["Driver"] = self.driver!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["Driver"] as? String {
                self.driver = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var batchSize: Int32?

        public var concurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
        }
    }
    public class KnowledgeBaseJobResult : Tea.TeaModel {
        public var addChunkCount: Int32?

        public var deleteChunkCount: Int32?

        public var totalFileCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addChunkCount != nil {
                map["AddChunkCount"] = self.addChunkCount!
            }
            if self.deleteChunkCount != nil {
                map["DeleteChunkCount"] = self.deleteChunkCount!
            }
            if self.totalFileCount != nil {
                map["TotalFileCount"] = self.totalFileCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddChunkCount"] as? Int32 {
                self.addChunkCount = value
            }
            if let value = dict["DeleteChunkCount"] as? Int32 {
                self.deleteChunkCount = value
            }
            if let value = dict["TotalFileCount"] as? Int32 {
                self.totalFileCount = value
            }
        }
    }
    public class PipelineRunInfo : Tea.TeaModel {
        public var pipelineRunId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PipelineRunId"] as? String {
                self.pipelineRunId = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var creator: String?

    public var description_: String?

    public var ecsSpecs: [KnowledgeBaseJob.EcsSpecs]?

    public var embeddingConfig: KnowledgeBaseJob.EmbeddingConfig?

    public var errorMessage: String?

    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtModifiedTime: String?

    public var jobAction: String?

    public var knowledgeBaseId: String?

    public var knowledgeBaseJobId: String?

    public var knowledgeBaseJobResult: KnowledgeBaseJob.KnowledgeBaseJobResult?

    public var maxRunningTimeInSeconds: Int32?

    public var pipelineRunInfo: KnowledgeBaseJob.PipelineRunInfo?

    public var resourceId: String?

    public var status: String?

    public var userVpc: KnowledgeBaseJob.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embeddingConfig?.validate()
        try self.knowledgeBaseJobResult?.validate()
        try self.pipelineRunInfo?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseJobId != nil {
            map["KnowledgeBaseJobId"] = self.knowledgeBaseJobId!
        }
        if self.knowledgeBaseJobResult != nil {
            map["KnowledgeBaseJobResult"] = self.knowledgeBaseJobResult?.toMap()
        }
        if self.maxRunningTimeInSeconds != nil {
            map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
        }
        if self.pipelineRunInfo != nil {
            map["PipelineRunInfo"] = self.pipelineRunInfo?.toMap()
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [KnowledgeBaseJob.EcsSpecs] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseJob.EcsSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = KnowledgeBaseJob.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["KnowledgeBaseJobId"] as? String {
            self.knowledgeBaseJobId = value
        }
        if let value = dict["KnowledgeBaseJobResult"] as? [String: Any?] {
            var model = KnowledgeBaseJob.KnowledgeBaseJobResult()
            model.fromMap(value)
            self.knowledgeBaseJobResult = model
        }
        if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
            self.maxRunningTimeInSeconds = value
        }
        if let value = dict["PipelineRunInfo"] as? [String: Any?] {
            var model = KnowledgeBaseJob.PipelineRunInfo()
            model.fromMap(value)
            self.pipelineRunInfo = model
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = KnowledgeBaseJob.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class KnowledgeBaseMeta : Tea.TeaModel {
    public class ChunkAttachment : Tea.TeaModel {
        public var downloadUrl: String?

        public var placeholderId: String?

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
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.placeholderId != nil {
                map["PlaceholderId"] = self.placeholderId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["PlaceholderId"] as? String {
                self.placeholderId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class MetaData : Tea.TeaModel {
        public var fileMetaId: String?

        public var fileName: String?

        public var fileUri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileMetaId != nil {
                map["FileMetaId"] = self.fileMetaId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUri != nil {
                map["FileUri"] = self.fileUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileMetaId"] as? String {
                self.fileMetaId = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUri"] as? String {
                self.fileUri = value
            }
        }
    }
    public var chunkAttachment: [KnowledgeBaseMeta.ChunkAttachment]?

    public var chunkContent: String?

    public var chunkEnd: Int32?

    public var chunkId: String?

    public var chunkSequence: Int32?

    public var chunkSize: Int32?

    public var chunkStart: Int32?

    public var chunkStatus: String?

    public var downloadUrl: String?

    public var fileContentType: String?

    public var fileCreateTime: String?

    public var fileMetaData: String?

    public var fileMetaId: String?

    public var fileName: String?

    public var fileSize: Int32?

    public var fileStatus: String?

    public var fileType: String?

    public var fileUpdateTime: String?

    public var fileUri: String?

    public var metaData: KnowledgeBaseMeta.MetaData?

    public var thumbnailUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkAttachment != nil {
            var tmp : [Any] = []
            for k in self.chunkAttachment! {
                tmp.append(k.toMap())
            }
            map["ChunkAttachment"] = tmp
        }
        if self.chunkContent != nil {
            map["ChunkContent"] = self.chunkContent!
        }
        if self.chunkEnd != nil {
            map["ChunkEnd"] = self.chunkEnd!
        }
        if self.chunkId != nil {
            map["ChunkId"] = self.chunkId!
        }
        if self.chunkSequence != nil {
            map["ChunkSequence"] = self.chunkSequence!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.chunkStart != nil {
            map["ChunkStart"] = self.chunkStart!
        }
        if self.chunkStatus != nil {
            map["ChunkStatus"] = self.chunkStatus!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.fileContentType != nil {
            map["FileContentType"] = self.fileContentType!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileMetaData != nil {
            map["FileMetaData"] = self.fileMetaData!
        }
        if self.fileMetaId != nil {
            map["FileMetaId"] = self.fileMetaId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.fileStatus != nil {
            map["FileStatus"] = self.fileStatus!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileUpdateTime != nil {
            map["FileUpdateTime"] = self.fileUpdateTime!
        }
        if self.fileUri != nil {
            map["FileUri"] = self.fileUri!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData?.toMap()
        }
        if self.thumbnailUrl != nil {
            map["ThumbnailUrl"] = self.thumbnailUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkAttachment"] as? [Any?] {
            var tmp : [KnowledgeBaseMeta.ChunkAttachment] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseMeta.ChunkAttachment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chunkAttachment = tmp
        }
        if let value = dict["ChunkContent"] as? String {
            self.chunkContent = value
        }
        if let value = dict["ChunkEnd"] as? Int32 {
            self.chunkEnd = value
        }
        if let value = dict["ChunkId"] as? String {
            self.chunkId = value
        }
        if let value = dict["ChunkSequence"] as? Int32 {
            self.chunkSequence = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["ChunkStart"] as? Int32 {
            self.chunkStart = value
        }
        if let value = dict["ChunkStatus"] as? String {
            self.chunkStatus = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["FileContentType"] as? String {
            self.fileContentType = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileMetaData"] as? String {
            self.fileMetaData = value
        }
        if let value = dict["FileMetaId"] as? String {
            self.fileMetaId = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileSize"] as? Int32 {
            self.fileSize = value
        }
        if let value = dict["FileStatus"] as? String {
            self.fileStatus = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileUpdateTime"] as? String {
            self.fileUpdateTime = value
        }
        if let value = dict["FileUri"] as? String {
            self.fileUri = value
        }
        if let value = dict["MetaData"] as? [String: Any?] {
            var model = KnowledgeBaseMeta.MetaData()
            model.fromMap(value)
            self.metaData = model
        }
        if let value = dict["ThumbnailUrl"] as? String {
            self.thumbnailUrl = value
        }
    }
}

public class Runtime : Tea.TeaModel {
    public class CredentialConfig : Tea.TeaModel {
        public class CredentialConfigItems : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public var assumeRoleFor: String?

                public var roleArn: String?

                public var roleType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.assumeRoleFor != nil {
                        map["AssumeRoleFor"] = self.assumeRoleFor!
                    }
                    if self.roleArn != nil {
                        map["RoleArn"] = self.roleArn!
                    }
                    if self.roleType != nil {
                        map["RoleType"] = self.roleType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AssumeRoleFor"] as? String {
                        self.assumeRoleFor = value
                    }
                    if let value = dict["RoleArn"] as? String {
                        self.roleArn = value
                    }
                    if let value = dict["RoleType"] as? String {
                        self.roleType = value
                    }
                }
            }
            public var key: String?

            public var roles: [Runtime.CredentialConfig.CredentialConfigItems.Roles]?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [Runtime.CredentialConfig.CredentialConfigItems.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = Runtime.CredentialConfig.CredentialConfigItems.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var aliyunEnvRoleKey: String?

        public var credentialConfigItems: [Runtime.CredentialConfig.CredentialConfigItems]?

        public var enableCredentialInject: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunEnvRoleKey != nil {
                map["AliyunEnvRoleKey"] = self.aliyunEnvRoleKey!
            }
            if self.credentialConfigItems != nil {
                var tmp : [Any] = []
                for k in self.credentialConfigItems! {
                    tmp.append(k.toMap())
                }
                map["CredentialConfigItems"] = tmp
            }
            if self.enableCredentialInject != nil {
                map["EnableCredentialInject"] = self.enableCredentialInject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunEnvRoleKey"] as? String {
                self.aliyunEnvRoleKey = value
            }
            if let value = dict["CredentialConfigItems"] as? [Any?] {
                var tmp : [Runtime.CredentialConfig.CredentialConfigItems] = []
                for v in value {
                    if v != nil {
                        var model = Runtime.CredentialConfig.CredentialConfigItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentialConfigItems = tmp
            }
            if let value = dict["EnableCredentialInject"] as? Bool {
                self.enableCredentialInject = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var datasetId: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
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
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
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
        public var CPU: Int32?

        public var extraEphemeralStorage: Int32?

        public var GPU: Int32?

        public var GPUCorePercentage: Int32?

        public var GPUMemory: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var quotaId: String?

        public var quotaType: String?

        public var sharedMemory: Int32?

        public override init() {
            super.init()
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
            if self.extraEphemeralStorage != nil {
                map["ExtraEphemeralStorage"] = self.extraEphemeralStorage!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUCorePercentage != nil {
                map["GPUCorePercentage"] = self.GPUCorePercentage!
            }
            if self.GPUMemory != nil {
                map["GPUMemory"] = self.GPUMemory!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["ExtraEphemeralStorage"] as? Int32 {
                self.extraEphemeralStorage = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUCorePercentage"] as? Int32 {
                self.GPUCorePercentage = value
            }
            if let value = dict["GPUMemory"] as? Int32 {
                self.GPUMemory = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
        }
    }
    public class Envs : Tea.TeaModel {
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
    public class Flows : Tea.TeaModel {
        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
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
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

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
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
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
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var creator: String?

    public var credentialConfig: Runtime.CredentialConfig?

    public var dataSources: [Runtime.DataSources]?

    public var ecsSpec: Runtime.EcsSpec?

    public var envs: [Runtime.Envs]?

    public var flowId: String?

    public var flows: [Runtime.Flows]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var idleTimeout: Int32?

    public var labels: [Runtime.Labels]?

    public var latestVersion: String?

    public var MCPConfig: String?

    public var resourceId: String?

    public var runTimeout: Int32?

    public var runtimeId: String?

    public var runtimeLog: String?

    public var runtimeName: String?

    public var runtimeStatus: String?

    public var runtimeType: String?

    public var supportSSEStream: Bool?

    public var userVpc: Runtime.UserVpc?

    public var version: String?

    public var workDir: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.ecsSpec?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec?.toMap()
        }
        if self.envs != nil {
            var tmp : [Any] = []
            for k in self.envs! {
                tmp.append(k.toMap())
            }
            map["Envs"] = tmp
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion!
        }
        if self.MCPConfig != nil {
            map["MCPConfig"] = self.MCPConfig!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.runTimeout != nil {
            map["RunTimeout"] = self.runTimeout!
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.runtimeLog != nil {
            map["RuntimeLog"] = self.runtimeLog!
        }
        if self.runtimeName != nil {
            map["RuntimeName"] = self.runtimeName!
        }
        if self.runtimeStatus != nil {
            map["RuntimeStatus"] = self.runtimeStatus!
        }
        if self.runtimeType != nil {
            map["RuntimeType"] = self.runtimeType!
        }
        if self.supportSSEStream != nil {
            map["SupportSSEStream"] = self.supportSSEStream!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.workDir != nil {
            map["WorkDir"] = self.workDir!
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
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = Runtime.CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [Runtime.DataSources] = []
            for v in value {
                if v != nil {
                    var model = Runtime.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["EcsSpec"] as? [String: Any?] {
            var model = Runtime.EcsSpec()
            model.fromMap(value)
            self.ecsSpec = model
        }
        if let value = dict["Envs"] as? [Any?] {
            var tmp : [Runtime.Envs] = []
            for v in value {
                if v != nil {
                    var model = Runtime.Envs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.envs = tmp
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [Runtime.Flows] = []
            for v in value {
                if v != nil {
                    var model = Runtime.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Runtime.Labels] = []
            for v in value {
                if v != nil {
                    var model = Runtime.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? String {
            self.latestVersion = value
        }
        if let value = dict["MCPConfig"] as? String {
            self.MCPConfig = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["RunTimeout"] as? Int32 {
            self.runTimeout = value
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["RuntimeLog"] as? String {
            self.runtimeLog = value
        }
        if let value = dict["RuntimeName"] as? String {
            self.runtimeName = value
        }
        if let value = dict["RuntimeStatus"] as? String {
            self.runtimeStatus = value
        }
        if let value = dict["RuntimeType"] as? String {
            self.runtimeType = value
        }
        if let value = dict["SupportSSEStream"] as? Bool {
            self.supportSSEStream = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = Runtime.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["WorkDir"] as? String {
            self.workDir = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Snapshot : Tea.TeaModel {
    public var accessibility: String?

    public var creationType: String?

    public var creator: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var snapshotId: String?

    public var snapshotName: String?

    public var snapshotResourceId: String?

    public var snapshotResourceType: String?

    public var snapshotStoragePath: String?

    public var snapshotUrl: String?

    public var workDir: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creationType != nil {
            map["CreationType"] = self.creationType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        if self.snapshotResourceId != nil {
            map["SnapshotResourceId"] = self.snapshotResourceId!
        }
        if self.snapshotResourceType != nil {
            map["SnapshotResourceType"] = self.snapshotResourceType!
        }
        if self.snapshotStoragePath != nil {
            map["SnapshotStoragePath"] = self.snapshotStoragePath!
        }
        if self.snapshotUrl != nil {
            map["SnapshotUrl"] = self.snapshotUrl!
        }
        if self.workDir != nil {
            map["WorkDir"] = self.workDir!
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
        if let value = dict["CreationType"] as? String {
            self.creationType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
        }
        if let value = dict["SnapshotResourceId"] as? String {
            self.snapshotResourceId = value
        }
        if let value = dict["SnapshotResourceType"] as? String {
            self.snapshotResourceType = value
        }
        if let value = dict["SnapshotStoragePath"] as? String {
            self.snapshotStoragePath = value
        }
        if let value = dict["SnapshotUrl"] as? String {
            self.snapshotUrl = value
        }
        if let value = dict["WorkDir"] as? String {
            self.workDir = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Toolset : Tea.TeaModel {
    public var accessibility: String?

    public var creator: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var tools: String?

    public var toolsetConfig: String?

    public var toolsetId: String?

    public var toolsetName: String?

    public var toolsetType: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        if self.toolsetConfig != nil {
            map["ToolsetConfig"] = self.toolsetConfig!
        }
        if self.toolsetId != nil {
            map["ToolsetId"] = self.toolsetId!
        }
        if self.toolsetName != nil {
            map["ToolsetName"] = self.toolsetName!
        }
        if self.toolsetType != nil {
            map["ToolsetType"] = self.toolsetType!
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
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Tools"] as? String {
            self.tools = value
        }
        if let value = dict["ToolsetConfig"] as? String {
            self.toolsetConfig = value
        }
        if let value = dict["ToolsetId"] as? String {
            self.toolsetId = value
        }
        if let value = dict["ToolsetName"] as? String {
            self.toolsetName = value
        }
        if let value = dict["ToolsetType"] as? String {
            self.toolsetType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UserVpc : Tea.TeaModel {
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
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateKnowledgeBaseRequest : Tea.TeaModel {
    public class ChunkConfig : Tea.TeaModel {
        public var chunkDuration: Int32?

        public var chunkOverlap: Int32?

        public var chunkSize: Int32?

        public var chunkStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkDuration != nil {
                map["ChunkDuration"] = self.chunkDuration!
            }
            if self.chunkOverlap != nil {
                map["ChunkOverlap"] = self.chunkOverlap!
            }
            if self.chunkSize != nil {
                map["ChunkSize"] = self.chunkSize!
            }
            if self.chunkStrategy != nil {
                map["ChunkStrategy"] = self.chunkStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChunkDuration"] as? Int32 {
                self.chunkDuration = value
            }
            if let value = dict["ChunkOverlap"] as? Int32 {
                self.chunkOverlap = value
            }
            if let value = dict["ChunkSize"] as? Int32 {
                self.chunkSize = value
            }
            if let value = dict["ChunkStrategy"] as? String {
                self.chunkStrategy = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
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
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var connectionId: String?

        public var model: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
        }
    }
    public class IndexColumnConfig : Tea.TeaModel {
        public class ColumnDefinitions : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class ContentColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class EmbeddingColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public var columnDefinitions: [CreateKnowledgeBaseRequest.IndexColumnConfig.ColumnDefinitions]?

        public var contentColumns: [CreateKnowledgeBaseRequest.IndexColumnConfig.ContentColumns]?

        public var embeddingColumns: [CreateKnowledgeBaseRequest.IndexColumnConfig.EmbeddingColumns]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnDefinitions != nil {
                var tmp : [Any] = []
                for k in self.columnDefinitions! {
                    tmp.append(k.toMap())
                }
                map["ColumnDefinitions"] = tmp
            }
            if self.contentColumns != nil {
                var tmp : [Any] = []
                for k in self.contentColumns! {
                    tmp.append(k.toMap())
                }
                map["ContentColumns"] = tmp
            }
            if self.embeddingColumns != nil {
                var tmp : [Any] = []
                for k in self.embeddingColumns! {
                    tmp.append(k.toMap())
                }
                map["EmbeddingColumns"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColumnDefinitions"] as? [Any?] {
                var tmp : [CreateKnowledgeBaseRequest.IndexColumnConfig.ColumnDefinitions] = []
                for v in value {
                    if v != nil {
                        var model = CreateKnowledgeBaseRequest.IndexColumnConfig.ColumnDefinitions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columnDefinitions = tmp
            }
            if let value = dict["ContentColumns"] as? [Any?] {
                var tmp : [CreateKnowledgeBaseRequest.IndexColumnConfig.ContentColumns] = []
                for v in value {
                    if v != nil {
                        var model = CreateKnowledgeBaseRequest.IndexColumnConfig.ContentColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contentColumns = tmp
            }
            if let value = dict["EmbeddingColumns"] as? [Any?] {
                var tmp : [CreateKnowledgeBaseRequest.IndexColumnConfig.EmbeddingColumns] = []
                for v in value {
                    if v != nil {
                        var model = CreateKnowledgeBaseRequest.IndexColumnConfig.EmbeddingColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.embeddingColumns = tmp
            }
        }
    }
    public class MetaDataConfig : Tea.TeaModel {
        public class CustomMetaData : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public var customMetaData: [CreateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customMetaData != nil {
                var tmp : [Any] = []
                for k in self.customMetaData! {
                    tmp.append(k.toMap())
                }
                map["CustomMetaData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomMetaData"] as? [Any?] {
                var tmp : [CreateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData] = []
                for v in value {
                    if v != nil {
                        var model = CreateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customMetaData = tmp
            }
        }
    }
    public class VectorDBConfig : Tea.TeaModel {
        public var collectionName: String?

        public var connectionId: String?

        public var vectorDBType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collectionName != nil {
                map["CollectionName"] = self.collectionName!
            }
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.vectorDBType != nil {
                map["VectorDBType"] = self.vectorDBType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CollectionName"] as? String {
                self.collectionName = value
            }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["VectorDBType"] as? String {
                self.vectorDBType = value
            }
        }
    }
    public var accessibility: String?

    public var chunkConfig: CreateKnowledgeBaseRequest.ChunkConfig?

    public var dataSources: [CreateKnowledgeBaseRequest.DataSources]?

    public var description_: String?

    public var embeddingConfig: CreateKnowledgeBaseRequest.EmbeddingConfig?

    public var indexColumnConfig: CreateKnowledgeBaseRequest.IndexColumnConfig?

    public var knowledgeBaseType: String?

    public var metaDataConfig: CreateKnowledgeBaseRequest.MetaDataConfig?

    public var name: String?

    public var outputDir: String?

    public var runtimeId: String?

    public var vectorDBConfig: CreateKnowledgeBaseRequest.VectorDBConfig?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.chunkConfig?.validate()
        try self.embeddingConfig?.validate()
        try self.indexColumnConfig?.validate()
        try self.metaDataConfig?.validate()
        try self.vectorDBConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.chunkConfig != nil {
            map["ChunkConfig"] = self.chunkConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.indexColumnConfig != nil {
            map["IndexColumnConfig"] = self.indexColumnConfig?.toMap()
        }
        if self.knowledgeBaseType != nil {
            map["KnowledgeBaseType"] = self.knowledgeBaseType!
        }
        if self.metaDataConfig != nil {
            map["MetaDataConfig"] = self.metaDataConfig?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outputDir != nil {
            map["OutputDir"] = self.outputDir!
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.vectorDBConfig != nil {
            map["VectorDBConfig"] = self.vectorDBConfig?.toMap()
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
        if let value = dict["ChunkConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseRequest.ChunkConfig()
            model.fromMap(value)
            self.chunkConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [CreateKnowledgeBaseRequest.DataSources] = []
            for v in value {
                if v != nil {
                    var model = CreateKnowledgeBaseRequest.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseRequest.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["IndexColumnConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseRequest.IndexColumnConfig()
            model.fromMap(value)
            self.indexColumnConfig = model
        }
        if let value = dict["KnowledgeBaseType"] as? String {
            self.knowledgeBaseType = value
        }
        if let value = dict["MetaDataConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseRequest.MetaDataConfig()
            model.fromMap(value)
            self.metaDataConfig = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OutputDir"] as? String {
            self.outputDir = value
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["VectorDBConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseRequest.VectorDBConfig()
            model.fromMap(value)
            self.vectorDBConfig = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateKnowledgeBaseResponseBody : Tea.TeaModel {
    public var knowledgeBaseId: String?

    public var requestId: String?

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
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseJobRequest : Tea.TeaModel {
    public class EcsSpecs : Tea.TeaModel {
        public var CPU: Int32?

        public var driver: String?

        public var GPU: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var sharedMemory: Int32?

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
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.driver != nil {
                map["Driver"] = self.driver!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["Driver"] as? String {
                self.driver = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var batchSize: Int32?

        public var concurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var description_: String?

    public var ecsSpecs: [CreateKnowledgeBaseJobRequest.EcsSpecs]?

    public var embeddingConfig: CreateKnowledgeBaseJobRequest.EmbeddingConfig?

    public var jobAction: String?

    public var maxRunningTimeInSeconds: Int32?

    public var resourceId: String?

    public var userVpc: CreateKnowledgeBaseJobRequest.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embeddingConfig?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.maxRunningTimeInSeconds != nil {
            map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [CreateKnowledgeBaseJobRequest.EcsSpecs] = []
            for v in value {
                if v != nil {
                    var model = CreateKnowledgeBaseJobRequest.EcsSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = CreateKnowledgeBaseJobRequest.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
            self.maxRunningTimeInSeconds = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = CreateKnowledgeBaseJobRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateKnowledgeBaseJobResponseBody : Tea.TeaModel {
    public var knowledgeBaseJobId: String?

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
        if self.knowledgeBaseJobId != nil {
            map["KnowledgeBaseJobId"] = self.knowledgeBaseJobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeBaseJobId"] as? String {
            self.knowledgeBaseJobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKnowledgeBaseJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateKnowledgeBaseJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKnowledgeBaseRequest : Tea.TeaModel {
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

public class DeleteKnowledgeBaseResponseBody : Tea.TeaModel {
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

public class DeleteKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKnowledgeBaseJobRequest : Tea.TeaModel {
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

public class DeleteKnowledgeBaseJobResponseBody : Tea.TeaModel {
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

public class DeleteKnowledgeBaseJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKnowledgeBaseJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteKnowledgeBaseJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeBaseRequest : Tea.TeaModel {
    public var versionName: String?

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
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetKnowledgeBaseResponseBody : Tea.TeaModel {
    public class AutoUpdateConfig : Tea.TeaModel {
        public class EcsSpecs : Tea.TeaModel {
            public var CPU: Int32?

            public var driver: String?

            public var GPU: Int32?

            public var GPUType: String?

            public var instanceType: String?

            public var memory: Int32?

            public var podCount: Int32?

            public var sharedMemory: Int32?

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
                if self.CPU != nil {
                    map["CPU"] = self.CPU!
                }
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.GPU != nil {
                    map["GPU"] = self.GPU!
                }
                if self.GPUType != nil {
                    map["GPUType"] = self.GPUType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.podCount != nil {
                    map["PodCount"] = self.podCount!
                }
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? Int32 {
                    self.CPU = value
                }
                if let value = dict["Driver"] as? String {
                    self.driver = value
                }
                if let value = dict["GPU"] as? Int32 {
                    self.GPU = value
                }
                if let value = dict["GPUType"] as? String {
                    self.GPUType = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["PodCount"] as? Int32 {
                    self.podCount = value
                }
                if let value = dict["SharedMemory"] as? Int32 {
                    self.sharedMemory = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class EmbeddingConfig : Tea.TeaModel {
            public var batchSize: Int32?

            public var concurrency: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchSize != nil {
                    map["BatchSize"] = self.batchSize!
                }
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BatchSize"] as? Int32 {
                    self.batchSize = value
                }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
            }
        }
        public var ecsSpecs: [GetKnowledgeBaseResponseBody.AutoUpdateConfig.EcsSpecs]?

        public var embeddingConfig: GetKnowledgeBaseResponseBody.AutoUpdateConfig.EmbeddingConfig?

        public var maxRunningTimeInSeconds: Int32?

        public var resourceId: String?

        public var status: String?

        public var userVpc: UserVpc?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.embeddingConfig?.validate()
            try self.userVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsSpecs != nil {
                var tmp : [Any] = []
                for k in self.ecsSpecs! {
                    tmp.append(k.toMap())
                }
                map["EcsSpecs"] = tmp
            }
            if self.embeddingConfig != nil {
                map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
            }
            if self.maxRunningTimeInSeconds != nil {
                map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userVpc != nil {
                map["UserVpc"] = self.userVpc?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsSpecs"] as? [Any?] {
                var tmp : [GetKnowledgeBaseResponseBody.AutoUpdateConfig.EcsSpecs] = []
                for v in value {
                    if v != nil {
                        var model = GetKnowledgeBaseResponseBody.AutoUpdateConfig.EcsSpecs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ecsSpecs = tmp
            }
            if let value = dict["EmbeddingConfig"] as? [String: Any?] {
                var model = GetKnowledgeBaseResponseBody.AutoUpdateConfig.EmbeddingConfig()
                model.fromMap(value)
                self.embeddingConfig = model
            }
            if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
                self.maxRunningTimeInSeconds = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserVpc"] as? [String: Any?] {
                var model = UserVpc()
                model.fromMap(value)
                self.userVpc = model
            }
        }
    }
    public class ChunkConfig : Tea.TeaModel {
        public var chunkDuration: Int32?

        public var chunkOverlap: Int32?

        public var chunkSize: Int32?

        public var chunkStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkDuration != nil {
                map["ChunkDuration"] = self.chunkDuration!
            }
            if self.chunkOverlap != nil {
                map["ChunkOverlap"] = self.chunkOverlap!
            }
            if self.chunkSize != nil {
                map["ChunkSize"] = self.chunkSize!
            }
            if self.chunkStrategy != nil {
                map["ChunkStrategy"] = self.chunkStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChunkDuration"] as? Int32 {
                self.chunkDuration = value
            }
            if let value = dict["ChunkOverlap"] as? Int32 {
                self.chunkOverlap = value
            }
            if let value = dict["ChunkSize"] as? Int32 {
                self.chunkSize = value
            }
            if let value = dict["ChunkStrategy"] as? String {
                self.chunkStrategy = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
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
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var connectionId: String?

        public var connectionName: String?

        public var model: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.connectionName != nil {
                map["ConnectionName"] = self.connectionName!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["ConnectionName"] as? String {
                self.connectionName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
        }
    }
    public class IndexColumnConfig : Tea.TeaModel {
        public class ColumnDefinitions : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class ContentColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class EmbeddingColumns : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public var columnDefinitions: [GetKnowledgeBaseResponseBody.IndexColumnConfig.ColumnDefinitions]?

        public var contentColumns: [GetKnowledgeBaseResponseBody.IndexColumnConfig.ContentColumns]?

        public var embeddingColumns: [GetKnowledgeBaseResponseBody.IndexColumnConfig.EmbeddingColumns]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnDefinitions != nil {
                var tmp : [Any] = []
                for k in self.columnDefinitions! {
                    tmp.append(k.toMap())
                }
                map["ColumnDefinitions"] = tmp
            }
            if self.contentColumns != nil {
                var tmp : [Any] = []
                for k in self.contentColumns! {
                    tmp.append(k.toMap())
                }
                map["ContentColumns"] = tmp
            }
            if self.embeddingColumns != nil {
                var tmp : [Any] = []
                for k in self.embeddingColumns! {
                    tmp.append(k.toMap())
                }
                map["EmbeddingColumns"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColumnDefinitions"] as? [Any?] {
                var tmp : [GetKnowledgeBaseResponseBody.IndexColumnConfig.ColumnDefinitions] = []
                for v in value {
                    if v != nil {
                        var model = GetKnowledgeBaseResponseBody.IndexColumnConfig.ColumnDefinitions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columnDefinitions = tmp
            }
            if let value = dict["ContentColumns"] as? [Any?] {
                var tmp : [GetKnowledgeBaseResponseBody.IndexColumnConfig.ContentColumns] = []
                for v in value {
                    if v != nil {
                        var model = GetKnowledgeBaseResponseBody.IndexColumnConfig.ContentColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contentColumns = tmp
            }
            if let value = dict["EmbeddingColumns"] as? [Any?] {
                var tmp : [GetKnowledgeBaseResponseBody.IndexColumnConfig.EmbeddingColumns] = []
                for v in value {
                    if v != nil {
                        var model = GetKnowledgeBaseResponseBody.IndexColumnConfig.EmbeddingColumns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.embeddingColumns = tmp
            }
        }
    }
    public class MetaDataConfig : Tea.TeaModel {
        public class CustomMetaData : Tea.TeaModel {
            public var key: String?

            public var referenceCount: Int32?

            public var valueCount: Int32?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.referenceCount != nil {
                    map["ReferenceCount"] = self.referenceCount!
                }
                if self.valueCount != nil {
                    map["ValueCount"] = self.valueCount!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["ReferenceCount"] as? Int32 {
                    self.referenceCount = value
                }
                if let value = dict["ValueCount"] as? Int32 {
                    self.valueCount = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public var customMetaData: [GetKnowledgeBaseResponseBody.MetaDataConfig.CustomMetaData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customMetaData != nil {
                var tmp : [Any] = []
                for k in self.customMetaData! {
                    tmp.append(k.toMap())
                }
                map["CustomMetaData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomMetaData"] as? [Any?] {
                var tmp : [GetKnowledgeBaseResponseBody.MetaDataConfig.CustomMetaData] = []
                for v in value {
                    if v != nil {
                        var model = GetKnowledgeBaseResponseBody.MetaDataConfig.CustomMetaData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customMetaData = tmp
            }
        }
    }
    public class VectorDBConfig : Tea.TeaModel {
        public var collectionName: String?

        public var connectionId: String?

        public var connectionName: String?

        public var vectorDBType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collectionName != nil {
                map["CollectionName"] = self.collectionName!
            }
            if self.connectionId != nil {
                map["ConnectionId"] = self.connectionId!
            }
            if self.connectionName != nil {
                map["ConnectionName"] = self.connectionName!
            }
            if self.vectorDBType != nil {
                map["VectorDBType"] = self.vectorDBType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CollectionName"] as? String {
                self.collectionName = value
            }
            if let value = dict["ConnectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["ConnectionName"] as? String {
                self.connectionName = value
            }
            if let value = dict["VectorDBType"] as? String {
                self.vectorDBType = value
            }
        }
    }
    public var accessibility: String?

    public var autoUpdateConfig: GetKnowledgeBaseResponseBody.AutoUpdateConfig?

    public var chunkConfig: GetKnowledgeBaseResponseBody.ChunkConfig?

    public var creator: String?

    public var dataSources: [GetKnowledgeBaseResponseBody.DataSources]?

    public var datasetId: String?

    public var description_: String?

    public var embeddingConfig: GetKnowledgeBaseResponseBody.EmbeddingConfig?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var indexColumnConfig: GetKnowledgeBaseResponseBody.IndexColumnConfig?

    public var knowledgeBaseId: String?

    public var knowledgeBaseType: String?

    public var metaDataConfig: GetKnowledgeBaseResponseBody.MetaDataConfig?

    public var name: String?

    public var outputDir: String?

    public var requestId: String?

    public var runtimeId: String?

    public var vectorDBConfig: GetKnowledgeBaseResponseBody.VectorDBConfig?

    public var versionName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoUpdateConfig?.validate()
        try self.chunkConfig?.validate()
        try self.embeddingConfig?.validate()
        try self.indexColumnConfig?.validate()
        try self.metaDataConfig?.validate()
        try self.vectorDBConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.autoUpdateConfig != nil {
            map["AutoUpdateConfig"] = self.autoUpdateConfig?.toMap()
        }
        if self.chunkConfig != nil {
            map["ChunkConfig"] = self.chunkConfig?.toMap()
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.indexColumnConfig != nil {
            map["IndexColumnConfig"] = self.indexColumnConfig?.toMap()
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseType != nil {
            map["KnowledgeBaseType"] = self.knowledgeBaseType!
        }
        if self.metaDataConfig != nil {
            map["MetaDataConfig"] = self.metaDataConfig?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outputDir != nil {
            map["OutputDir"] = self.outputDir!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.vectorDBConfig != nil {
            map["VectorDBConfig"] = self.vectorDBConfig?.toMap()
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
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
        if let value = dict["AutoUpdateConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.AutoUpdateConfig()
            model.fromMap(value)
            self.autoUpdateConfig = model
        }
        if let value = dict["ChunkConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.ChunkConfig()
            model.fromMap(value)
            self.chunkConfig = model
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [GetKnowledgeBaseResponseBody.DataSources] = []
            for v in value {
                if v != nil {
                    var model = GetKnowledgeBaseResponseBody.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["IndexColumnConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.IndexColumnConfig()
            model.fromMap(value)
            self.indexColumnConfig = model
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["KnowledgeBaseType"] as? String {
            self.knowledgeBaseType = value
        }
        if let value = dict["MetaDataConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.MetaDataConfig()
            model.fromMap(value)
            self.metaDataConfig = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OutputDir"] as? String {
            self.outputDir = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["VectorDBConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody.VectorDBConfig()
            model.fromMap(value)
            self.vectorDBConfig = model
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeBaseJobRequest : Tea.TeaModel {
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

public class GetKnowledgeBaseJobResponseBody : Tea.TeaModel {
    public class EcsSpecs : Tea.TeaModel {
        public var CPU: Int32?

        public var driver: String?

        public var GPU: Int32?

        public var GPUType: String?

        public var instanceType: String?

        public var memory: Int32?

        public var podCount: Int32?

        public var sharedMemory: Int32?

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
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.driver != nil {
                map["Driver"] = self.driver!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.podCount != nil {
                map["PodCount"] = self.podCount!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["Driver"] as? String {
                self.driver = value
            }
            if let value = dict["GPU"] as? Int32 {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["PodCount"] as? Int32 {
                self.podCount = value
            }
            if let value = dict["SharedMemory"] as? Int32 {
                self.sharedMemory = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EmbeddingConfig : Tea.TeaModel {
        public var batchSize: Int32?

        public var concurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
        }
    }
    public class KnowledgeBaseJobResult : Tea.TeaModel {
        public var addChunkCount: Int32?

        public var deleteChunkCount: Int32?

        public var totalFileCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addChunkCount != nil {
                map["AddChunkCount"] = self.addChunkCount!
            }
            if self.deleteChunkCount != nil {
                map["DeleteChunkCount"] = self.deleteChunkCount!
            }
            if self.totalFileCount != nil {
                map["TotalFileCount"] = self.totalFileCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddChunkCount"] as? Int32 {
                self.addChunkCount = value
            }
            if let value = dict["DeleteChunkCount"] as? Int32 {
                self.deleteChunkCount = value
            }
            if let value = dict["TotalFileCount"] as? Int32 {
                self.totalFileCount = value
            }
        }
    }
    public class PipelineRunInfo : Tea.TeaModel {
        public var pipelineRunId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PipelineRunId"] as? String {
                self.pipelineRunId = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var creator: String?

    public var description_: String?

    public var ecsSpecs: [GetKnowledgeBaseJobResponseBody.EcsSpecs]?

    public var embeddingConfig: GetKnowledgeBaseJobResponseBody.EmbeddingConfig?

    public var errorMessage: String?

    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtModifiedTime: String?

    public var jobAction: String?

    public var knowledgeBaseId: String?

    public var knowledgeBaseJobId: String?

    public var knowledgeBaseJobResult: GetKnowledgeBaseJobResponseBody.KnowledgeBaseJobResult?

    public var maxRunningTimeInSeconds: Int32?

    public var pipelineRunInfo: GetKnowledgeBaseJobResponseBody.PipelineRunInfo?

    public var requestId: String?

    public var resourceId: String?

    public var status: String?

    public var userVpc: GetKnowledgeBaseJobResponseBody.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embeddingConfig?.validate()
        try self.knowledgeBaseJobResult?.validate()
        try self.pipelineRunInfo?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
        }
        if self.embeddingConfig != nil {
            map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseJobId != nil {
            map["KnowledgeBaseJobId"] = self.knowledgeBaseJobId!
        }
        if self.knowledgeBaseJobResult != nil {
            map["KnowledgeBaseJobResult"] = self.knowledgeBaseJobResult?.toMap()
        }
        if self.maxRunningTimeInSeconds != nil {
            map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
        }
        if self.pipelineRunInfo != nil {
            map["PipelineRunInfo"] = self.pipelineRunInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [GetKnowledgeBaseJobResponseBody.EcsSpecs] = []
            for v in value {
                if v != nil {
                    var model = GetKnowledgeBaseJobResponseBody.EcsSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
        }
        if let value = dict["EmbeddingConfig"] as? [String: Any?] {
            var model = GetKnowledgeBaseJobResponseBody.EmbeddingConfig()
            model.fromMap(value)
            self.embeddingConfig = model
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["KnowledgeBaseJobId"] as? String {
            self.knowledgeBaseJobId = value
        }
        if let value = dict["KnowledgeBaseJobResult"] as? [String: Any?] {
            var model = GetKnowledgeBaseJobResponseBody.KnowledgeBaseJobResult()
            model.fromMap(value)
            self.knowledgeBaseJobResult = model
        }
        if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
            self.maxRunningTimeInSeconds = value
        }
        if let value = dict["PipelineRunInfo"] as? [String: Any?] {
            var model = GetKnowledgeBaseJobResponseBody.PipelineRunInfo()
            model.fromMap(value)
            self.pipelineRunInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = GetKnowledgeBaseJobResponseBody.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetKnowledgeBaseJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKnowledgeBaseJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetKnowledgeBaseJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBaseChunksRequest : Tea.TeaModel {
    public class MetaData : Tea.TeaModel {
        public var fileMetaId: String?

        public var fileUri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileMetaId != nil {
                map["FileMetaId"] = self.fileMetaId!
            }
            if self.fileUri != nil {
                map["FileUri"] = self.fileUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileMetaId"] as? String {
                self.fileMetaId = value
            }
            if let value = dict["FileUri"] as? String {
                self.fileUri = value
            }
        }
    }
    public var chunkStatus: String?

    public var metaData: ListKnowledgeBaseChunksRequest.MetaData?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkStatus != nil {
            map["ChunkStatus"] = self.chunkStatus!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkStatus"] as? String {
            self.chunkStatus = value
        }
        if let value = dict["MetaData"] as? [String: Any?] {
            var model = ListKnowledgeBaseChunksRequest.MetaData()
            model.fromMap(value)
            self.metaData = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class ListKnowledgeBaseChunksResponseBody : Tea.TeaModel {
    public class KnowledgeBaseChunks : Tea.TeaModel {
        public class ChunkAttachment : Tea.TeaModel {
            public var downloadUrl: String?

            public var placeholderId: String?

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
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.placeholderId != nil {
                    map["PlaceholderId"] = self.placeholderId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["PlaceholderId"] as? String {
                    self.placeholderId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public class MetaData : Tea.TeaModel {
            public var fileMetaId: String?

            public var fileName: String?

            public var fileUri: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileMetaId != nil {
                    map["FileMetaId"] = self.fileMetaId!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileUri != nil {
                    map["FileUri"] = self.fileUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileMetaId"] as? String {
                    self.fileMetaId = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileUri"] as? String {
                    self.fileUri = value
                }
            }
        }
        public var chunkAttachment: [ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks.ChunkAttachment]?

        public var chunkContent: String?

        public var chunkEnd: Int32?

        public var chunkSequence: Int32?

        public var chunkSize: Int32?

        public var chunkStart: Int32?

        public var chunkStatus: String?

        public var downloadUrl: String?

        public var knowledgeBaseChunkId: String?

        public var knowledgeBaseId: String?

        public var metaData: ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks.MetaData?

        public var thumbnailUrl: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metaData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkAttachment != nil {
                var tmp : [Any] = []
                for k in self.chunkAttachment! {
                    tmp.append(k.toMap())
                }
                map["ChunkAttachment"] = tmp
            }
            if self.chunkContent != nil {
                map["ChunkContent"] = self.chunkContent!
            }
            if self.chunkEnd != nil {
                map["ChunkEnd"] = self.chunkEnd!
            }
            if self.chunkSequence != nil {
                map["ChunkSequence"] = self.chunkSequence!
            }
            if self.chunkSize != nil {
                map["ChunkSize"] = self.chunkSize!
            }
            if self.chunkStart != nil {
                map["ChunkStart"] = self.chunkStart!
            }
            if self.chunkStatus != nil {
                map["ChunkStatus"] = self.chunkStatus!
            }
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.knowledgeBaseChunkId != nil {
                map["KnowledgeBaseChunkId"] = self.knowledgeBaseChunkId!
            }
            if self.knowledgeBaseId != nil {
                map["KnowledgeBaseId"] = self.knowledgeBaseId!
            }
            if self.metaData != nil {
                map["MetaData"] = self.metaData?.toMap()
            }
            if self.thumbnailUrl != nil {
                map["ThumbnailUrl"] = self.thumbnailUrl!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChunkAttachment"] as? [Any?] {
                var tmp : [ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks.ChunkAttachment] = []
                for v in value {
                    if v != nil {
                        var model = ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks.ChunkAttachment()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chunkAttachment = tmp
            }
            if let value = dict["ChunkContent"] as? String {
                self.chunkContent = value
            }
            if let value = dict["ChunkEnd"] as? Int32 {
                self.chunkEnd = value
            }
            if let value = dict["ChunkSequence"] as? Int32 {
                self.chunkSequence = value
            }
            if let value = dict["ChunkSize"] as? Int32 {
                self.chunkSize = value
            }
            if let value = dict["ChunkStart"] as? Int32 {
                self.chunkStart = value
            }
            if let value = dict["ChunkStatus"] as? String {
                self.chunkStatus = value
            }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["KnowledgeBaseChunkId"] as? String {
                self.knowledgeBaseChunkId = value
            }
            if let value = dict["KnowledgeBaseId"] as? String {
                self.knowledgeBaseId = value
            }
            if let value = dict["MetaData"] as? [String: Any?] {
                var model = ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks.MetaData()
                model.fromMap(value)
                self.metaData = model
            }
            if let value = dict["ThumbnailUrl"] as? String {
                self.thumbnailUrl = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var knowledgeBaseChunks: [ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks]?

    public var maxResults: Int32?

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
        if self.knowledgeBaseChunks != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBaseChunks! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBaseChunks"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if let value = dict["KnowledgeBaseChunks"] as? [Any?] {
            var tmp : [ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks] = []
            for v in value {
                if v != nil {
                    var model = ListKnowledgeBaseChunksResponseBody.KnowledgeBaseChunks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBaseChunks = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKnowledgeBaseChunksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKnowledgeBaseChunksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListKnowledgeBaseChunksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBaseJobsRequest : Tea.TeaModel {
    public var jobAction: String?

    public var knowledgeBaseJobId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var status: String?

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
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.knowledgeBaseJobId != nil {
            map["KnowledgeBaseJobId"] = self.knowledgeBaseJobId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["KnowledgeBaseJobId"] as? String {
            self.knowledgeBaseJobId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListKnowledgeBaseJobsResponseBody : Tea.TeaModel {
    public var knowledgeBaseJobs: [KnowledgeBaseJob]?

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
        if self.knowledgeBaseJobs != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBaseJobs! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBaseJobs"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["KnowledgeBaseJobs"] as? [Any?] {
            var tmp : [KnowledgeBaseJob] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseJob()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBaseJobs = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKnowledgeBaseJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKnowledgeBaseJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListKnowledgeBaseJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBasesRequest : Tea.TeaModel {
    public var creator: String?

    public var knowledgeBaseId: String?

    public var knowledgeBaseType: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

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
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseType != nil {
            map["KnowledgeBaseType"] = self.knowledgeBaseType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["KnowledgeBaseType"] as? String {
            self.knowledgeBaseType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListKnowledgeBasesResponseBody : Tea.TeaModel {
    public var knowledgeBases: [KnowledgeBase]?

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
        if self.knowledgeBases != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBases! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBases"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["KnowledgeBases"] as? [Any?] {
            var tmp : [KnowledgeBase] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBase()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBases = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKnowledgeBasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKnowledgeBasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListKnowledgeBasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetrieveKnowledgeBaseRequest : Tea.TeaModel {
    public var hybridStrategyConfig: String?

    public var metaDataFilterConditions: String?

    public var query: String?

    public var queryMode: String?

    public var rerankConfig: String?

    public var rewriteConfig: String?

    public var scoreThreshold: Double?

    public var topK: Int32?

    public var versionName: String?

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
        if self.hybridStrategyConfig != nil {
            map["HybridStrategyConfig"] = self.hybridStrategyConfig!
        }
        if self.metaDataFilterConditions != nil {
            map["MetaDataFilterConditions"] = self.metaDataFilterConditions!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.queryMode != nil {
            map["QueryMode"] = self.queryMode!
        }
        if self.rerankConfig != nil {
            map["RerankConfig"] = self.rerankConfig!
        }
        if self.rewriteConfig != nil {
            map["RewriteConfig"] = self.rewriteConfig!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HybridStrategyConfig"] as? String {
            self.hybridStrategyConfig = value
        }
        if let value = dict["MetaDataFilterConditions"] as? String {
            self.metaDataFilterConditions = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["QueryMode"] as? String {
            self.queryMode = value
        }
        if let value = dict["RerankConfig"] as? String {
            self.rerankConfig = value
        }
        if let value = dict["RewriteConfig"] as? String {
            self.rewriteConfig = value
        }
        if let value = dict["ScoreThreshold"] as? Double {
            self.scoreThreshold = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class RetrieveKnowledgeBaseResponseBody : Tea.TeaModel {
    public var knowledgeBaseFileChunks: [KnowledgeBaseFileChunk]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.knowledgeBaseFileChunks != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBaseFileChunks! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBaseFileChunks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeBaseFileChunks"] as? [Any?] {
            var tmp : [KnowledgeBaseFileChunk] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseFileChunk()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBaseFileChunks = tmp
        }
    }
}

public class RetrieveKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetrieveKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RetrieveKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseRequest : Tea.TeaModel {
    public class AutoUpdateConfig : Tea.TeaModel {
        public class EcsSpecs : Tea.TeaModel {
            public var CPU: Int32?

            public var driver: String?

            public var GPU: Int32?

            public var GPUType: String?

            public var instanceType: String?

            public var memory: Int32?

            public var podCount: Int32?

            public var sharedMemory: Int32?

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
                if self.CPU != nil {
                    map["CPU"] = self.CPU!
                }
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.GPU != nil {
                    map["GPU"] = self.GPU!
                }
                if self.GPUType != nil {
                    map["GPUType"] = self.GPUType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.podCount != nil {
                    map["PodCount"] = self.podCount!
                }
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? Int32 {
                    self.CPU = value
                }
                if let value = dict["Driver"] as? String {
                    self.driver = value
                }
                if let value = dict["GPU"] as? Int32 {
                    self.GPU = value
                }
                if let value = dict["GPUType"] as? String {
                    self.GPUType = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["PodCount"] as? Int32 {
                    self.podCount = value
                }
                if let value = dict["SharedMemory"] as? Int32 {
                    self.sharedMemory = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class EmbeddingConfig : Tea.TeaModel {
            public var batchSize: Int32?

            public var concurrency: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchSize != nil {
                    map["BatchSize"] = self.batchSize!
                }
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BatchSize"] as? Int32 {
                    self.batchSize = value
                }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
            }
        }
        public var ecsSpecs: [UpdateKnowledgeBaseRequest.AutoUpdateConfig.EcsSpecs]?

        public var embeddingConfig: UpdateKnowledgeBaseRequest.AutoUpdateConfig.EmbeddingConfig?

        public var maxRunningTimeInSeconds: Int32?

        public var resourceId: String?

        public var status: String?

        public var userVpc: UserVpc?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.embeddingConfig?.validate()
            try self.userVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsSpecs != nil {
                var tmp : [Any] = []
                for k in self.ecsSpecs! {
                    tmp.append(k.toMap())
                }
                map["EcsSpecs"] = tmp
            }
            if self.embeddingConfig != nil {
                map["EmbeddingConfig"] = self.embeddingConfig?.toMap()
            }
            if self.maxRunningTimeInSeconds != nil {
                map["MaxRunningTimeInSeconds"] = self.maxRunningTimeInSeconds!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userVpc != nil {
                map["UserVpc"] = self.userVpc?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EcsSpecs"] as? [Any?] {
                var tmp : [UpdateKnowledgeBaseRequest.AutoUpdateConfig.EcsSpecs] = []
                for v in value {
                    if v != nil {
                        var model = UpdateKnowledgeBaseRequest.AutoUpdateConfig.EcsSpecs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ecsSpecs = tmp
            }
            if let value = dict["EmbeddingConfig"] as? [String: Any?] {
                var model = UpdateKnowledgeBaseRequest.AutoUpdateConfig.EmbeddingConfig()
                model.fromMap(value)
                self.embeddingConfig = model
            }
            if let value = dict["MaxRunningTimeInSeconds"] as? Int32 {
                self.maxRunningTimeInSeconds = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserVpc"] as? [String: Any?] {
                var model = UserVpc()
                model.fromMap(value)
                self.userVpc = model
            }
        }
    }
    public class MetaDataConfig : Tea.TeaModel {
        public class CustomMetaData : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public var customMetaData: [UpdateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customMetaData != nil {
                var tmp : [Any] = []
                for k in self.customMetaData! {
                    tmp.append(k.toMap())
                }
                map["CustomMetaData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomMetaData"] as? [Any?] {
                var tmp : [UpdateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData] = []
                for v in value {
                    if v != nil {
                        var model = UpdateKnowledgeBaseRequest.MetaDataConfig.CustomMetaData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customMetaData = tmp
            }
        }
    }
    public var autoUpdateConfig: UpdateKnowledgeBaseRequest.AutoUpdateConfig?

    public var bindRuntime: Bool?

    public var description_: String?

    public var metaDataConfig: UpdateKnowledgeBaseRequest.MetaDataConfig?

    public var runtimeId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoUpdateConfig?.validate()
        try self.metaDataConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoUpdateConfig != nil {
            map["AutoUpdateConfig"] = self.autoUpdateConfig?.toMap()
        }
        if self.bindRuntime != nil {
            map["BindRuntime"] = self.bindRuntime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.metaDataConfig != nil {
            map["MetaDataConfig"] = self.metaDataConfig?.toMap()
        }
        if self.runtimeId != nil {
            map["RuntimeId"] = self.runtimeId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoUpdateConfig"] as? [String: Any?] {
            var model = UpdateKnowledgeBaseRequest.AutoUpdateConfig()
            model.fromMap(value)
            self.autoUpdateConfig = model
        }
        if let value = dict["BindRuntime"] as? Bool {
            self.bindRuntime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MetaDataConfig"] as? [String: Any?] {
            var model = UpdateKnowledgeBaseRequest.MetaDataConfig()
            model.fromMap(value)
            self.metaDataConfig = model
        }
        if let value = dict["RuntimeId"] as? String {
            self.runtimeId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateKnowledgeBaseResponseBody : Tea.TeaModel {
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

public class UpdateKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseChunkRequest : Tea.TeaModel {
    public var chunkContent: String?

    public var chunkStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkContent != nil {
            map["ChunkContent"] = self.chunkContent!
        }
        if self.chunkStatus != nil {
            map["ChunkStatus"] = self.chunkStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkContent"] as? String {
            self.chunkContent = value
        }
        if let value = dict["ChunkStatus"] as? String {
            self.chunkStatus = value
        }
    }
}

public class UpdateKnowledgeBaseChunkResponseBody : Tea.TeaModel {
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

public class UpdateKnowledgeBaseChunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseChunkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateKnowledgeBaseChunkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseJobRequest : Tea.TeaModel {
    public var description_: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateKnowledgeBaseJobResponseBody : Tea.TeaModel {
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

public class UpdateKnowledgeBaseJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateKnowledgeBaseJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
