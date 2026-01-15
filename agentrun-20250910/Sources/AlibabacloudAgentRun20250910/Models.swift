import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AgentRuntime : Tea.TeaModel {
    public var agentRuntimeArn: String?

    public var agentRuntimeId: String?

    public var agentRuntimeName: String?

    public var agentRuntimeVersion: String?

    public var artifactType: String?

    public var codeConfiguration: CodeConfiguration?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var createdAt: String?

    public var credentialName: String?

    public var description_: String?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var healthCheckConfiguration: HealthCheckConfiguration?

    public var lastUpdatedAt: String?

    public var logConfiguration: LogConfiguration?

    public var memory: Int?

    public var networkConfiguration: NetworkConfiguration?

    public var port: Int?

    public var protocolConfiguration: ProtocolConfiguration?

    public var sessionConcurrencyLimitPerInstance: Int?

    public var sessionIdleTimeoutSeconds: Int32?

    public var status: String?

    public var statusReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeConfiguration?.validate()
        try self.containerConfiguration?.validate()
        try self.healthCheckConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.protocolConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeArn != nil {
            map["agentRuntimeArn"] = self.agentRuntimeArn!
        }
        if self.agentRuntimeId != nil {
            map["agentRuntimeId"] = self.agentRuntimeId!
        }
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.agentRuntimeVersion != nil {
            map["agentRuntimeVersion"] = self.agentRuntimeVersion!
        }
        if self.artifactType != nil {
            map["artifactType"] = self.artifactType!
        }
        if self.codeConfiguration != nil {
            map["codeConfiguration"] = self.codeConfiguration?.toMap()
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.healthCheckConfiguration != nil {
            map["healthCheckConfiguration"] = self.healthCheckConfiguration?.toMap()
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        if self.protocolConfiguration != nil {
            map["protocolConfiguration"] = self.protocolConfiguration?.toMap()
        }
        if self.sessionConcurrencyLimitPerInstance != nil {
            map["sessionConcurrencyLimitPerInstance"] = self.sessionConcurrencyLimitPerInstance!
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeArn"] as? String {
            self.agentRuntimeArn = value
        }
        if let value = dict["agentRuntimeId"] as? String {
            self.agentRuntimeId = value
        }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["agentRuntimeVersion"] as? String {
            self.agentRuntimeVersion = value
        }
        if let value = dict["artifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["codeConfiguration"] as? [String: Any?] {
            var model = CodeConfiguration()
            model.fromMap(value)
            self.codeConfiguration = model
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["healthCheckConfiguration"] as? [String: Any?] {
            var model = HealthCheckConfiguration()
            model.fromMap(value)
            self.healthCheckConfiguration = model
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["port"] as? Int {
            self.port = value
        }
        if let value = dict["protocolConfiguration"] as? [String: Any?] {
            var model = ProtocolConfiguration()
            model.fromMap(value)
            self.protocolConfiguration = model
        }
        if let value = dict["sessionConcurrencyLimitPerInstance"] as? Int {
            self.sessionConcurrencyLimitPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
    }
}

public class AgentRuntimeEndpoint : Tea.TeaModel {
    public var agentRuntimeEndpointArn: String?

    public var agentRuntimeEndpointId: String?

    public var agentRuntimeEndpointName: String?

    public var agentRuntimeId: String?

    public var description_: String?

    public var endpointPublicUrl: String?

    public var routingConfiguration: RoutingConfiguration?

    public var status: String?

    public var statusReason: String?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routingConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeEndpointArn != nil {
            map["agentRuntimeEndpointArn"] = self.agentRuntimeEndpointArn!
        }
        if self.agentRuntimeEndpointId != nil {
            map["agentRuntimeEndpointId"] = self.agentRuntimeEndpointId!
        }
        if self.agentRuntimeEndpointName != nil {
            map["agentRuntimeEndpointName"] = self.agentRuntimeEndpointName!
        }
        if self.agentRuntimeId != nil {
            map["agentRuntimeId"] = self.agentRuntimeId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.endpointPublicUrl != nil {
            map["endpointPublicUrl"] = self.endpointPublicUrl!
        }
        if self.routingConfiguration != nil {
            map["routingConfiguration"] = self.routingConfiguration?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.targetVersion != nil {
            map["targetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeEndpointArn"] as? String {
            self.agentRuntimeEndpointArn = value
        }
        if let value = dict["agentRuntimeEndpointId"] as? String {
            self.agentRuntimeEndpointId = value
        }
        if let value = dict["agentRuntimeEndpointName"] as? String {
            self.agentRuntimeEndpointName = value
        }
        if let value = dict["agentRuntimeId"] as? String {
            self.agentRuntimeId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["endpointPublicUrl"] as? String {
            self.endpointPublicUrl = value
        }
        if let value = dict["routingConfiguration"] as? [String: Any?] {
            var model = RoutingConfiguration()
            model.fromMap(value)
            self.routingConfiguration = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["targetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class AgentRuntimeEndpointResult : Tea.TeaModel {
    public var code: String?

    public var data: AgentRuntimeEndpoint?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = AgentRuntimeEndpoint()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AgentRuntimeResult : Tea.TeaModel {
    public var code: String?

    public var data: AgentRuntime?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = AgentRuntime()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AgentRuntimeVersion : Tea.TeaModel {
    public var agentRuntimeArn: String?

    public var agentRuntimeId: String?

    public var agentRuntimeName: String?

    public var agentRuntimeVersion: String?

    public var description_: String?

    public var lastUpdatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeArn != nil {
            map["agentRuntimeArn"] = self.agentRuntimeArn!
        }
        if self.agentRuntimeId != nil {
            map["agentRuntimeId"] = self.agentRuntimeId!
        }
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.agentRuntimeVersion != nil {
            map["agentRuntimeVersion"] = self.agentRuntimeVersion!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeArn"] as? String {
            self.agentRuntimeArn = value
        }
        if let value = dict["agentRuntimeId"] as? String {
            self.agentRuntimeId = value
        }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["agentRuntimeVersion"] as? String {
            self.agentRuntimeVersion = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
    }
}

public class AgentRuntimeVersionResult : Tea.TeaModel {
    public var code: String?

    public var data: AgentRuntimeVersion?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = AgentRuntimeVersion()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AiFallbackConfig : Tea.TeaModel {
    public var serviceConfigs: [AiFallbackServiceConfig]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceConfigs"] as? [Any?] {
            var tmp : [AiFallbackServiceConfig] = []
            for v in value {
                if v != nil {
                    var model = AiFallbackServiceConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceConfigs = tmp
        }
    }
}

public class AiFallbackServiceConfig : Tea.TeaModel {
    public var passThroughModelName: Bool?

    public var serviceId: String?

    public var targetModelName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passThroughModelName != nil {
            map["passThroughModelName"] = self.passThroughModelName!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.targetModelName != nil {
            map["targetModelName"] = self.targetModelName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["passThroughModelName"] as? Bool {
            self.passThroughModelName = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["targetModelName"] as? String {
            self.targetModelName = value
        }
    }
}

public class AiServiceConfig : Tea.TeaModel {
    public var address: String?

    public var apiKeys: [String]?

    public var enableHealthCheck: Bool?

    public var protocols: [String]?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKeys != nil {
            map["apiKeys"] = self.apiKeys!
        }
        if self.enableHealthCheck != nil {
            map["enableHealthCheck"] = self.enableHealthCheck!
        }
        if self.protocols != nil {
            map["protocols"] = self.protocols!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKeys"] as? [String] {
            self.apiKeys = value
        }
        if let value = dict["enableHealthCheck"] as? Bool {
            self.enableHealthCheck = value
        }
        if let value = dict["protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class ApigLLMModel : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var createdTime: String?

    public var desc: String?

    public var gatewayId: String?

    public var modelId: String?

    public var models: String?

    public var modelsWeight: String?

    public var name: String?

    public var provider: String?

    public var targetId: String?

    public var tenantId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.modelsWeight != nil {
            map["modelsWeight"] = self.modelsWeight!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.targetId != nil {
            map["targetId"] = self.targetId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["models"] as? String {
            self.models = value
        }
        if let value = dict["modelsWeight"] as? String {
            self.modelsWeight = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["targetId"] as? String {
            self.targetId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class ArmsConfiguration : Tea.TeaModel {
    public var armsLicenseKey: String?

    public var enableArms: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.armsLicenseKey != nil {
            map["armsLicenseKey"] = self.armsLicenseKey!
        }
        if self.enableArms != nil {
            map["enableArms"] = self.enableArms!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["armsLicenseKey"] as? String {
            self.armsLicenseKey = value
        }
        if let value = dict["enableArms"] as? Bool {
            self.enableArms = value
        }
    }
}

public class AttachPolicyConfig : Tea.TeaModel {
    public var className: String?

    public var config: String?

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
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class Browser : Tea.TeaModel {
    public var browserId: String?

    public var browserName: String?

    public var cpu: Double?

    public var createdAt: String?

    public var credentialId: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var lastUpdatedAt: String?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var recording: BrowserRecordingConfiguration?

    public var status: String?

    public var statusReason: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
        try self.recording?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserId != nil {
            map["browserId"] = self.browserId!
        }
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.recording != nil {
            map["recording"] = self.recording?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserId"] as? String {
            self.browserId = value
        }
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["recording"] as? [String: Any?] {
            var model = BrowserRecordingConfiguration()
            model.fromMap(value)
            self.recording = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class BrowserAutomationStream : Tea.TeaModel {
    public var streamEndpoint: String?

    public var streamStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.streamEndpoint != nil {
            map["streamEndpoint"] = self.streamEndpoint!
        }
        if self.streamStatus != nil {
            map["streamStatus"] = self.streamStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["streamEndpoint"] as? String {
            self.streamEndpoint = value
        }
        if let value = dict["streamStatus"] as? String {
            self.streamStatus = value
        }
    }
}

public class BrowserConfiguration : Tea.TeaModel {
    public var browserType: String?

    public var enableExtension: [String]?

    public var headless: Bool?

    public var userAgent: String?

    public var viewPort: ViewPortConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.viewPort?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserType != nil {
            map["browserType"] = self.browserType!
        }
        if self.enableExtension != nil {
            map["enableExtension"] = self.enableExtension!
        }
        if self.headless != nil {
            map["headless"] = self.headless!
        }
        if self.userAgent != nil {
            map["userAgent"] = self.userAgent!
        }
        if self.viewPort != nil {
            map["viewPort"] = self.viewPort?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserType"] as? String {
            self.browserType = value
        }
        if let value = dict["enableExtension"] as? [String] {
            self.enableExtension = value
        }
        if let value = dict["headless"] as? Bool {
            self.headless = value
        }
        if let value = dict["userAgent"] as? String {
            self.userAgent = value
        }
        if let value = dict["viewPort"] as? [String: Any?] {
            var model = ViewPortConfiguration()
            model.fromMap(value)
            self.viewPort = model
        }
    }
}

public class BrowserLiveViewStream : Tea.TeaModel {
    public var streamEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.streamEndpoint != nil {
            map["streamEndpoint"] = self.streamEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["streamEndpoint"] as? String {
            self.streamEndpoint = value
        }
    }
}

public class BrowserOssLocation : Tea.TeaModel {
    public var bucket: String?

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
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
    }
}

public class BrowserRecordingConfiguration : Tea.TeaModel {
    public var enabled: Bool?

    public var ossLocation: BrowserOssLocation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossLocation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.ossLocation != nil {
            map["ossLocation"] = self.ossLocation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["ossLocation"] as? [String: Any?] {
            var model = BrowserOssLocation()
            model.fromMap(value)
            self.ossLocation = model
        }
    }
}

public class BrowserResult : Tea.TeaModel {
    public var code: String?

    public var data: Browser?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Browser()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class BrowserSessionListOut : Tea.TeaModel {
    public var items: [BrowserSessionOut]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [BrowserSessionOut] = []
            for v in value {
                if v != nil {
                    var model = BrowserSessionOut()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class BrowserSessionOut : Tea.TeaModel {
    public var browserId: String?

    public var browserName: String?

    public var createdAt: String?

    public var lastUpdatedAt: String?

    public var sessionId: String?

    public var sessionIdleTimeoutSeconds: Int32?

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
        if self.browserId != nil {
            map["browserId"] = self.browserId!
        }
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserId"] as? String {
            self.browserId = value
        }
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class BrowserStreams : Tea.TeaModel {
    public var automationStream: BrowserAutomationStream?

    public var liveViewStream: BrowserLiveViewStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.automationStream?.validate()
        try self.liveViewStream?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.automationStream != nil {
            map["automationStream"] = self.automationStream?.toMap()
        }
        if self.liveViewStream != nil {
            map["liveViewStream"] = self.liveViewStream?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["automationStream"] as? [String: Any?] {
            var model = BrowserAutomationStream()
            model.fromMap(value)
            self.automationStream = model
        }
        if let value = dict["liveViewStream"] as? [String: Any?] {
            var model = BrowserLiveViewStream()
            model.fromMap(value)
            self.liveViewStream = model
        }
    }
}

public class BrowserViewPort : Tea.TeaModel {
    public var height: Double?

    public var width: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.height != nil {
            map["height"] = self.height!
        }
        if self.width != nil {
            map["width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["height"] as? Double {
            self.height = value
        }
        if let value = dict["width"] as? Double {
            self.width = value
        }
    }
}

public class CAPConfig : Tea.TeaModel {
    public var functionName: String?

    public var name: String?

    public var templateId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["templateId"] as? Int32 {
            self.templateId = value
        }
    }
}

public class CertConfig : Tea.TeaModel {
    public var certName: String?

    public var certificate: String?

    public var privateKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["certName"] = self.certName!
        }
        if self.certificate != nil {
            map["certificate"] = self.certificate!
        }
        if self.privateKey != nil {
            map["privateKey"] = self.privateKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certName"] as? String {
            self.certName = value
        }
        if let value = dict["certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["privateKey"] as? String {
            self.privateKey = value
        }
    }
}

public class CodeConfiguration : Tea.TeaModel {
    public var checksum: String?

    public var command: [String]?

    public var language: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var zipFile: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checksum != nil {
            map["checksum"] = self.checksum!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.ossBucketName != nil {
            map["ossBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        if self.zipFile != nil {
            map["zipFile"] = self.zipFile!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["ossBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["zipFile"] as? String {
            self.zipFile = value
        }
    }
}

public class CodeInfo : Tea.TeaModel {
    public var ossBucketName: String?

    public var ossObjectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossBucketName != nil {
            map["ossBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ossBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
    }
}

public class CodeInterpreter : Tea.TeaModel {
    public var codeInterpreterId: String?

    public var codeInterpreterName: String?

    public var cpu: Double?

    public var createdAt: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var lastUpdatedAt: String?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var status: String?

    public var statusReason: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeInterpreterId != nil {
            map["codeInterpreterId"] = self.codeInterpreterId!
        }
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeInterpreterId"] as? String {
            self.codeInterpreterId = value
        }
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CodeInterpreterResult : Tea.TeaModel {
    public var code: String?

    public var data: CodeInterpreter?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CodeInterpreter()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CodeInterpreterSessionConfig : Tea.TeaModel {
    public var environment: [String: String]?

    public var timeout: Int32?

    public var workingDirectory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["environment"] = self.environment!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.workingDirectory != nil {
            map["workingDirectory"] = self.workingDirectory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environment"] as? [String: String] {
            self.environment = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["workingDirectory"] as? String {
            self.workingDirectory = value
        }
    }
}

public class CodeInterpreterSessionListOut : Tea.TeaModel {
    public var items: [CodeInterpreterSessionOut]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [CodeInterpreterSessionOut] = []
            for v in value {
                if v != nil {
                    var model = CodeInterpreterSessionOut()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class CodeInterpreterSessionOut : Tea.TeaModel {
    public var codeInterpreterId: String?

    public var codeInterpreterName: String?

    public var createdAt: String?

    public var lastUpdatedAt: String?

    public var sessionId: String?

    public var sessionIdleTimeoutSeconds: Int32?

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
        if self.codeInterpreterId != nil {
            map["codeInterpreterId"] = self.codeInterpreterId!
        }
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeInterpreterId"] as? String {
            self.codeInterpreterId = value
        }
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CommonResult : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ContainerConfiguration : Tea.TeaModel {
    public var acrInstanceId: String?

    public var command: [String]?

    public var image: String?

    public var imageRegistryType: String?

    public var port: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.imageRegistryType != nil {
            map["imageRegistryType"] = self.imageRegistryType!
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["imageRegistryType"] as? String {
            self.imageRegistryType = value
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
        }
    }
}

public class CreateAgentRuntimeEndpointInput : Tea.TeaModel {
    public var agentRuntimeEndpointName: String?

    public var description_: String?

    public var routingConfiguration: RoutingConfiguration?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routingConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeEndpointName != nil {
            map["agentRuntimeEndpointName"] = self.agentRuntimeEndpointName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.routingConfiguration != nil {
            map["routingConfiguration"] = self.routingConfiguration?.toMap()
        }
        if self.targetVersion != nil {
            map["targetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeEndpointName"] as? String {
            self.agentRuntimeEndpointName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["routingConfiguration"] as? [String: Any?] {
            var model = RoutingConfiguration()
            model.fromMap(value)
            self.routingConfiguration = model
        }
        if let value = dict["targetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class CreateAgentRuntimeInput : Tea.TeaModel {
    public var agentRuntimeName: String?

    public var artifactType: String?

    public var codeConfiguration: CodeConfiguration?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var credentialId: String?

    public var credentialName: String?

    public var description_: String?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var healthCheckConfiguration: HealthCheckConfiguration?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var port: Int32?

    public var protocolConfiguration: ProtocolConfiguration?

    public var sessionConcurrencyLimitPerInstance: Int32?

    public var sessionIdleTimeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeConfiguration?.validate()
        try self.containerConfiguration?.validate()
        try self.healthCheckConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.protocolConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.artifactType != nil {
            map["artifactType"] = self.artifactType!
        }
        if self.codeConfiguration != nil {
            map["codeConfiguration"] = self.codeConfiguration?.toMap()
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.healthCheckConfiguration != nil {
            map["healthCheckConfiguration"] = self.healthCheckConfiguration?.toMap()
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        if self.protocolConfiguration != nil {
            map["protocolConfiguration"] = self.protocolConfiguration?.toMap()
        }
        if self.sessionConcurrencyLimitPerInstance != nil {
            map["sessionConcurrencyLimitPerInstance"] = self.sessionConcurrencyLimitPerInstance!
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["artifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["codeConfiguration"] as? [String: Any?] {
            var model = CodeConfiguration()
            model.fromMap(value)
            self.codeConfiguration = model
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["healthCheckConfiguration"] as? [String: Any?] {
            var model = HealthCheckConfiguration()
            model.fromMap(value)
            self.healthCheckConfiguration = model
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
        }
        if let value = dict["protocolConfiguration"] as? [String: Any?] {
            var model = ProtocolConfiguration()
            model.fromMap(value)
            self.protocolConfiguration = model
        }
        if let value = dict["sessionConcurrencyLimitPerInstance"] as? Int32 {
            self.sessionConcurrencyLimitPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
    }
}

public class CreateAgentRuntimeVersionInput : Tea.TeaModel {
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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class CreateApigLLMModelInput : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var desc: String?

    public var models: [String]?

    public var name: String?

    public var provider: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["models"] as? [String] {
            self.models = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateBrowserInput : Tea.TeaModel {
    public var browserName: String?

    public var cpu: Double?

    public var credentialId: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var sessionIdleTimeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
    }
}

public class CreateCodeInterpreterInput : Tea.TeaModel {
    public var codeInterpreterName: String?

    public var cpu: Double?

    public var credentialId: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var sessionIdleTimeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
    }
}

public class CreateCredentialInput : Tea.TeaModel {
    public var credentialAuthType: String?

    public var credentialName: String?

    public var credentialPublicConfig: CredentialPublicConfig?

    public var credentialSecret: String?

    public var credentialSourceType: String?

    public var description_: String?

    public var enabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialPublicConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig?.toMap()
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialPublicConfig"] as? [String: Any?] {
            var model = CredentialPublicConfig()
            model.fromMap(value)
            self.credentialPublicConfig = model
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class CreateCredentialOutput : Tea.TeaModel {
    public var createdAt: String?

    public var credentialAuthType: String?

    public var credentialId: String?

    public var credentialName: String?

    public var credentialPublicConfig: [String: String]?

    public var credentialSecret: String?

    public var credentialSourceType: String?

    public var description_: String?

    public var enabled: Bool?

    public var relatedResources: [RelatedResource]?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig!
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.relatedResources != nil {
            var tmp : [Any] = []
            for k in self.relatedResources! {
                tmp.append(k.toMap())
            }
            map["relatedResources"] = tmp
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialPublicConfig"] as? [String: String] {
            self.credentialPublicConfig = value
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["relatedResources"] as? [Any?] {
            var tmp : [RelatedResource] = []
            for v in value {
                if v != nil {
                    var model = RelatedResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResources = tmp
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class CreateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var description_: String?

    public var domainName: String?

    public var domainType: String?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var tlsConfig: TLSConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.routeConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["domainType"] = self.domainType!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.routeConfig != nil {
            map["routeConfig"] = self.routeConfig?.toMap()
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["domainType"] as? String {
            self.domainType = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["routeConfig"] as? [String: Any?] {
            var model = RouteConfig()
            model.fromMap(value)
            self.routeConfig = model
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
    }
}

public class CreateDomainInput : Tea.TeaModel {
    public var certIdentifier: String?

    public var name: String?

    public var protocol_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
    }
}

public class CreateGatewayInput : Tea.TeaModel {
    public var identityId: String?

    public var name: String?

    public var networkConfiguration: GatewayNetworkConfiguration?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityId != nil {
            map["identityId"] = self.identityId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["identityId"] as? String {
            self.identityId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = GatewayNetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateGatewayTargetInput : Tea.TeaModel {
    public var domainId: String?

    public var name: String?

    public var targetConfiguration: TargetConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.targetConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.targetConfiguration != nil {
            map["targetConfiguration"] = self.targetConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["targetConfiguration"] as? [String: Any?] {
            var model = TargetConfiguration()
            model.fromMap(value)
            self.targetConfiguration = model
        }
    }
}

public class CreateKnowledgeBaseInput : Tea.TeaModel {
    public var credentialName: String?

    public var description_: String?

    public var knowledgeBaseName: String?

    public var provider: String?

    public var providerSettings: [String: Any]?

    public var retrieveSettings: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.knowledgeBaseName != nil {
            map["knowledgeBaseName"] = self.knowledgeBaseName!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings!
        }
        if self.retrieveSettings != nil {
            map["retrieveSettings"] = self.retrieveSettings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["knowledgeBaseName"] as? String {
            self.knowledgeBaseName = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["providerSettings"] as? [String: Any] {
            self.providerSettings = value
        }
        if let value = dict["retrieveSettings"] as? [String: Any] {
            self.retrieveSettings = value
        }
    }
}

public class CreateMemoryCollectionInput : Tea.TeaModel {
    public var description_: String?

    public var embedderConfig: EmbedderConfig?

    public var executionRoleArn: String?

    public var llmConfig: LLMConfig?

    public var memoryCollectionName: String?

    public var networkConfiguration: NetworkConfiguration?

    public var type: String?

    public var vectorStoreConfig: VectorStoreConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embedderConfig?.validate()
        try self.llmConfig?.validate()
        try self.networkConfiguration?.validate()
        try self.vectorStoreConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.embedderConfig != nil {
            map["embedderConfig"] = self.embedderConfig?.toMap()
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.llmConfig != nil {
            map["llmConfig"] = self.llmConfig?.toMap()
        }
        if self.memoryCollectionName != nil {
            map["memoryCollectionName"] = self.memoryCollectionName!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.vectorStoreConfig != nil {
            map["vectorStoreConfig"] = self.vectorStoreConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["embedderConfig"] as? [String: Any?] {
            var model = EmbedderConfig()
            model.fromMap(value)
            self.embedderConfig = model
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["llmConfig"] as? [String: Any?] {
            var model = LLMConfig()
            model.fromMap(value)
            self.llmConfig = model
        }
        if let value = dict["memoryCollectionName"] as? String {
            self.memoryCollectionName = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["vectorStoreConfig"] as? [String: Any?] {
            var model = VectorStoreConfig()
            model.fromMap(value)
            self.vectorStoreConfig = model
        }
    }
}

public class CreateModelInput : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var desc: String?

    public var models: [String]?

    public var name: String?

    public var provider: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["models"] as? [String] {
            self.models = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateModelProxyInput : Tea.TeaModel {
    public var armsConfiguration: ArmsConfiguration?

    public var cpu: Double?

    public var credentialName: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var litellmVersion: String?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var modelProxyName: String?

    public var modelType: String?

    public var networkConfiguration: NetworkConfiguration?

    public var proxyConfig: ProxyConfig?

    public var proxyMode: String?

    public var serviceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.armsConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.proxyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.armsConfiguration != nil {
            map["armsConfiguration"] = self.armsConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.litellmVersion != nil {
            map["litellmVersion"] = self.litellmVersion!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.modelProxyName != nil {
            map["modelProxyName"] = self.modelProxyName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.proxyConfig != nil {
            map["proxyConfig"] = self.proxyConfig?.toMap()
        }
        if self.proxyMode != nil {
            map["proxyMode"] = self.proxyMode!
        }
        if self.serviceRegionId != nil {
            map["serviceRegionId"] = self.serviceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["armsConfiguration"] as? [String: Any?] {
            var model = ArmsConfiguration()
            model.fromMap(value)
            self.armsConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["litellmVersion"] as? String {
            self.litellmVersion = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["modelProxyName"] as? String {
            self.modelProxyName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["proxyConfig"] as? [String: Any?] {
            var model = ProxyConfig()
            model.fromMap(value)
            self.proxyConfig = model
        }
        if let value = dict["proxyMode"] as? String {
            self.proxyMode = value
        }
        if let value = dict["serviceRegionId"] as? String {
            self.serviceRegionId = value
        }
    }
}

public class CreateModelServiceInput : Tea.TeaModel {
    public var credentialName: String?

    public var description_: String?

    public var modelInfoConfigs: [ModelInfoConfig]?

    public var modelServiceName: String?

    public var modelType: String?

    public var networkConfiguration: NetworkConfiguration?

    public var provider: String?

    public var providerSettings: ProviderSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
        try self.providerSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.modelInfoConfigs != nil {
            var tmp : [Any] = []
            for k in self.modelInfoConfigs! {
                tmp.append(k.toMap())
            }
            map["modelInfoConfigs"] = tmp
        }
        if self.modelServiceName != nil {
            map["modelServiceName"] = self.modelServiceName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["modelInfoConfigs"] as? [Any?] {
            var tmp : [ModelInfoConfig] = []
            for v in value {
                if v != nil {
                    var model = ModelInfoConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelInfoConfigs = tmp
        }
        if let value = dict["modelServiceName"] as? String {
            self.modelServiceName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["providerSettings"] as? [String: Any?] {
            var model = ProviderSettings()
            model.fromMap(value)
            self.providerSettings = model
        }
    }
}

public class CreateSandboxInput : Tea.TeaModel {
    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var sandboxId: String?

    public var sandboxIdleTimeoutSeconds: Int32?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.sandboxId != nil {
            map["sandboxId"] = self.sandboxId!
        }
        if self.sandboxIdleTimeoutSeconds != nil {
            map["sandboxIdleTimeoutSeconds"] = self.sandboxIdleTimeoutSeconds!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = NASConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["ossMountConfig"] as? [String: Any?] {
            var model = OSSMountConfig()
            model.fromMap(value)
            self.ossMountConfig = model
        }
        if let value = dict["sandboxId"] as? String {
            self.sandboxId = value
        }
        if let value = dict["sandboxIdleTimeoutSeconds"] as? Int32 {
            self.sandboxIdleTimeoutSeconds = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
    }
}

public class CreateTemplateInput : Tea.TeaModel {
    public var allowAnonymousManage: Bool?

    public var armsConfiguration: ArmsConfiguration?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var credentialConfiguration: CredentialConfiguration?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var ossConfiguration: [OssConfiguration]?

    public var sandboxIdleTimeoutInSeconds: Int32?

    public var sandboxTTLInSeconds: Int32?

    public var templateConfiguration: [String: Any]?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.armsConfiguration?.validate()
        try self.containerConfiguration?.validate()
        try self.credentialConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowAnonymousManage != nil {
            map["allowAnonymousManage"] = self.allowAnonymousManage!
        }
        if self.armsConfiguration != nil {
            map["armsConfiguration"] = self.armsConfiguration?.toMap()
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialConfiguration != nil {
            map["credentialConfiguration"] = self.credentialConfiguration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.ossConfiguration != nil {
            var tmp : [Any] = []
            for k in self.ossConfiguration! {
                tmp.append(k.toMap())
            }
            map["ossConfiguration"] = tmp
        }
        if self.sandboxIdleTimeoutInSeconds != nil {
            map["sandboxIdleTimeoutInSeconds"] = self.sandboxIdleTimeoutInSeconds!
        }
        if self.sandboxTTLInSeconds != nil {
            map["sandboxTTLInSeconds"] = self.sandboxTTLInSeconds!
        }
        if self.templateConfiguration != nil {
            map["templateConfiguration"] = self.templateConfiguration!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowAnonymousManage"] as? Bool {
            self.allowAnonymousManage = value
        }
        if let value = dict["armsConfiguration"] as? [String: Any?] {
            var model = ArmsConfiguration()
            model.fromMap(value)
            self.armsConfiguration = model
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialConfiguration"] as? [String: Any?] {
            var model = CredentialConfiguration()
            model.fromMap(value)
            self.credentialConfiguration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["ossConfiguration"] as? [Any?] {
            var tmp : [OssConfiguration] = []
            for v in value {
                if v != nil {
                    var model = OssConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ossConfiguration = tmp
        }
        if let value = dict["sandboxIdleTimeoutInSeconds"] as? Int32 {
            self.sandboxIdleTimeoutInSeconds = value
        }
        if let value = dict["sandboxTTLInSeconds"] as? Int32 {
            self.sandboxTTLInSeconds = value
        }
        if let value = dict["templateConfiguration"] as? [String: Any] {
            self.templateConfiguration = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
        }
    }
}

public class CreateToolData : Tea.TeaModel {
    public var createdAt: String?

    public var id: String?

    public var name: String?

    public var sourceType: String?

    public var toolType: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.toolType != nil {
            map["toolType"] = self.toolType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["toolType"] as? String {
            self.toolType = value
        }
    }
}

public class CreateToolInput : Tea.TeaModel {
    public var CAPConfig: CAPConfig?

    public var description_: String?

    public var name: String?

    public var schema: String?

    public var sourceType: String?

    public var toolType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CAPConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAPConfig != nil {
            map["CAPConfig"] = self.CAPConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.toolType != nil {
            map["toolType"] = self.toolType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAPConfig"] as? [String: Any?] {
            var model = CAPConfig()
            model.fromMap(value)
            self.CAPConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schema"] as? String {
            self.schema = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["toolType"] as? String {
            self.toolType = value
        }
    }
}

public class CreateToolOutput : Tea.TeaModel {
    public var data: CreateToolData?

    public var message: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateToolData()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Credential : Tea.TeaModel {
    public var createdAt: String?

    public var credentialAuthType: String?

    public var credentialId: String?

    public var credentialName: String?

    public var credentialPublicConfig: [String: String]?

    public var credentialSecret: String?

    public var credentialSourceType: String?

    public var description_: String?

    public var enabled: Bool?

    public var relatedResources: [RelatedResource]?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig!
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.relatedResources != nil {
            var tmp : [Any] = []
            for k in self.relatedResources! {
                tmp.append(k.toMap())
            }
            map["relatedResources"] = tmp
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialPublicConfig"] as? [String: String] {
            self.credentialPublicConfig = value
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["relatedResources"] as? [Any?] {
            var tmp : [RelatedResource] = []
            for v in value {
                if v != nil {
                    var model = RelatedResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResources = tmp
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class CredentialConfiguration : Tea.TeaModel {
    public var credentialName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
    }
}

public class CredentialListItem : Tea.TeaModel {
    public var createdAt: String?

    public var credentialAuthType: String?

    public var credentialId: String?

    public var credentialName: String?

    public var credentialSourceType: String?

    public var enabled: Bool?

    public var relatedResourceCount: Int32?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.relatedResourceCount != nil {
            map["relatedResourceCount"] = self.relatedResourceCount!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["relatedResourceCount"] as? Int32 {
            self.relatedResourceCount = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class CredentialPublicConfig : Tea.TeaModel {
    public class RemoteConfig : Tea.TeaModel {
        public var timeout: Int32?

        public var ttl: Int32?

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
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.ttl != nil {
                map["ttl"] = self.ttl!
            }
            if self.uri != nil {
                map["uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["timeout"] as? Int32 {
                self.timeout = value
            }
            if let value = dict["ttl"] as? Int32 {
                self.ttl = value
            }
            if let value = dict["uri"] as? String {
                self.uri = value
            }
        }
    }
    public class Users : Tea.TeaModel {
        public var password: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
        }
    }
    public var authConfig: [String: String]?

    public var authType: String?

    public var headerKey: String?

    public var provider: String?

    public var remoteConfig: CredentialPublicConfig.RemoteConfig?

    public var users: [CredentialPublicConfig.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.remoteConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig!
        }
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.headerKey != nil {
            map["headerKey"] = self.headerKey!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.remoteConfig != nil {
            map["remoteConfig"] = self.remoteConfig?.toMap()
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: String] {
            self.authConfig = value
        }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["headerKey"] as? String {
            self.headerKey = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["remoteConfig"] as? [String: Any?] {
            var model = CredentialPublicConfig.RemoteConfig()
            model.fromMap(value)
            self.remoteConfig = model
        }
        if let value = dict["users"] as? [Any?] {
            var tmp : [CredentialPublicConfig.Users] = []
            for v in value {
                if v != nil {
                    var model = CredentialPublicConfig.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class CredentialResult : Tea.TeaModel {
    public var code: String?

    public var data: Credential?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Credential()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CustomDomain : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var createdAt: String?

    public var description_: String?

    public var domainName: String?

    public var domainType: String?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var tlsConfig: TLSConfig?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.routeConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["domainType"] = self.domainType!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.routeConfig != nil {
            map["routeConfig"] = self.routeConfig?.toMap()
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["domainType"] as? String {
            self.domainType = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["routeConfig"] as? [String: Any?] {
            var model = RouteConfig()
            model.fromMap(value)
            self.routeConfig = model
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class CustomDomainResult : Tea.TeaModel {
    public var code: String?

    public var data: CustomDomain?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CustomDomain()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CustomRuntimeConfig : Tea.TeaModel {
    public var args: [String]?

    public var command: [String]?

    public var port: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["args"] as? [String] {
            self.args = value
        }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
        }
    }
}

public class DeleteBrowserOut : Tea.TeaModel {
    public var browserId: String?

    public var browserName: String?

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
        if self.browserId != nil {
            map["browserId"] = self.browserId!
        }
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserId"] as? String {
            self.browserId = value
        }
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteBrowserResult : Tea.TeaModel {
    public var code: String?

    public var data: Browser?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Browser()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCodeInterpreterOut : Tea.TeaModel {
    public var codeInterpreterId: String?

    public var codeInterpreterName: String?

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
        if self.codeInterpreterId != nil {
            map["codeInterpreterId"] = self.codeInterpreterId!
        }
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeInterpreterId"] as? String {
            self.codeInterpreterId = value
        }
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteCodeInterpreterResult : Tea.TeaModel {
    public var code: String?

    public var data: CodeInterpreter?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CodeInterpreter()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteKnowledgeBaseResult : Tea.TeaModel {
    public var code: String?

    public var data: KnowledgeBase?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = KnowledgeBase()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteModelProxyResult : Tea.TeaModel {
    public var code: String?

    public var data: ModelProxy?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelProxy()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteModelServiceResult : Tea.TeaModel {
    public var code: String?

    public var data: ModelService?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelService()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteSandboxResult : Tea.TeaModel {
    public var code: String?

    public var data: Sandbox?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Sandbox()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTemplateResult : Tea.TeaModel {
    public var code: String?

    public var data: Template?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Template()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeregisterServiceInput : Tea.TeaModel {
    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceName"] as? String {
            self.serviceName = value
        }
    }
}

public class DomainInfo : Tea.TeaModel {
    public var certIdentifier: String?

    public var domainId: String?

    public var name: String?

    public var protocol_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
    }
}

public class EmbedderConfig : Tea.TeaModel {
    public class Config : Tea.TeaModel {
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
            if self.model != nil {
                map["model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["model"] as? String {
                self.model = value
            }
        }
    }
    public var config: EmbedderConfig.Config?

    public var modelServiceName: String?

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
        if self.modelServiceName != nil {
            map["modelServiceName"] = self.modelServiceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = EmbedderConfig.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["modelServiceName"] as? String {
            self.modelServiceName = value
        }
    }
}

public class ErrorResult : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class FCLinkConfig : Tea.TeaModel {
    public var functionName: String?

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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class Gateway : Tea.TeaModel {
    public var createdAt: String?

    public var gatewayId: String?

    public var internetUrl: String?

    public var intranetUrl: String?

    public var name: String?

    public var status: String?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.internetUrl != nil {
            map["internetUrl"] = self.internetUrl!
        }
        if self.intranetUrl != nil {
            map["intranetUrl"] = self.intranetUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
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
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["internetUrl"] as? String {
            self.internetUrl = value
        }
        if let value = dict["intranetUrl"] as? String {
            self.intranetUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class GatewayNetworkConfiguration : Tea.TeaModel {
    public var networkMode: String?

    public var vpcId: String?

    public var vswitchIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkMode != nil {
            map["networkMode"] = self.networkMode!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.vswitchIds != nil {
            map["vswitchIds"] = self.vswitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["networkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["vswitchIds"] as? [String] {
            self.vswitchIds = value
        }
    }
}

public class GetBrowserSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: BrowserSessionOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BrowserSessionOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCodeInterpreterSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: CodeInterpreterSessionOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CodeInterpreterSessionOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCredentialOutput : Tea.TeaModel {
    public var createdAt: String?

    public var credentialAuthType: String?

    public var credentialId: String?

    public var credentialName: String?

    public var credentialPublicConfig: [String: String]?

    public var credentialSecret: String?

    public var credentialSourceType: String?

    public var description_: String?

    public var enabled: Bool?

    public var relatedResources: [RelatedResource]?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig!
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.relatedResources != nil {
            var tmp : [Any] = []
            for k in self.relatedResources! {
                tmp.append(k.toMap())
            }
            map["relatedResources"] = tmp
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialPublicConfig"] as? [String: String] {
            self.credentialPublicConfig = value
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["relatedResources"] as? [Any?] {
            var tmp : [RelatedResource] = []
            for v in value {
                if v != nil {
                    var model = RelatedResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResources = tmp
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class GetToolOutput : Tea.TeaModel {
    public var data: ToolInfo?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ToolInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GrayTrafficWeight : Tea.TeaModel {
    public var version: String?

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
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.weight != nil {
            map["weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["weight"] as? Double {
            self.weight = value
        }
    }
}

public class HealthCheckConfig : Tea.TeaModel {
    public var failureThreshold: Int32?

    public var httpGetUrl: String?

    public var initialDelaySeconds: Int32?

    public var periodSeconds: Int32?

    public var successThreshold: Int32?

    public var timeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failureThreshold != nil {
            map["failureThreshold"] = self.failureThreshold!
        }
        if self.httpGetUrl != nil {
            map["httpGetUrl"] = self.httpGetUrl!
        }
        if self.initialDelaySeconds != nil {
            map["initialDelaySeconds"] = self.initialDelaySeconds!
        }
        if self.periodSeconds != nil {
            map["periodSeconds"] = self.periodSeconds!
        }
        if self.successThreshold != nil {
            map["successThreshold"] = self.successThreshold!
        }
        if self.timeoutSeconds != nil {
            map["timeoutSeconds"] = self.timeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failureThreshold"] as? Int32 {
            self.failureThreshold = value
        }
        if let value = dict["httpGetUrl"] as? String {
            self.httpGetUrl = value
        }
        if let value = dict["initialDelaySeconds"] as? Int32 {
            self.initialDelaySeconds = value
        }
        if let value = dict["periodSeconds"] as? Int32 {
            self.periodSeconds = value
        }
        if let value = dict["successThreshold"] as? Int32 {
            self.successThreshold = value
        }
        if let value = dict["timeoutSeconds"] as? Int32 {
            self.timeoutSeconds = value
        }
    }
}

public class HealthCheckConfiguration : Tea.TeaModel {
    public var failureThreshold: Int32?

    public var httpGetUrl: String?

    public var initialDelaySeconds: Int32?

    public var periodSeconds: Int32?

    public var successThreshold: Int32?

    public var timeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failureThreshold != nil {
            map["failureThreshold"] = self.failureThreshold!
        }
        if self.httpGetUrl != nil {
            map["httpGetUrl"] = self.httpGetUrl!
        }
        if self.initialDelaySeconds != nil {
            map["initialDelaySeconds"] = self.initialDelaySeconds!
        }
        if self.periodSeconds != nil {
            map["periodSeconds"] = self.periodSeconds!
        }
        if self.successThreshold != nil {
            map["successThreshold"] = self.successThreshold!
        }
        if self.timeoutSeconds != nil {
            map["timeoutSeconds"] = self.timeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failureThreshold"] as? Int32 {
            self.failureThreshold = value
        }
        if let value = dict["httpGetUrl"] as? String {
            self.httpGetUrl = value
        }
        if let value = dict["initialDelaySeconds"] as? Int32 {
            self.initialDelaySeconds = value
        }
        if let value = dict["periodSeconds"] as? Int32 {
            self.periodSeconds = value
        }
        if let value = dict["successThreshold"] as? Int32 {
            self.successThreshold = value
        }
        if let value = dict["timeoutSeconds"] as? Int32 {
            self.timeoutSeconds = value
        }
    }
}

public class KnowledgeBase : Tea.TeaModel {
    public var createdAt: String?

    public var credentialName: String?

    public var description_: String?

    public var knowledgeBaseId: String?

    public var knowledgeBaseName: String?

    public var lastUpdatedAt: String?

    public var provider: String?

    public var providerSettings: [String: Any]?

    public var retrieveSettings: [String: Any]?

    public override init() {
        super.init()
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
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.knowledgeBaseId != nil {
            map["knowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.knowledgeBaseName != nil {
            map["knowledgeBaseName"] = self.knowledgeBaseName!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings!
        }
        if self.retrieveSettings != nil {
            map["retrieveSettings"] = self.retrieveSettings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["knowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["knowledgeBaseName"] as? String {
            self.knowledgeBaseName = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["providerSettings"] as? [String: Any] {
            self.providerSettings = value
        }
        if let value = dict["retrieveSettings"] as? [String: Any] {
            self.retrieveSettings = value
        }
    }
}

public class KnowledgeBaseResult : Tea.TeaModel {
    public var code: String?

    public var data: KnowledgeBase?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = KnowledgeBase()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class LLMAPIConfiguration : Tea.TeaModel {
    public var aiProtocols: [String]?

    public var attachPolicyConfigs: [AttachPolicyConfig]?

    public var basePath: String?

    public var deployConfigs: [LLMDeployConfig]?

    public var modelCategory: String?

    public var removeBasePathOnForward: Bool?

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
        if self.aiProtocols != nil {
            map["aiProtocols"] = self.aiProtocols!
        }
        if self.attachPolicyConfigs != nil {
            var tmp : [Any] = []
            for k in self.attachPolicyConfigs! {
                tmp.append(k.toMap())
            }
            map["attachPolicyConfigs"] = tmp
        }
        if self.basePath != nil {
            map["basePath"] = self.basePath!
        }
        if self.deployConfigs != nil {
            var tmp : [Any] = []
            for k in self.deployConfigs! {
                tmp.append(k.toMap())
            }
            map["deployConfigs"] = tmp
        }
        if self.modelCategory != nil {
            map["modelCategory"] = self.modelCategory!
        }
        if self.removeBasePathOnForward != nil {
            map["removeBasePathOnForward"] = self.removeBasePathOnForward!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aiProtocols"] as? [String] {
            self.aiProtocols = value
        }
        if let value = dict["attachPolicyConfigs"] as? [Any?] {
            var tmp : [AttachPolicyConfig] = []
            for v in value {
                if v != nil {
                    var model = AttachPolicyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachPolicyConfigs = tmp
        }
        if let value = dict["basePath"] as? String {
            self.basePath = value
        }
        if let value = dict["deployConfigs"] as? [Any?] {
            var tmp : [LLMDeployConfig] = []
            for v in value {
                if v != nil {
                    var model = LLMDeployConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployConfigs = tmp
        }
        if let value = dict["modelCategory"] as? String {
            self.modelCategory = value
        }
        if let value = dict["removeBasePathOnForward"] as? Bool {
            self.removeBasePathOnForward = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class LLMConfig : Tea.TeaModel {
    public class Config : Tea.TeaModel {
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
            if self.model != nil {
                map["model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["model"] as? String {
                self.model = value
            }
        }
    }
    public var config: LLMConfig.Config?

    public var modelServiceName: String?

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
        if self.modelServiceName != nil {
            map["modelServiceName"] = self.modelServiceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = LLMConfig.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["modelServiceName"] as? String {
            self.modelServiceName = value
        }
    }
}

public class LLMDeployConfig : Tea.TeaModel {
    public var autoDeploy: Bool?

    public var backendScene: String?

    public var customDomainIds: [String]?

    public var gatewayType: String?

    public var policyConfigs: [PolicyConfig]?

    public var serviceConfigs: [TargetServiceConfig]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeploy != nil {
            map["autoDeploy"] = self.autoDeploy!
        }
        if self.backendScene != nil {
            map["backendScene"] = self.backendScene!
        }
        if self.customDomainIds != nil {
            map["customDomainIds"] = self.customDomainIds!
        }
        if self.gatewayType != nil {
            map["gatewayType"] = self.gatewayType!
        }
        if self.policyConfigs != nil {
            var tmp : [Any] = []
            for k in self.policyConfigs! {
                tmp.append(k.toMap())
            }
            map["policyConfigs"] = tmp
        }
        if self.serviceConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceConfigs! {
                tmp.append(k.toMap())
            }
            map["serviceConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoDeploy"] as? Bool {
            self.autoDeploy = value
        }
        if let value = dict["backendScene"] as? String {
            self.backendScene = value
        }
        if let value = dict["customDomainIds"] as? [String] {
            self.customDomainIds = value
        }
        if let value = dict["gatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["policyConfigs"] as? [Any?] {
            var tmp : [PolicyConfig] = []
            for v in value {
                if v != nil {
                    var model = PolicyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyConfigs = tmp
        }
        if let value = dict["serviceConfigs"] as? [Any?] {
            var tmp : [TargetServiceConfig] = []
            for v in value {
                if v != nil {
                    var model = TargetServiceConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceConfigs = tmp
        }
    }
}

public class ListAgentRuntimeEndpointsInput : Tea.TeaModel {
    public var endpointName: String?

    public var pageNumber: Int?

    public var pageSize: Int?

    public var statuses: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointName != nil {
            map["endpointName"] = self.endpointName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.statuses != nil {
            map["statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
        if let value = dict["statuses"] as? [String] {
            self.statuses = value
        }
    }
}

public class ListAgentRuntimeEndpointsOutput : Tea.TeaModel {
    public var items: [AgentRuntimeEndpoint]?

    public var pageNumber: Int?

    public var pageSize: Int?

    public var total: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [AgentRuntimeEndpoint] = []
            for v in value {
                if v != nil {
                    var model = AgentRuntimeEndpoint()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int {
            self.total = value
        }
    }
}

public class ListAgentRuntimeEndpointsResult : Tea.TeaModel {
    public var code: String?

    public var data: ListAgentRuntimeEndpointsOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListAgentRuntimeEndpointsOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAgentRuntimeVersionsInput : Tea.TeaModel {
    public var pageNumber: Int?

    public var pageSize: Int?

    public override init() {
        super.init()
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
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
    }
}

public class ListAgentRuntimeVersionsOutput : Tea.TeaModel {
    public var items: [AgentRuntimeVersion]?

    public var pageNumber: Int?

    public var pageSize: Int?

    public var total: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [AgentRuntimeVersion] = []
            for v in value {
                if v != nil {
                    var model = AgentRuntimeVersion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int {
            self.total = value
        }
    }
}

public class ListAgentRuntimeVersionsResult : Tea.TeaModel {
    public var code: String?

    public var data: ListAgentRuntimeVersionsOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListAgentRuntimeVersionsOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAgentRuntimesInput : Tea.TeaModel {
    public var agentRuntimeName: String?

    public var pageNumber: Int?

    public var pageSize: Int?

    public var statuses: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.statuses != nil {
            map["statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
        if let value = dict["statuses"] as? [String] {
            self.statuses = value
        }
    }
}

public class ListAgentRuntimesOutput : Tea.TeaModel {
    public var items: [AgentRuntime]?

    public var pageNumber: Int?

    public var pageSize: Int?

    public var total: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [AgentRuntime] = []
            for v in value {
                if v != nil {
                    var model = AgentRuntime()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int {
            self.total = value
        }
    }
}

public class ListAgentRuntimesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListAgentRuntimesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListAgentRuntimesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBrowserSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: BrowserSessionListOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BrowserSessionListOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBrowsersInput : Tea.TeaModel {
    public var browserName: String?

    public var pageNumber: Int?

    public var pageSize: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
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
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
    }
}

public class ListBrowsersOutput : Tea.TeaModel {
    public var items: [Browser]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [Browser] = []
            for v in value {
                if v != nil {
                    var model = Browser()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListBrowsersResult : Tea.TeaModel {
    public var code: String?

    public var data: ListBrowsersOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListBrowsersOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCodeInterpreterSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: CodeInterpreterSessionListOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CodeInterpreterSessionListOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCodeInterpretersInput : Tea.TeaModel {
    public var codeInterpreterName: String?

    public var pageNumber: Int?

    public var pageSize: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
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
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["pageNumber"] as? Int {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int {
            self.pageSize = value
        }
    }
}

public class ListCodeInterpretersOutput : Tea.TeaModel {
    public var items: [CodeInterpreter]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [CodeInterpreter] = []
            for v in value {
                if v != nil {
                    var model = CodeInterpreter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListCodeInterpretersResult : Tea.TeaModel {
    public var code: String?

    public var data: ListCodeInterpretersOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListCodeInterpretersOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCredentialsOutput : Tea.TeaModel {
    public var items: [CredentialListItem]?

    public var pageNumber: String?

    public var pageSize: String?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [CredentialListItem] = []
            for v in value {
                if v != nil {
                    var model = CredentialListItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["total"] as? String {
            self.total = value
        }
    }
}

public class ListCredentialsResult : Tea.TeaModel {
    public var code: String?

    public var data: ListCredentialsOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListCredentialsOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCustomDomainsOutput : Tea.TeaModel {
    public var items: [CustomDomain]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [CustomDomain] = []
            for v in value {
                if v != nil {
                    var model = CustomDomain()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListCustomDomainsResult : Tea.TeaModel {
    public var code: String?

    public var data: ListCustomDomainsOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListCustomDomainsOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDomainsOutput : Tea.TeaModel {
    public var items: [DomainInfo]?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [DomainInfo] = []
            for v in value {
                if v != nil {
                    var model = DomainInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListGatewaysOutput : Tea.TeaModel {
    public var items: Gateway?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["items"] = self.items?.toMap()
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [String: Any?] {
            var model = Gateway()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListKnowledgeBasesOutput : Tea.TeaModel {
    public var items: [KnowledgeBase]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
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
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListKnowledgeBasesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListKnowledgeBasesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListKnowledgeBasesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMemoryCollectionsOutput : Tea.TeaModel {
    public var items: [MemoryCollection]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [MemoryCollection] = []
            for v in value {
                if v != nil {
                    var model = MemoryCollection()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListMemoryCollectionsResult : Tea.TeaModel {
    public var code: String?

    public var data: ListMemoryCollectionsOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMemoryCollectionsOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListModelProxiesOutput : Tea.TeaModel {
    public var items: [ModelProxy]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ModelProxy] = []
            for v in value {
                if v != nil {
                    var model = ModelProxy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListModelProxiesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListModelProxiesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListModelProxiesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListModelServicesOutput : Tea.TeaModel {
    public var items: [ModelService]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ModelService] = []
            for v in value {
                if v != nil {
                    var model = ModelService()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListModelServicesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListModelServicesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListModelServicesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSandboxesOutput : Tea.TeaModel {
    public var items: [Sandbox]?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [Sandbox] = []
            for v in value {
                if v != nil {
                    var model = Sandbox()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListSandboxesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListSandboxesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListSandboxesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTemplatesOutput : Tea.TeaModel {
    public var items: [Template]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [Template] = []
            for v in value {
                if v != nil {
                    var model = Template()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListTemplatesResult : Tea.TeaModel {
    public var code: String?

    public var data: ListTemplatesOutput?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTemplatesOutput()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListToolsOutput : Tea.TeaModel {
    public var data: [ToolListItem]?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ToolListItem] = []
            for v in value {
                if v != nil {
                    var model = ToolListItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class LogConfiguration : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
    }
}

public class MCPAPI : Tea.TeaModel {
    public var backendConfig: MCPBackendConfig?

    public var description_: String?

    public var exposedUriPath: String?

    public var match: MCPMatch?

    public var mcpStatisticsEnable: Bool?

    public var protocol_: String?

    public var toolId: String?

    public var toolsConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendConfig?.validate()
        try self.match?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendConfig != nil {
            map["backendConfig"] = self.backendConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exposedUriPath != nil {
            map["exposedUriPath"] = self.exposedUriPath!
        }
        if self.match != nil {
            map["match"] = self.match?.toMap()
        }
        if self.mcpStatisticsEnable != nil {
            map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.toolId != nil {
            map["toolId"] = self.toolId!
        }
        if self.toolsConfig != nil {
            map["toolsConfig"] = self.toolsConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backendConfig"] as? [String: Any?] {
            var model = MCPBackendConfig()
            model.fromMap(value)
            self.backendConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exposedUriPath"] as? String {
            self.exposedUriPath = value
        }
        if let value = dict["match"] as? [String: Any?] {
            var model = MCPMatch()
            model.fromMap(value)
            self.match = model
        }
        if let value = dict["mcpStatisticsEnable"] as? Bool {
            self.mcpStatisticsEnable = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["toolId"] as? String {
            self.toolId = value
        }
        if let value = dict["toolsConfig"] as? String {
            self.toolsConfig = value
        }
    }
}

public class MCPAPIConfiguration : Tea.TeaModel {
    public var description_: String?

    public var exposedUriPath: String?

    public var mcpStatisticsEnable: Bool?

    public var protocol_: String?

    public var toolId: String?

    public override init() {
        super.init()
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
        if self.exposedUriPath != nil {
            map["exposedUriPath"] = self.exposedUriPath!
        }
        if self.mcpStatisticsEnable != nil {
            map["mcpStatisticsEnable"] = self.mcpStatisticsEnable!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.toolId != nil {
            map["toolId"] = self.toolId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exposedUriPath"] as? String {
            self.exposedUriPath = value
        }
        if let value = dict["mcpStatisticsEnable"] as? Bool {
            self.mcpStatisticsEnable = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["toolId"] as? String {
            self.toolId = value
        }
    }
}

public class MCPBackendConfig : Tea.TeaModel {
    public var scene: String?

    public var services: [MCPServiceConfig]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["services"] as? [Any?] {
            var tmp : [MCPServiceConfig] = []
            for v in value {
                if v != nil {
                    var model = MCPServiceConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
    }
}

public class MCPMatch : Tea.TeaModel {
    public var path: MCPPathMatch?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.path?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.path != nil {
            map["path"] = self.path?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["path"] as? [String: Any?] {
            var model = MCPPathMatch()
            model.fromMap(value)
            self.path = model
        }
    }
}

public class MCPPathMatch : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class MCPServerConfig : Tea.TeaModel {
    public var serverUrl: String?

    public var ssePath: String?

    public var transportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serverUrl != nil {
            map["serverUrl"] = self.serverUrl!
        }
        if self.ssePath != nil {
            map["ssePath"] = self.ssePath!
        }
        if self.transportType != nil {
            map["transportType"] = self.transportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serverUrl"] as? String {
            self.serverUrl = value
        }
        if let value = dict["ssePath"] as? String {
            self.ssePath = value
        }
        if let value = dict["transportType"] as? String {
            self.transportType = value
        }
    }
}

public class MCPServiceConfig : Tea.TeaModel {
    public var serviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
    }
}

public class MemoryCollection : Tea.TeaModel {
    public var createdAt: String?

    public var description_: String?

    public var embedderConfig: EmbedderConfig?

    public var executionRoleArn: String?

    public var lastUpdatedAt: String?

    public var llmConfig: LLMConfig?

    public var memoryCollectionId: String?

    public var memoryCollectionName: String?

    public var networkConfiguration: NetworkConfiguration?

    public var vectorStoreConfig: VectorStoreConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embedderConfig?.validate()
        try self.llmConfig?.validate()
        try self.networkConfiguration?.validate()
        try self.vectorStoreConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.embedderConfig != nil {
            map["embedderConfig"] = self.embedderConfig?.toMap()
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.llmConfig != nil {
            map["llmConfig"] = self.llmConfig?.toMap()
        }
        if self.memoryCollectionId != nil {
            map["memoryCollectionId"] = self.memoryCollectionId!
        }
        if self.memoryCollectionName != nil {
            map["memoryCollectionName"] = self.memoryCollectionName!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.vectorStoreConfig != nil {
            map["vectorStoreConfig"] = self.vectorStoreConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["embedderConfig"] as? [String: Any?] {
            var model = EmbedderConfig()
            model.fromMap(value)
            self.embedderConfig = model
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["llmConfig"] as? [String: Any?] {
            var model = LLMConfig()
            model.fromMap(value)
            self.llmConfig = model
        }
        if let value = dict["memoryCollectionId"] as? String {
            self.memoryCollectionId = value
        }
        if let value = dict["memoryCollectionName"] as? String {
            self.memoryCollectionName = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["vectorStoreConfig"] as? [String: Any?] {
            var model = VectorStoreConfig()
            model.fromMap(value)
            self.vectorStoreConfig = model
        }
    }
}

public class MemoryCollectionResult : Tea.TeaModel {
    public var code: String?

    public var data: MemoryCollection?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = MemoryCollection()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class Model : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var createdTime: String?

    public var desc: String?

    public var gatewayId: String?

    public var modelId: String?

    public var models: String?

    public var modelsWeight: String?

    public var name: String?

    public var provider: String?

    public var targetId: String?

    public var tenantId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.gatewayId != nil {
            map["gatewayId"] = self.gatewayId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.modelsWeight != nil {
            map["modelsWeight"] = self.modelsWeight!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.targetId != nil {
            map["targetId"] = self.targetId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["gatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["models"] as? String {
            self.models = value
        }
        if let value = dict["modelsWeight"] as? String {
            self.modelsWeight = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["targetId"] as? String {
            self.targetId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class ModelFeatures : Tea.TeaModel {
    public var agentThought: Bool?

    public var multiToolCall: Bool?

    public var streamToolCall: Bool?

    public var toolCall: Bool?

    public var vision: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentThought != nil {
            map["agentThought"] = self.agentThought!
        }
        if self.multiToolCall != nil {
            map["multiToolCall"] = self.multiToolCall!
        }
        if self.streamToolCall != nil {
            map["streamToolCall"] = self.streamToolCall!
        }
        if self.toolCall != nil {
            map["toolCall"] = self.toolCall!
        }
        if self.vision != nil {
            map["vision"] = self.vision!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentThought"] as? Bool {
            self.agentThought = value
        }
        if let value = dict["multiToolCall"] as? Bool {
            self.multiToolCall = value
        }
        if let value = dict["streamToolCall"] as? Bool {
            self.streamToolCall = value
        }
        if let value = dict["toolCall"] as? Bool {
            self.toolCall = value
        }
        if let value = dict["vision"] as? Bool {
            self.vision = value
        }
    }
}

public class ModelInfoConfig : Tea.TeaModel {
    public var modelFeatures: ModelFeatures?

    public var modelName: String?

    public var modelParameterRules: [ModelParameterRule]?

    public var modelProperties: ModelProperties?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modelFeatures?.validate()
        try self.modelProperties?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelFeatures != nil {
            map["modelFeatures"] = self.modelFeatures?.toMap()
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.modelParameterRules != nil {
            var tmp : [Any] = []
            for k in self.modelParameterRules! {
                tmp.append(k.toMap())
            }
            map["modelParameterRules"] = tmp
        }
        if self.modelProperties != nil {
            map["modelProperties"] = self.modelProperties?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelFeatures"] as? [String: Any?] {
            var model = ModelFeatures()
            model.fromMap(value)
            self.modelFeatures = model
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["modelParameterRules"] as? [Any?] {
            var tmp : [ModelParameterRule] = []
            for v in value {
                if v != nil {
                    var model = ModelParameterRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelParameterRules = tmp
        }
        if let value = dict["modelProperties"] as? [String: Any?] {
            var model = ModelProperties()
            model.fromMap(value)
            self.modelProperties = model
        }
    }
}

public class ModelParameterRule : Tea.TeaModel {
    public var default_: Any?

    public var max: Int32?

    public var min: Int32?

    public var name: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.default_ != nil {
            map["default"] = self.default_!
        }
        if self.max != nil {
            map["max"] = self.max!
        }
        if self.min != nil {
            map["min"] = self.min!
        }
        if self.name != nil {
            map["name"] = self.name!
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
        if let value = dict["default"] as? Any {
            self.default_ = value
        }
        if let value = dict["max"] as? Int32 {
            self.max = value
        }
        if let value = dict["min"] as? Int32 {
            self.min = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ModelProperties : Tea.TeaModel {
    public var contextSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contextSize != nil {
            map["contextSize"] = self.contextSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contextSize"] as? Int32 {
            self.contextSize = value
        }
    }
}

public class ModelProxy : Tea.TeaModel {
    public var cpu: Double?

    public var createdAt: String?

    public var credentialName: String?

    public var description_: String?

    public var endpoint: String?

    public var executionRoleArn: String?

    public var functionName: String?

    public var lastUpdatedAt: String?

    public var litellmVersion: String?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var modelProxyId: String?

    public var modelProxyName: String?

    public var modelType: String?

    public var networkConfiguration: NetworkConfiguration?

    public var proxyConfig: ProxyConfig?

    public var proxyMode: String?

    public var serviceRegionId: String?

    public var status: String?

    public var statusReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.proxyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.litellmVersion != nil {
            map["litellmVersion"] = self.litellmVersion!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.modelProxyId != nil {
            map["modelProxyId"] = self.modelProxyId!
        }
        if self.modelProxyName != nil {
            map["modelProxyName"] = self.modelProxyName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.proxyConfig != nil {
            map["proxyConfig"] = self.proxyConfig?.toMap()
        }
        if self.proxyMode != nil {
            map["proxyMode"] = self.proxyMode!
        }
        if self.serviceRegionId != nil {
            map["serviceRegionId"] = self.serviceRegionId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["litellmVersion"] as? String {
            self.litellmVersion = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["modelProxyId"] as? String {
            self.modelProxyId = value
        }
        if let value = dict["modelProxyName"] as? String {
            self.modelProxyName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["proxyConfig"] as? [String: Any?] {
            var model = ProxyConfig()
            model.fromMap(value)
            self.proxyConfig = model
        }
        if let value = dict["proxyMode"] as? String {
            self.proxyMode = value
        }
        if let value = dict["serviceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
    }
}

public class ModelProxyResult : Tea.TeaModel {
    public var code: String?

    public var data: ModelProxy?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelProxy()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModelService : Tea.TeaModel {
    public var createdAt: String?

    public var credentialName: String?

    public var description_: String?

    public var lastUpdatedAt: String?

    public var modelInfoConfigs: [ModelInfoConfig]?

    public var modelServiceId: String?

    public var modelServiceName: String?

    public var modelType: String?

    public var networkConfiguration: NetworkConfiguration?

    public var provider: String?

    public var providerSettings: ProviderSettings?

    public var status: String?

    public var statusReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
        try self.providerSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.modelInfoConfigs != nil {
            var tmp : [Any] = []
            for k in self.modelInfoConfigs! {
                tmp.append(k.toMap())
            }
            map["modelInfoConfigs"] = tmp
        }
        if self.modelServiceId != nil {
            map["modelServiceId"] = self.modelServiceId!
        }
        if self.modelServiceName != nil {
            map["modelServiceName"] = self.modelServiceName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["modelInfoConfigs"] as? [Any?] {
            var tmp : [ModelInfoConfig] = []
            for v in value {
                if v != nil {
                    var model = ModelInfoConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelInfoConfigs = tmp
        }
        if let value = dict["modelServiceId"] as? String {
            self.modelServiceId = value
        }
        if let value = dict["modelServiceName"] as? String {
            self.modelServiceName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["providerSettings"] as? [String: Any?] {
            var model = ProviderSettings()
            model.fromMap(value)
            self.providerSettings = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
    }
}

public class ModelServiceResult : Tea.TeaModel {
    public var code: String?

    public var data: ModelService?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelService()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class NASConfig : Tea.TeaModel {
    public var groupId: Int32?

    public var mountPoints: [NASMountConfig]?

    public var userId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["mountPoints"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? Int32 {
            self.groupId = value
        }
        if let value = dict["mountPoints"] as? [Any?] {
            var tmp : [NASMountConfig] = []
            for v in value {
                if v != nil {
                    var model = NASMountConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
        if let value = dict["userId"] as? Int32 {
            self.userId = value
        }
    }
}

public class NASMountConfig : Tea.TeaModel {
    public var enableTLS: Bool?

    public var mountDir: String?

    public var serverAddr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableTLS != nil {
            map["enableTLS"] = self.enableTLS!
        }
        if self.mountDir != nil {
            map["mountDir"] = self.mountDir!
        }
        if self.serverAddr != nil {
            map["serverAddr"] = self.serverAddr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enableTLS"] as? Bool {
            self.enableTLS = value
        }
        if let value = dict["mountDir"] as? String {
            self.mountDir = value
        }
        if let value = dict["serverAddr"] as? String {
            self.serverAddr = value
        }
    }
}

public class NetworkConfiguration : Tea.TeaModel {
    public var networkMode: String?

    public var securityGroupId: String?

    public var vpcId: String?

    public var vswitchIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkMode != nil {
            map["networkMode"] = self.networkMode!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.vswitchIds != nil {
            map["vswitchIds"] = self.vswitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["networkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["vswitchIds"] as? [String] {
            self.vswitchIds = value
        }
    }
}

public class OSSMountConfig : Tea.TeaModel {
    public var mountPoints: [OSSMountPoint]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["mountPoints"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mountPoints"] as? [Any?] {
            var tmp : [OSSMountPoint] = []
            for v in value {
                if v != nil {
                    var model = OSSMountPoint()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
    }
}

public class OSSMountPoint : Tea.TeaModel {
    public var bucketName: String?

    public var bucketPath: String?

    public var endpoint: String?

    public var mountDir: String?

    public var readOnly: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["bucketName"] = self.bucketName!
        }
        if self.bucketPath != nil {
            map["bucketPath"] = self.bucketPath!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.mountDir != nil {
            map["mountDir"] = self.mountDir!
        }
        if self.readOnly != nil {
            map["readOnly"] = self.readOnly!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["bucketPath"] as? String {
            self.bucketPath = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["mountDir"] as? String {
            self.mountDir = value
        }
        if let value = dict["readOnly"] as? Bool {
            self.readOnly = value
        }
    }
}

public class OssConfiguration : Tea.TeaModel {
    public var bucketName: String?

    public var mountPoint: String?

    public var permission: String?

    public var prefix_: String?

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
        if self.bucketName != nil {
            map["bucketName"] = self.bucketName!
        }
        if self.mountPoint != nil {
            map["mountPoint"] = self.mountPoint!
        }
        if self.permission != nil {
            map["permission"] = self.permission!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["mountPoint"] as? String {
            self.mountPoint = value
        }
        if let value = dict["permission"] as? String {
            self.permission = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class PaginationInfo : Tea.TeaModel {
    public var limit: Int32?

    public var page: Int32?

    public var total: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.totalPages != nil {
            map["totalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
        if let value = dict["totalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class PathConfig : Tea.TeaModel {
    public var agentRuntimeEndpointName: String?

    public var methods: [String]?

    public var path: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeEndpointName != nil {
            map["agentRuntimeEndpointName"] = self.agentRuntimeEndpointName!
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeEndpointName"] as? String {
            self.agentRuntimeEndpointName = value
        }
        if let value = dict["methods"] as? [String] {
            self.methods = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class PolarFsConfig : Tea.TeaModel {
    public var groupId: Int32?

    public var mountPoints: [PolarFsMountConfig]?

    public var userId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["mountPoints"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? Int32 {
            self.groupId = value
        }
        if let value = dict["mountPoints"] as? [Any?] {
            var tmp : [PolarFsMountConfig] = []
            for v in value {
                if v != nil {
                    var model = PolarFsMountConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
        if let value = dict["userId"] as? Int32 {
            self.userId = value
        }
    }
}

public class PolarFsMountConfig : Tea.TeaModel {
    public var instanceId: String?

    public var mountDir: String?

    public var remoteDir: String?

    public override init() {
        super.init()
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
        if self.mountDir != nil {
            map["mountDir"] = self.mountDir!
        }
        if self.remoteDir != nil {
            map["remoteDir"] = self.remoteDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["mountDir"] as? String {
            self.mountDir = value
        }
        if let value = dict["remoteDir"] as? String {
            self.remoteDir = value
        }
    }
}

public class PolicyConfig : Tea.TeaModel {
    public var aiFallbackConfig: AiFallbackConfig?

    public var enable: Bool?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aiFallbackConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiFallbackConfig != nil {
            map["aiFallbackConfig"] = self.aiFallbackConfig?.toMap()
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aiFallbackConfig"] as? [String: Any?] {
            var model = AiFallbackConfig()
            model.fromMap(value)
            self.aiFallbackConfig = model
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ProtocolConfiguration : Tea.TeaModel {
    public var protocolSettings: [ProtocolSettings]?

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
        if self.protocolSettings != nil {
            var tmp : [Any] = []
            for k in self.protocolSettings! {
                tmp.append(k.toMap())
            }
            map["protocolSettings"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["protocolSettings"] as? [Any?] {
            var tmp : [ProtocolSettings] = []
            for v in value {
                if v != nil {
                    var model = ProtocolSettings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protocolSettings = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ProtocolSettings : Tea.TeaModel {
    public var a2AAgentCard: String?

    public var headers: String?

    public var inputBodyJsonSchema: String?

    public var method: String?

    public var name: String?

    public var outputBodyJsonSchema: String?

    public var path: String?

    public var pathPrefix: String?

    public var requestContentType: String?

    public var responseContentType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.a2AAgentCard != nil {
            map["A2AAgentCard"] = self.a2AAgentCard!
        }
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.inputBodyJsonSchema != nil {
            map["inputBodyJsonSchema"] = self.inputBodyJsonSchema!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.outputBodyJsonSchema != nil {
            map["outputBodyJsonSchema"] = self.outputBodyJsonSchema!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.pathPrefix != nil {
            map["pathPrefix"] = self.pathPrefix!
        }
        if self.requestContentType != nil {
            map["requestContentType"] = self.requestContentType!
        }
        if self.responseContentType != nil {
            map["responseContentType"] = self.responseContentType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["A2AAgentCard"] as? String {
            self.a2AAgentCard = value
        }
        if let value = dict["headers"] as? String {
            self.headers = value
        }
        if let value = dict["inputBodyJsonSchema"] as? String {
            self.inputBodyJsonSchema = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["outputBodyJsonSchema"] as? String {
            self.outputBodyJsonSchema = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["pathPrefix"] as? String {
            self.pathPrefix = value
        }
        if let value = dict["requestContentType"] as? String {
            self.requestContentType = value
        }
        if let value = dict["responseContentType"] as? String {
            self.responseContentType = value
        }
    }
}

public class ProviderSettings : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var modelNames: [String]?

    public override init() {
        super.init()
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
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.modelNames != nil {
            map["modelNames"] = self.modelNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["modelNames"] as? [String] {
            self.modelNames = value
        }
    }
}

public class ProxyConfig : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public var baseUrl: String?

        public var modelNames: [String]?

        public var modelServiceName: String?

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
            if self.baseUrl != nil {
                map["baseUrl"] = self.baseUrl!
            }
            if self.modelNames != nil {
                map["modelNames"] = self.modelNames!
            }
            if self.modelServiceName != nil {
                map["modelServiceName"] = self.modelServiceName!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["baseUrl"] as? String {
                self.baseUrl = value
            }
            if let value = dict["modelNames"] as? [String] {
                self.modelNames = value
            }
            if let value = dict["modelServiceName"] as? String {
                self.modelServiceName = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class Policies : Tea.TeaModel {
        public class AiGuardrailConfig : Tea.TeaModel {
            public var blockOnContentModeration: Bool?

            public var blockOnMaliciousUrl: Bool?

            public var blockOnModelHallucination: Bool?

            public var blockOnPromptAttack: Bool?

            public var blockOnSensitiveData: Bool?

            public var checkRequest: Bool?

            public var checkResponse: Bool?

            public var level: String?

            public var maxTextLength: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockOnContentModeration != nil {
                    map["blockOnContentModeration"] = self.blockOnContentModeration!
                }
                if self.blockOnMaliciousUrl != nil {
                    map["blockOnMaliciousUrl"] = self.blockOnMaliciousUrl!
                }
                if self.blockOnModelHallucination != nil {
                    map["blockOnModelHallucination"] = self.blockOnModelHallucination!
                }
                if self.blockOnPromptAttack != nil {
                    map["blockOnPromptAttack"] = self.blockOnPromptAttack!
                }
                if self.blockOnSensitiveData != nil {
                    map["blockOnSensitiveData"] = self.blockOnSensitiveData!
                }
                if self.checkRequest != nil {
                    map["checkRequest"] = self.checkRequest!
                }
                if self.checkResponse != nil {
                    map["checkResponse"] = self.checkResponse!
                }
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.maxTextLength != nil {
                    map["maxTextLength"] = self.maxTextLength!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["blockOnContentModeration"] as? Bool {
                    self.blockOnContentModeration = value
                }
                if let value = dict["blockOnMaliciousUrl"] as? Bool {
                    self.blockOnMaliciousUrl = value
                }
                if let value = dict["blockOnModelHallucination"] as? Bool {
                    self.blockOnModelHallucination = value
                }
                if let value = dict["blockOnPromptAttack"] as? Bool {
                    self.blockOnPromptAttack = value
                }
                if let value = dict["blockOnSensitiveData"] as? Bool {
                    self.blockOnSensitiveData = value
                }
                if let value = dict["checkRequest"] as? Bool {
                    self.checkRequest = value
                }
                if let value = dict["checkResponse"] as? Bool {
                    self.checkResponse = value
                }
                if let value = dict["level"] as? String {
                    self.level = value
                }
                if let value = dict["maxTextLength"] as? Int32 {
                    self.maxTextLength = value
                }
            }
        }
        public class Fallbacks : Tea.TeaModel {
            public var modelName: String?

            public var modelServiceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                if self.modelServiceName != nil {
                    map["modelServiceName"] = self.modelServiceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["modelServiceName"] as? String {
                    self.modelServiceName = value
                }
            }
        }
        public class TokenRateLimiter : Tea.TeaModel {
            public var tpd: Int32?

            public var tph: Int32?

            public var tpm: Int32?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tpd != nil {
                    map["tpd"] = self.tpd!
                }
                if self.tph != nil {
                    map["tph"] = self.tph!
                }
                if self.tpm != nil {
                    map["tpm"] = self.tpm!
                }
                if self.tps != nil {
                    map["tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tpd"] as? Int32 {
                    self.tpd = value
                }
                if let value = dict["tph"] as? Int32 {
                    self.tph = value
                }
                if let value = dict["tpm"] as? Int32 {
                    self.tpm = value
                }
                if let value = dict["tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public var aiGuardrailConfig: ProxyConfig.Policies.AiGuardrailConfig?

        public var cache: Bool?

        public var concurrencyLimit: Int32?

        public var fallbacks: [ProxyConfig.Policies.Fallbacks]?

        public var numRetries: Int32?

        public var requestTimeout: Int32?

        public var tokenRateLimiter: ProxyConfig.Policies.TokenRateLimiter?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aiGuardrailConfig?.validate()
            try self.tokenRateLimiter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiGuardrailConfig != nil {
                map["aiGuardrailConfig"] = self.aiGuardrailConfig?.toMap()
            }
            if self.cache != nil {
                map["cache"] = self.cache!
            }
            if self.concurrencyLimit != nil {
                map["concurrencyLimit"] = self.concurrencyLimit!
            }
            if self.fallbacks != nil {
                var tmp : [Any] = []
                for k in self.fallbacks! {
                    tmp.append(k.toMap())
                }
                map["fallbacks"] = tmp
            }
            if self.numRetries != nil {
                map["numRetries"] = self.numRetries!
            }
            if self.requestTimeout != nil {
                map["requestTimeout"] = self.requestTimeout!
            }
            if self.tokenRateLimiter != nil {
                map["tokenRateLimiter"] = self.tokenRateLimiter?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aiGuardrailConfig"] as? [String: Any?] {
                var model = ProxyConfig.Policies.AiGuardrailConfig()
                model.fromMap(value)
                self.aiGuardrailConfig = model
            }
            if let value = dict["cache"] as? Bool {
                self.cache = value
            }
            if let value = dict["concurrencyLimit"] as? Int32 {
                self.concurrencyLimit = value
            }
            if let value = dict["fallbacks"] as? [Any?] {
                var tmp : [ProxyConfig.Policies.Fallbacks] = []
                for v in value {
                    if v != nil {
                        var model = ProxyConfig.Policies.Fallbacks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fallbacks = tmp
            }
            if let value = dict["numRetries"] as? Int32 {
                self.numRetries = value
            }
            if let value = dict["requestTimeout"] as? Int32 {
                self.requestTimeout = value
            }
            if let value = dict["tokenRateLimiter"] as? [String: Any?] {
                var model = ProxyConfig.Policies.TokenRateLimiter()
                model.fromMap(value)
                self.tokenRateLimiter = model
            }
        }
    }
    public var endpoints: [ProxyConfig.Endpoints]?

    public var policies: ProxyConfig.Policies?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["endpoints"] = tmp
        }
        if self.policies != nil {
            map["policies"] = self.policies?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endpoints"] as? [Any?] {
            var tmp : [ProxyConfig.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = ProxyConfig.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
        }
        if let value = dict["policies"] as? [String: Any?] {
            var model = ProxyConfig.Policies()
            model.fromMap(value)
            self.policies = model
        }
    }
}

public class PublishRuntimeVersionInput : Tea.TeaModel {
    public var description_: String?

    public var publisher: String?

    public override init() {
        super.init()
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
        if self.publisher != nil {
            map["publisher"] = self.publisher!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["publisher"] as? String {
            self.publisher = value
        }
    }
}

public class RecordingConfiguration : Tea.TeaModel {
    public var enabled: Bool?

    public var ossLocation: OssConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossLocation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.ossLocation != nil {
            map["ossLocation"] = self.ossLocation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["ossLocation"] as? [String: Any?] {
            var model = OssConfiguration()
            model.fromMap(value)
            self.ossLocation = model
        }
    }
}

public class RegisterServiceInput : Tea.TeaModel {
    public var credentialName: String?

    public var protocol_: String?

    public var resourceName: String?

    public var serviceBackendEndpoint: String?

    public var serviceName: String?

    public var serviceType: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.serviceBackendEndpoint != nil {
            map["serviceBackendEndpoint"] = self.serviceBackendEndpoint!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["serviceBackendEndpoint"] as? String {
            self.serviceBackendEndpoint = value
        }
        if let value = dict["serviceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RelatedResource : Tea.TeaModel {
    public var resourceId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class RelatedWorkload : Tea.TeaModel {
    public var resourceId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class RouteConfig : Tea.TeaModel {
    public var routes: [PathConfig]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["routes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["routes"] as? [Any?] {
            var tmp : [PathConfig] = []
            for v in value {
                if v != nil {
                    var model = PathConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routes = tmp
        }
    }
}

public class RoutingConfiguration : Tea.TeaModel {
    public var versionWeights: [VersionWeight]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.versionWeights != nil {
            var tmp : [Any] = []
            for k in self.versionWeights! {
                tmp.append(k.toMap())
            }
            map["versionWeights"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["versionWeights"] as? [Any?] {
            var tmp : [VersionWeight] = []
            for v in value {
                if v != nil {
                    var model = VersionWeight()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versionWeights = tmp
        }
    }
}

public class Sandbox : Tea.TeaModel {
    public var createdAt: String?

    public var endedAt: String?

    public var lastUpdatedAt: String?

    public var metadata: [String: Any]?

    public var sandboxArn: String?

    public var sandboxId: String?

    public var sandboxIdleTTLInSeconds: Int32?

    public var sandboxIdleTimeoutSeconds: Int32?

    public var status: String?

    public var templateId: String?

    public var templateName: String?

    public override init() {
        super.init()
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
        if self.endedAt != nil {
            map["endedAt"] = self.endedAt!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.sandboxArn != nil {
            map["sandboxArn"] = self.sandboxArn!
        }
        if self.sandboxId != nil {
            map["sandboxId"] = self.sandboxId!
        }
        if self.sandboxIdleTTLInSeconds != nil {
            map["sandboxIdleTTLInSeconds"] = self.sandboxIdleTTLInSeconds!
        }
        if self.sandboxIdleTimeoutSeconds != nil {
            map["sandboxIdleTimeoutSeconds"] = self.sandboxIdleTimeoutSeconds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["endedAt"] as? String {
            self.endedAt = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["sandboxArn"] as? String {
            self.sandboxArn = value
        }
        if let value = dict["sandboxId"] as? String {
            self.sandboxId = value
        }
        if let value = dict["sandboxIdleTTLInSeconds"] as? Int32 {
            self.sandboxIdleTTLInSeconds = value
        }
        if let value = dict["sandboxIdleTimeoutSeconds"] as? Int32 {
            self.sandboxIdleTimeoutSeconds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
    }
}

public class SandboxHealthCheckOut : Tea.TeaModel {
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
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class SandboxHealthCheckResult : Tea.TeaModel {
    public var code: String?

    public var data: SandboxHealthCheckOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SandboxHealthCheckOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class SandboxResult : Tea.TeaModel {
    public var code: String?

    public var data: Sandbox?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Sandbox()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ServiceConfig : Tea.TeaModel {
    public var aiServiceConfig: AiServiceConfig?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aiServiceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiServiceConfig != nil {
            map["aiServiceConfig"] = self.aiServiceConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aiServiceConfig"] as? [String: Any?] {
            var model = AiServiceConfig()
            model.fromMap(value)
            self.aiServiceConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ServiceResult : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartBrowserSessionInput : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class StartBrowserSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: BrowserSessionOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BrowserSessionOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartCodeInterpreterSessionInput : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class StartCodeInterpreterSessionResult : Tea.TeaModel {
    public var code: String?

    public var data: CodeInterpreterSessionOut?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CodeInterpreterSessionOut()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopCodeInterpreterSessionResult : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopSandboxResult : Tea.TeaModel {
    public var code: String?

    public var data: Sandbox?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Sandbox()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class TLSConfig : Tea.TeaModel {
    public var cipherSuites: [String]?

    public var maxVersion: String?

    public var minVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cipherSuites != nil {
            map["cipherSuites"] = self.cipherSuites!
        }
        if self.maxVersion != nil {
            map["maxVersion"] = self.maxVersion!
        }
        if self.minVersion != nil {
            map["minVersion"] = self.minVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cipherSuites"] as? [String] {
            self.cipherSuites = value
        }
        if let value = dict["maxVersion"] as? String {
            self.maxVersion = value
        }
        if let value = dict["minVersion"] as? String {
            self.minVersion = value
        }
    }
}

public class Target : Tea.TeaModel {
    public var llmConfig: LLMAPIConfiguration?

    public var mcpAPI: MCPAPI?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.llmConfig?.validate()
        try self.mcpAPI?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.llmConfig != nil {
            map["llmConfig"] = self.llmConfig?.toMap()
        }
        if self.mcpAPI != nil {
            map["mcpAPI"] = self.mcpAPI?.toMap()
        }
        if self.targetType != nil {
            map["targetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["llmConfig"] as? [String: Any?] {
            var model = LLMAPIConfiguration()
            model.fromMap(value)
            self.llmConfig = model
        }
        if let value = dict["mcpAPI"] as? [String: Any?] {
            var model = MCPAPI()
            model.fromMap(value)
            self.mcpAPI = model
        }
        if let value = dict["targetType"] as? String {
            self.targetType = value
        }
    }
}

public class TargetConfiguration : Tea.TeaModel {
    public var llmAPIConfig: LLMAPIConfiguration?

    public var mcpAPIConfig: MCPAPIConfiguration?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.llmAPIConfig?.validate()
        try self.mcpAPIConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.llmAPIConfig != nil {
            map["llmAPIConfig"] = self.llmAPIConfig?.toMap()
        }
        if self.mcpAPIConfig != nil {
            map["mcpAPIConfig"] = self.mcpAPIConfig?.toMap()
        }
        if self.targetType != nil {
            map["targetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["llmAPIConfig"] as? [String: Any?] {
            var model = LLMAPIConfiguration()
            model.fromMap(value)
            self.llmAPIConfig = model
        }
        if let value = dict["mcpAPIConfig"] as? [String: Any?] {
            var model = MCPAPIConfiguration()
            model.fromMap(value)
            self.mcpAPIConfig = model
        }
        if let value = dict["targetType"] as? String {
            self.targetType = value
        }
    }
}

public class TargetServiceConfig : Tea.TeaModel {
    public var modelId: String?

    public var modelName: String?

    public var modelNamePattern: String?

    public var weight: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.modelNamePattern != nil {
            map["modelNamePattern"] = self.modelNamePattern!
        }
        if self.weight != nil {
            map["weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["modelNamePattern"] as? String {
            self.modelNamePattern = value
        }
        if let value = dict["weight"] as? Int64 {
            self.weight = value
        }
    }
}

public class Template : Tea.TeaModel {
    public class McpOptions : Tea.TeaModel {
        public var enabledTools: [String]?

        public var transport: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabledTools != nil {
                map["enabledTools"] = self.enabledTools!
            }
            if self.transport != nil {
                map["transport"] = self.transport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enabledTools"] as? [String] {
                self.enabledTools = value
            }
            if let value = dict["transport"] as? String {
                self.transport = value
            }
        }
    }
    public class McpState : Tea.TeaModel {
        public var accessEndpoint: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessEndpoint != nil {
                map["accessEndpoint"] = self.accessEndpoint!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessEndpoint"] as? String {
                self.accessEndpoint = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
        }
    }
    public var allowAnonymousManage: Bool?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var createdAt: String?

    public var credentialConfiguration: CredentialConfiguration?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var lastUpdatedAt: String?

    public var logConfiguration: LogConfiguration?

    public var mcpOptions: Template.McpOptions?

    public var mcpState: Template.McpState?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var ossConfiguration: [OssConfiguration]?

    public var resourceName: String?

    public var sandboxIdleTimeoutInSeconds: String?

    public var sandboxTTLInSeconds: String?

    public var status: String?

    public var statusReason: String?

    public var templateArn: String?

    public var templateConfiguration: [String: Any]?

    public var templateId: String?

    public var templateName: String?

    public var templateType: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerConfiguration?.validate()
        try self.credentialConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.mcpOptions?.validate()
        try self.mcpState?.validate()
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowAnonymousManage != nil {
            map["allowAnonymousManage"] = self.allowAnonymousManage!
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.credentialConfiguration != nil {
            map["credentialConfiguration"] = self.credentialConfiguration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.lastUpdatedAt != nil {
            map["lastUpdatedAt"] = self.lastUpdatedAt!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.mcpOptions != nil {
            map["mcpOptions"] = self.mcpOptions?.toMap()
        }
        if self.mcpState != nil {
            map["mcpState"] = self.mcpState?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.ossConfiguration != nil {
            var tmp : [Any] = []
            for k in self.ossConfiguration! {
                tmp.append(k.toMap())
            }
            map["ossConfiguration"] = tmp
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.sandboxIdleTimeoutInSeconds != nil {
            map["sandboxIdleTimeoutInSeconds"] = self.sandboxIdleTimeoutInSeconds!
        }
        if self.sandboxTTLInSeconds != nil {
            map["sandboxTTLInSeconds"] = self.sandboxTTLInSeconds!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.templateArn != nil {
            map["templateArn"] = self.templateArn!
        }
        if self.templateConfiguration != nil {
            map["templateConfiguration"] = self.templateConfiguration!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowAnonymousManage"] as? Bool {
            self.allowAnonymousManage = value
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialConfiguration"] as? [String: Any?] {
            var model = CredentialConfiguration()
            model.fromMap(value)
            self.credentialConfiguration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["lastUpdatedAt"] as? String {
            self.lastUpdatedAt = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["mcpOptions"] as? [String: Any?] {
            var model = Template.McpOptions()
            model.fromMap(value)
            self.mcpOptions = model
        }
        if let value = dict["mcpState"] as? [String: Any?] {
            var model = Template.McpState()
            model.fromMap(value)
            self.mcpState = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["ossConfiguration"] as? [Any?] {
            var tmp : [OssConfiguration] = []
            for v in value {
                if v != nil {
                    var model = OssConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ossConfiguration = tmp
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["sandboxIdleTimeoutInSeconds"] as? String {
            self.sandboxIdleTimeoutInSeconds = value
        }
        if let value = dict["sandboxTTLInSeconds"] as? String {
            self.sandboxTTLInSeconds = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["templateArn"] as? String {
            self.templateArn = value
        }
        if let value = dict["templateConfiguration"] as? [String: Any] {
            self.templateConfiguration = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
        }
        if let value = dict["templateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class TemplateResult : Tea.TeaModel {
    public var code: String?

    public var data: Template?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Template()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ToolInfo : Tea.TeaModel {
    public var CAPConfig: CAPConfig?

    public var createdAt: String?

    public var description_: String?

    public var id: String?

    public var name: String?

    public var schema: String?

    public var sourceType: String?

    public var toolType: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CAPConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAPConfig != nil {
            map["CAPConfig"] = self.CAPConfig?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.toolType != nil {
            map["toolType"] = self.toolType!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAPConfig"] as? [String: Any?] {
            var model = CAPConfig()
            model.fromMap(value)
            self.CAPConfig = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schema"] as? String {
            self.schema = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["toolType"] as? String {
            self.toolType = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class ToolListItem : Tea.TeaModel {
    public var CAPConfig: CAPConfig?

    public var createdAt: String?

    public var description_: String?

    public var id: String?

    public var name: String?

    public var schema: String?

    public var sourceType: String?

    public var toolType: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CAPConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAPConfig != nil {
            map["CAPConfig"] = self.CAPConfig?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.toolType != nil {
            map["toolType"] = self.toolType!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAPConfig"] as? [String: Any?] {
            var model = CAPConfig()
            model.fromMap(value)
            self.CAPConfig = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schema"] as? String {
            self.schema = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["toolType"] as? String {
            self.toolType = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class TriggerConfig : Tea.TeaModel {
    public var authType: String?

    public var methods: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["methods"] as? [String] {
            self.methods = value
        }
    }
}

public class UpdateAgentRuntimeEndpointInput : Tea.TeaModel {
    public var agentRuntimeEndpointName: String?

    public var description_: String?

    public var routingConfiguration: RoutingConfiguration?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routingConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeEndpointName != nil {
            map["agentRuntimeEndpointName"] = self.agentRuntimeEndpointName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.routingConfiguration != nil {
            map["routingConfiguration"] = self.routingConfiguration?.toMap()
        }
        if self.targetVersion != nil {
            map["targetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeEndpointName"] as? String {
            self.agentRuntimeEndpointName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["routingConfiguration"] as? [String: Any?] {
            var model = RoutingConfiguration()
            model.fromMap(value)
            self.routingConfiguration = model
        }
        if let value = dict["targetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class UpdateAgentRuntimeInput : Tea.TeaModel {
    public var agentRuntimeName: String?

    public var artifactType: String?

    public var codeConfiguration: CodeConfiguration?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var credentialName: String?

    public var description_: String?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var healthCheckConfiguration: HealthCheckConfiguration?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var port: Int32?

    public var protocolConfiguration: ProtocolConfiguration?

    public var sessionConcurrencyLimitPerInstance: Int32?

    public var sessionIdleTimeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeConfiguration?.validate()
        try self.containerConfiguration?.validate()
        try self.healthCheckConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.protocolConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.artifactType != nil {
            map["artifactType"] = self.artifactType!
        }
        if self.codeConfiguration != nil {
            map["codeConfiguration"] = self.codeConfiguration?.toMap()
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.healthCheckConfiguration != nil {
            map["healthCheckConfiguration"] = self.healthCheckConfiguration?.toMap()
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        if self.protocolConfiguration != nil {
            map["protocolConfiguration"] = self.protocolConfiguration?.toMap()
        }
        if self.sessionConcurrencyLimitPerInstance != nil {
            map["sessionConcurrencyLimitPerInstance"] = self.sessionConcurrencyLimitPerInstance!
        }
        if self.sessionIdleTimeoutSeconds != nil {
            map["sessionIdleTimeoutSeconds"] = self.sessionIdleTimeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["artifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["codeConfiguration"] as? [String: Any?] {
            var model = CodeConfiguration()
            model.fromMap(value)
            self.codeConfiguration = model
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["healthCheckConfiguration"] as? [String: Any?] {
            var model = HealthCheckConfiguration()
            model.fromMap(value)
            self.healthCheckConfiguration = model
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
        }
        if let value = dict["protocolConfiguration"] as? [String: Any?] {
            var model = ProtocolConfiguration()
            model.fromMap(value)
            self.protocolConfiguration = model
        }
        if let value = dict["sessionConcurrencyLimitPerInstance"] as? Int32 {
            self.sessionConcurrencyLimitPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutSeconds"] as? Int32 {
            self.sessionIdleTimeoutSeconds = value
        }
    }
}

public class UpdateApigLLMModelInput : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var desc: String?

    public var models: [String]?

    public var name: String?

    public var provider: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["models"] as? [String] {
            self.models = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class UpdateCredentialInput : Tea.TeaModel {
    public var credentialPublicConfig: CredentialPublicConfig?

    public var credentialSecret: String?

    public var description_: String?

    public var enabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialPublicConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig?.toMap()
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialPublicConfig"] as? [String: Any?] {
            var model = CredentialPublicConfig()
            model.fromMap(value)
            self.credentialPublicConfig = model
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class UpdateCredentialOutput : Tea.TeaModel {
    public var createdAt: String?

    public var credentialAuthType: String?

    public var credentialId: String?

    public var credentialName: String?

    public var credentialPublicConfig: [String: String]?

    public var credentialSecret: String?

    public var credentialSourceType: String?

    public var description_: String?

    public var enabled: Bool?

    public var relatedResources: [RelatedResource]?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialPublicConfig != nil {
            map["credentialPublicConfig"] = self.credentialPublicConfig!
        }
        if self.credentialSecret != nil {
            map["credentialSecret"] = self.credentialSecret!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.relatedResources != nil {
            var tmp : [Any] = []
            for k in self.relatedResources! {
                tmp.append(k.toMap())
            }
            map["relatedResources"] = tmp
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialPublicConfig"] as? [String: String] {
            self.credentialPublicConfig = value
        }
        if let value = dict["credentialSecret"] as? String {
            self.credentialSecret = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["relatedResources"] as? [Any?] {
            var tmp : [RelatedResource] = []
            for v in value {
                if v != nil {
                    var model = RelatedResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedResources = tmp
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class UpdateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var description_: String?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var tlsConfig: TLSConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.routeConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.routeConfig != nil {
            map["routeConfig"] = self.routeConfig?.toMap()
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["routeConfig"] as? [String: Any?] {
            var model = RouteConfig()
            model.fromMap(value)
            self.routeConfig = model
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
    }
}

public class UpdateDomainInput : Tea.TeaModel {
    public var certIdentifier: String?

    public var protocol_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["certIdentifier"] = self.certIdentifier!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
    }
}

public class UpdateKnowledgeBaseInput : Tea.TeaModel {
    public var credentialName: String?

    public var description_: String?

    public var providerSettings: [String: Any]?

    public var retrieveSettings: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings!
        }
        if self.retrieveSettings != nil {
            map["retrieveSettings"] = self.retrieveSettings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["providerSettings"] as? [String: Any] {
            self.providerSettings = value
        }
        if let value = dict["retrieveSettings"] as? [String: Any] {
            self.retrieveSettings = value
        }
    }
}

public class UpdateMemoryCollectionInput : Tea.TeaModel {
    public var description_: String?

    public var embedderConfig: EmbedderConfig?

    public var executionRoleArn: String?

    public var llmConfig: LLMConfig?

    public var networkConfiguration: NetworkConfiguration?

    public var vectorStoreConfig: VectorStoreConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.embedderConfig?.validate()
        try self.llmConfig?.validate()
        try self.networkConfiguration?.validate()
        try self.vectorStoreConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.embedderConfig != nil {
            map["embedderConfig"] = self.embedderConfig?.toMap()
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.llmConfig != nil {
            map["llmConfig"] = self.llmConfig?.toMap()
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.vectorStoreConfig != nil {
            map["vectorStoreConfig"] = self.vectorStoreConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["embedderConfig"] as? [String: Any?] {
            var model = EmbedderConfig()
            model.fromMap(value)
            self.embedderConfig = model
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["llmConfig"] as? [String: Any?] {
            var model = LLMConfig()
            model.fromMap(value)
            self.llmConfig = model
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["vectorStoreConfig"] as? [String: Any?] {
            var model = VectorStoreConfig()
            model.fromMap(value)
            self.vectorStoreConfig = model
        }
    }
}

public class UpdateModelInput : Tea.TeaModel {
    public var address: String?

    public var apiKey: String?

    public var desc: String?

    public var models: [String]?

    public var name: String?

    public var provider: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.models != nil {
            map["models"] = self.models!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["models"] as? [String] {
            self.models = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class UpdateModelProxyInput : Tea.TeaModel {
    public var armsConfiguration: ArmsConfiguration?

    public var credentialName: String?

    public var description_: String?

    public var executionRoleArn: String?

    public var logConfiguration: LogConfiguration?

    public var networkConfiguration: NetworkConfiguration?

    public var proxyConfig: ProxyConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.armsConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
        try self.proxyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.armsConfiguration != nil {
            map["armsConfiguration"] = self.armsConfiguration?.toMap()
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.proxyConfig != nil {
            map["proxyConfig"] = self.proxyConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["armsConfiguration"] as? [String: Any?] {
            var model = ArmsConfiguration()
            model.fromMap(value)
            self.armsConfiguration = model
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["proxyConfig"] as? [String: Any?] {
            var model = ProxyConfig()
            model.fromMap(value)
            self.proxyConfig = model
        }
    }
}

public class UpdateModelServiceInput : Tea.TeaModel {
    public var credentialName: String?

    public var description_: String?

    public var modelInfoConfigs: [ModelInfoConfig]?

    public var networkConfiguration: NetworkConfiguration?

    public var providerSettings: ProviderSettings?

    public var status: String?

    public var statusReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfiguration?.validate()
        try self.providerSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.modelInfoConfigs != nil {
            var tmp : [Any] = []
            for k in self.modelInfoConfigs! {
                tmp.append(k.toMap())
            }
            map["modelInfoConfigs"] = tmp
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.providerSettings != nil {
            map["providerSettings"] = self.providerSettings?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["modelInfoConfigs"] as? [Any?] {
            var tmp : [ModelInfoConfig] = []
            for v in value {
                if v != nil {
                    var model = ModelInfoConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelInfoConfigs = tmp
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["providerSettings"] as? [String: Any?] {
            var model = ProviderSettings()
            model.fromMap(value)
            self.providerSettings = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
    }
}

public class UpdateTargetConfigurationInput : Tea.TeaModel {
    public var domainId: String?

    public var targetConfiguration: TargetConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.targetConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["domainId"] = self.domainId!
        }
        if self.targetConfiguration != nil {
            map["targetConfiguration"] = self.targetConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainId"] as? String {
            self.domainId = value
        }
        if let value = dict["targetConfiguration"] as? [String: Any?] {
            var model = TargetConfiguration()
            model.fromMap(value)
            self.targetConfiguration = model
        }
    }
}

public class UpdateTemplateInput : Tea.TeaModel {
    public var allowAnonymousManage: Bool?

    public var armsConfiguration: ArmsConfiguration?

    public var containerConfiguration: ContainerConfiguration?

    public var cpu: Double?

    public var credentialConfiguration: CredentialConfiguration?

    public var description_: String?

    public var environmentVariables: [String: String]?

    public var executionRoleArn: String?

    public var logConfiguration: LogConfiguration?

    public var memory: Int32?

    public var networkConfiguration: NetworkConfiguration?

    public var ossConfiguration: [OssConfiguration]?

    public var sandboxIdleTimeoutInSeconds: Int32?

    public var sandboxTTLInSeconds: Int32?

    public var templateConfiguration: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.armsConfiguration?.validate()
        try self.containerConfiguration?.validate()
        try self.credentialConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowAnonymousManage != nil {
            map["allowAnonymousManage"] = self.allowAnonymousManage!
        }
        if self.armsConfiguration != nil {
            map["armsConfiguration"] = self.armsConfiguration?.toMap()
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.credentialConfiguration != nil {
            map["credentialConfiguration"] = self.credentialConfiguration?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.executionRoleArn != nil {
            map["executionRoleArn"] = self.executionRoleArn!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.ossConfiguration != nil {
            var tmp : [Any] = []
            for k in self.ossConfiguration! {
                tmp.append(k.toMap())
            }
            map["ossConfiguration"] = tmp
        }
        if self.sandboxIdleTimeoutInSeconds != nil {
            map["sandboxIdleTimeoutInSeconds"] = self.sandboxIdleTimeoutInSeconds!
        }
        if self.sandboxTTLInSeconds != nil {
            map["sandboxTTLInSeconds"] = self.sandboxTTLInSeconds!
        }
        if self.templateConfiguration != nil {
            map["templateConfiguration"] = self.templateConfiguration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowAnonymousManage"] as? Bool {
            self.allowAnonymousManage = value
        }
        if let value = dict["armsConfiguration"] as? [String: Any?] {
            var model = ArmsConfiguration()
            model.fromMap(value)
            self.armsConfiguration = model
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["credentialConfiguration"] as? [String: Any?] {
            var model = CredentialConfiguration()
            model.fromMap(value)
            self.credentialConfiguration = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["executionRoleArn"] as? String {
            self.executionRoleArn = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["ossConfiguration"] as? [Any?] {
            var tmp : [OssConfiguration] = []
            for v in value {
                if v != nil {
                    var model = OssConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ossConfiguration = tmp
        }
        if let value = dict["sandboxIdleTimeoutInSeconds"] as? Int32 {
            self.sandboxIdleTimeoutInSeconds = value
        }
        if let value = dict["sandboxTTLInSeconds"] as? Int32 {
            self.sandboxTTLInSeconds = value
        }
        if let value = dict["templateConfiguration"] as? [String: Any] {
            self.templateConfiguration = value
        }
    }
}

public class UpdateToolData : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var sourceType: String?

    public var toolType: String?

    public var updatedAt: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.toolType != nil {
            map["toolType"] = self.toolType!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["toolType"] as? String {
            self.toolType = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class UpdateToolInput : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var schema: String?

    public override init() {
        super.init()
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
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["schema"] as? String {
            self.schema = value
        }
    }
}

public class UpdateToolOutput : Tea.TeaModel {
    public var data: UpdateToolData?

    public var message: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateToolData()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class VectorStoreConfig : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var collectionName: String?

        public var endpoint: String?

        public var instanceName: String?

        public var vectorDimension: Int32?

        public override init() {
            super.init()
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
                map["collectionName"] = self.collectionName!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.vectorDimension != nil {
                map["vectorDimension"] = self.vectorDimension!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["collectionName"] as? String {
                self.collectionName = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["vectorDimension"] as? Int32 {
                self.vectorDimension = value
            }
        }
    }
    public var config: VectorStoreConfig.Config?

    public var provider: String?

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
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = VectorStoreConfig.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class VersionWeight : Tea.TeaModel {
    public var version: String?

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
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.weight != nil {
            map["weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["weight"] as? Double {
            self.weight = value
        }
    }
}

public class ViewPortConfiguration : Tea.TeaModel {
    public var height: Double?

    public var width: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.height != nil {
            map["height"] = self.height!
        }
        if self.width != nil {
            map["width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["height"] as? Double {
            self.height = value
        }
        if let value = dict["width"] as? Double {
            self.width = value
        }
    }
}

public class ActivateTemplateMCPRequest : Tea.TeaModel {
    public var enabledTools: [String]?

    public var transport: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabledTools != nil {
            map["enabledTools"] = self.enabledTools!
        }
        if self.transport != nil {
            map["transport"] = self.transport!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabledTools"] as? [String] {
            self.enabledTools = value
        }
        if let value = dict["transport"] as? String {
            self.transport = value
        }
    }
}

public class ActivateTemplateMCPResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentRuntimeRequest : Tea.TeaModel {
    public var body: CreateAgentRuntimeInput?

    public override init() {
        super.init()
    }

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
            var model = CreateAgentRuntimeInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentRuntimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentRuntimeEndpointRequest : Tea.TeaModel {
    public var body: CreateAgentRuntimeEndpointInput?

    public override init() {
        super.init()
    }

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
            var model = CreateAgentRuntimeEndpointInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentRuntimeEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeEndpointResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeEndpointResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBrowserRequest : Tea.TeaModel {
    public var body: CreateBrowserInput?

    public override init() {
        super.init()
    }

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
            var model = CreateBrowserInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBrowserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BrowserResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BrowserResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCodeInterpreterRequest : Tea.TeaModel {
    public var body: CreateCodeInterpreterInput?

    public override init() {
        super.init()
    }

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
            var model = CreateCodeInterpreterInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCodeInterpreterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CodeInterpreterResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CodeInterpreterResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCredentialRequest : Tea.TeaModel {
    public var body: CreateCredentialInput?

    public override init() {
        super.init()
    }

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
            var model = CreateCredentialInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomDomainRequest : Tea.TeaModel {
    public var body: CreateCustomDomainInput?

    public override init() {
        super.init()
    }

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
            var model = CreateCustomDomainInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomainResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomainResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseRequest : Tea.TeaModel {
    public var body: CreateKnowledgeBaseInput?

    public override init() {
        super.init()
    }

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
            var model = CreateKnowledgeBaseInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KnowledgeBaseResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = KnowledgeBaseResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryCollectionRequest : Tea.TeaModel {
    public var body: CreateMemoryCollectionInput?

    public override init() {
        super.init()
    }

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
            var model = CreateMemoryCollectionInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemoryCollectionResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MemoryCollectionResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelProxyRequest : Tea.TeaModel {
    public var body: CreateModelProxyInput?

    public override init() {
        super.init()
    }

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
            var model = CreateModelProxyInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelProxyResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelProxyResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelServiceRequest : Tea.TeaModel {
    public var body: CreateModelServiceInput?

    public override init() {
        super.init()
    }

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
            var model = CreateModelServiceInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelServiceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelServiceResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSandboxRequest : Tea.TeaModel {
    public var body: CreateSandboxInput?

    public override init() {
        super.init()
    }

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
            var model = CreateSandboxInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSandboxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SandboxResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SandboxResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var body: CreateTemplateInput?

    public override init() {
        super.init()
    }

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
            var model = CreateTemplateInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentRuntimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentRuntimeEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeEndpointResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeEndpointResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBrowserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBrowserResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBrowserResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCodeInterpreterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCodeInterpreterResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteCodeInterpreterResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomainResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomainResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KnowledgeBaseResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = KnowledgeBaseResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMemoryCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemoryCollectionResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MemoryCollectionResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelProxyResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteModelProxyResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelServiceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteModelServiceResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSandboxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSandboxResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSandboxResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessTokenRequest : Tea.TeaModel {
    public var resourceId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetAccessTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: GetAccessTokenResponseBody.Data?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAccessTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentRuntimeRequest : Tea.TeaModel {
    public var agentRuntimeVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentRuntimeVersion != nil {
            map["agentRuntimeVersion"] = self.agentRuntimeVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeVersion"] as? String {
            self.agentRuntimeVersion = value
        }
    }
}

public class GetAgentRuntimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentRuntimeEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeEndpointResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeEndpointResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBrowserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BrowserResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BrowserResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCodeInterpreterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CodeInterpreterResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CodeInterpreterResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomainResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomainResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KnowledgeBaseResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = KnowledgeBaseResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMemoryCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemoryCollectionResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MemoryCollectionResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelProxyResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelProxyResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelServiceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelServiceResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSandboxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SandboxResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SandboxResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentRuntimeEndpointsRequest : Tea.TeaModel {
    public var endpointName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointName != nil {
            map["endpointName"] = self.endpointName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.searchMode != nil {
            map["searchMode"] = self.searchMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["searchMode"] as? String {
            self.searchMode = value
        }
    }
}

public class ListAgentRuntimeEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentRuntimeEndpointsResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAgentRuntimeEndpointsResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentRuntimeVersionsRequest : Tea.TeaModel {
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

public class ListAgentRuntimeVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentRuntimeVersionsResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAgentRuntimeVersionsResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentRuntimesRequest : Tea.TeaModel {
    public var agentRuntimeName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchMode: String?

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
        if self.agentRuntimeName != nil {
            map["agentRuntimeName"] = self.agentRuntimeName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.searchMode != nil {
            map["searchMode"] = self.searchMode!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentRuntimeName"] as? String {
            self.agentRuntimeName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["searchMode"] as? String {
            self.searchMode = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListAgentRuntimesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentRuntimesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAgentRuntimesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBrowsersRequest : Tea.TeaModel {
    public var browserName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.browserName != nil {
            map["browserName"] = self.browserName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["browserName"] as? String {
            self.browserName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListBrowsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBrowsersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListBrowsersResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCodeInterpretersRequest : Tea.TeaModel {
    public var codeInterpreterName: String?

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
        if self.codeInterpreterName != nil {
            map["codeInterpreterName"] = self.codeInterpreterName!
        }
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
        if let value = dict["codeInterpreterName"] as? String {
            self.codeInterpreterName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListCodeInterpretersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCodeInterpretersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCodeInterpretersResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCredentialsRequest : Tea.TeaModel {
    public var credentialAuthType: String?

    public var credentialName: String?

    public var credentialSourceType: String?

    public var enabled: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialAuthType != nil {
            map["credentialAuthType"] = self.credentialAuthType!
        }
        if self.credentialName != nil {
            map["credentialName"] = self.credentialName!
        }
        if self.credentialSourceType != nil {
            map["credentialSourceType"] = self.credentialSourceType!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialAuthType"] as? String {
            self.credentialAuthType = value
        }
        if let value = dict["credentialName"] as? String {
            self.credentialName = value
        }
        if let value = dict["credentialSourceType"] as? String {
            self.credentialSourceType = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class ListCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCredentialsResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCredentialsResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomDomainsRequest : Tea.TeaModel {
    public var domainName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListCustomDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomDomainsResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCustomDomainsResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBasesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public override init() {
        super.init()
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
        if self.provider != nil {
            map["provider"] = self.provider!
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
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class ListKnowledgeBasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKnowledgeBasesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListKnowledgeBasesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMemoryCollectionsRequest : Tea.TeaModel {
    public var memoryCollectionName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.memoryCollectionName != nil {
            map["memoryCollectionName"] = self.memoryCollectionName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
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
        if let value = dict["memoryCollectionName"] as? String {
            self.memoryCollectionName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListMemoryCollectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoryCollectionsResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMemoryCollectionsResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelProvidersRequest : Tea.TeaModel {
    public var modelName: String?

    public var modelType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class ListModelProvidersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var baseUrl: String?

            public var modelInfoConfig: ModelInfoConfig?

            public var modelType: String?

            public var models: [String]?

            public var providerName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.modelInfoConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseUrl != nil {
                    map["baseUrl"] = self.baseUrl!
                }
                if self.modelInfoConfig != nil {
                    map["modelInfoConfig"] = self.modelInfoConfig?.toMap()
                }
                if self.modelType != nil {
                    map["modelType"] = self.modelType!
                }
                if self.models != nil {
                    map["models"] = self.models!
                }
                if self.providerName != nil {
                    map["providerName"] = self.providerName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["baseUrl"] as? String {
                    self.baseUrl = value
                }
                if let value = dict["modelInfoConfig"] as? [String: Any?] {
                    var model = ModelInfoConfig()
                    model.fromMap(value)
                    self.modelInfoConfig = model
                }
                if let value = dict["modelType"] as? String {
                    self.modelType = value
                }
                if let value = dict["models"] as? [String] {
                    self.models = value
                }
                if let value = dict["providerName"] as? String {
                    self.providerName = value
                }
            }
        }
        public var items: [ListModelProvidersResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [ListModelProvidersResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListModelProvidersResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: ListModelProvidersResponseBody.Data?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListModelProvidersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListModelProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelProxiesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var proxyMode: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.proxyMode != nil {
            map["proxyMode"] = self.proxyMode!
        }
        if self.status != nil {
            map["status"] = self.status!
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
        if let value = dict["proxyMode"] as? String {
            self.proxyMode = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListModelProxiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelProxiesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelProxiesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelServicesRequest : Tea.TeaModel {
    public var modelType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public var providerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.providerType != nil {
            map["providerType"] = self.providerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["providerType"] as? String {
            self.providerType = value
        }
    }
}

public class ListModelServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelServicesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelServicesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSandboxesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var status: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
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
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListSandboxesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSandboxesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSandboxesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
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
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplatesResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishRuntimeVersionRequest : Tea.TeaModel {
    public var body: PublishRuntimeVersionInput?

    public override init() {
        super.init()
    }

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
            var model = PublishRuntimeVersionInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishRuntimeVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeVersionResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeVersionResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopSandboxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSandboxResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopSandboxResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTemplateMCPResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentRuntimeRequest : Tea.TeaModel {
    public var body: UpdateAgentRuntimeInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateAgentRuntimeInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentRuntimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentRuntimeEndpointRequest : Tea.TeaModel {
    public var body: UpdateAgentRuntimeEndpointInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateAgentRuntimeEndpointInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentRuntimeEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRuntimeEndpointResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AgentRuntimeEndpointResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCredentialRequest : Tea.TeaModel {
    public var body: UpdateCredentialInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateCredentialInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomDomainRequest : Tea.TeaModel {
    public var body: UpdateCustomDomainInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateCustomDomainInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomainResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomainResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseRequest : Tea.TeaModel {
    public var body: UpdateKnowledgeBaseInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateKnowledgeBaseInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KnowledgeBaseResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = KnowledgeBaseResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMemoryCollectionRequest : Tea.TeaModel {
    public var body: UpdateMemoryCollectionInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateMemoryCollectionInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMemoryCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemoryCollectionResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MemoryCollectionResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelProxyRequest : Tea.TeaModel {
    public var body: UpdateModelProxyInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateModelProxyInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelProxyResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelProxyResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelServiceRequest : Tea.TeaModel {
    public var body: UpdateModelServiceInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateModelServiceInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelServiceResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelServiceResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var body: UpdateTemplateInput?

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
            var model = UpdateTemplateInput()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateResult()
            model.fromMap(value)
            self.body = model
        }
    }
}
