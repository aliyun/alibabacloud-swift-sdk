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

public class CodeConfiguration : Tea.TeaModel {
    public var checksum: String?

    public var command: [String]?

    public var language: String?

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
    public var command: [String]?

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
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["image"] as? String {
            self.image = value
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
    public var config: [String: String]?

    public var description_: String?

    public var name: String?

    public var secret: String?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.secret != nil {
            map["secret"] = self.secret!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["secret"] as? String {
            self.secret = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateCredentialOutput : Tea.TeaModel {
    public var createdAt: String?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
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
        if let value = dict["type"] as? String {
            self.type = value
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

public class CredentialListItem : Tea.TeaModel {
    public var createdAt: String?

    public var id: String?

    public var name: String?

    public var relatedWorloads: [RelatedWorkload]?

    public var type: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.relatedWorloads != nil {
            var tmp : [Any] = []
            for k in self.relatedWorloads! {
                tmp.append(k.toMap())
            }
            map["relatedWorloads"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
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
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["relatedWorloads"] as? [Any?] {
            var tmp : [RelatedWorkload] = []
            for v in value {
                if v != nil {
                    var model = RelatedWorkload()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedWorloads = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
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
    public var config: [String: String]?

    public var createdAt: String?

    public var description_: String?

    public var id: String?

    public var name: String?

    public var secret: String?

    public var type: String?

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
        if self.config != nil {
            map["config"] = self.config!
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
        if self.secret != nil {
            map["secret"] = self.secret!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: String] {
            self.config = value
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
        if let value = dict["secret"] as? String {
            self.secret = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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
    public var items: CredentialListItem?

    public var pageNum: String?

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
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["items"] = self.items?.toMap()
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
        if let value = dict["items"] as? [String: Any?] {
            var model = CredentialListItem()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["pageNum"] as? String {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["total"] as? String {
            self.total = value
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
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class PublishRuntimeVersionInput : Tea.TeaModel {
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

public class RelatedWorkload : Tea.TeaModel {
    public var workloadId: String?

    public var workloadName: String?

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
        if self.workloadId != nil {
            map["workloadId"] = self.workloadId!
        }
        if self.workloadName != nil {
            map["workloadName"] = self.workloadName!
        }
        if self.workloadType != nil {
            map["workloadType"] = self.workloadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workloadId"] as? String {
            self.workloadId = value
        }
        if let value = dict["workloadName"] as? String {
            self.workloadName = value
        }
        if let value = dict["workloadType"] as? String {
            self.workloadType = value
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
    public var templateID: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["templateVersion"] as? String {
            self.templateVersion = value
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

public class UpdateCredentialInput : Tea.TeaModel {
    public var config: [String: String]?

    public var description_: String?

    public var name: String?

    public var secret: String?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.secret != nil {
            map["secret"] = self.secret!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: String] {
            self.config = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["secret"] as? String {
            self.secret = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class UpdateCredentialOutput : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var type: String?

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
        if self.type != nil {
            map["type"] = self.type!
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
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
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

public class CreateMemoryRequest : Tea.TeaModel {
    public var longTtl: Int32?

    public var name: String?

    public var shortTtl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.longTtl != nil {
            map["longTtl"] = self.longTtl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.shortTtl != nil {
            map["shortTtl"] = self.shortTtl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["longTtl"] as? Int32 {
            self.longTtl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["shortTtl"] as? Int32 {
            self.shortTtl = value
        }
    }
}

public class CreateMemoryResponseBody : Tea.TeaModel {
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

public class CreateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryEventRequest : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var eventId: String?

        public var message: [[String: String]]?

        public var metadata: [String: Any]?

        public var sessionId: String?

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
            if self.eventId != nil {
                map["eventId"] = self.eventId!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["eventId"] as? String {
                self.eventId = value
            }
            if let value = dict["message"] as? [[String: String]] {
                self.message = value
            }
            if let value = dict["metadata"] as? [String: Any] {
                self.metadata = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var events: [CreateMemoryEventRequest.Events]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["events"] as? [Any?] {
            var tmp : [CreateMemoryEventRequest.Events] = []
            for v in value {
                if v != nil {
                    var model = CreateMemoryEventRequest.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
    }
}

public class CreateMemoryEventResponseBody : Tea.TeaModel {
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

public class CreateMemoryEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMemoryEventResponseBody()
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

public class DeleteMemoryResponseBody : Tea.TeaModel {
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

public class DeleteMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMemoryResponseBody()
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

public class GetMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int32?

        public var longTtl: Int32?

        public var name: String?

        public var shortTtl: Int32?

        public override init() {
            super.init()
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
            if self.longTtl != nil {
                map["longTtl"] = self.longTtl!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.shortTtl != nil {
                map["shortTtl"] = self.shortTtl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? Int32 {
                self.createTime = value
            }
            if let value = dict["longTtl"] as? Int32 {
                self.longTtl = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["shortTtl"] as? Int32 {
                self.shortTtl = value
            }
        }
    }
    public var code: String?

    public var data: GetMemoryResponseBody.Data?

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
            var model = GetMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMemoryEventRequest : Tea.TeaModel {
    public var from: Int64?

    public var to: Int64?

    public override init() {
        super.init()
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
    }
}

public class GetMemoryEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var event: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.event != nil {
                map["event"] = self.event!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["event"] as? [String: Any] {
                self.event = value
            }
        }
    }
    public var code: String?

    public var data: GetMemoryEventResponseBody.Data?

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
            var model = GetMemoryEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMemoryEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMemoryEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMemorySessionRequest : Tea.TeaModel {
    public var from: Int64?

    public var size: Int32?

    public var to: Int64?

    public override init() {
        super.init()
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
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int64 {
            self.from = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["to"] as? Int64 {
            self.to = value
        }
    }
}

public class GetMemorySessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var events: [[String: Any]]?

        public override init() {
            super.init()
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
                map["events"] = self.events!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["events"] as? [[String: Any]] {
                self.events = value
            }
        }
    }
    public var code: String?

    public var data: GetMemorySessionResponseBody.Data?

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
            var model = GetMemorySessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMemorySessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemorySessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMemorySessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentRuntimeEndpointsRequest : Tea.TeaModel {
    public var endpointName: String?

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
        if self.endpointName != nil {
            map["endpointName"] = self.endpointName!
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
        if let value = dict["endpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override init() {
        super.init()
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

public class ListMemoryRequest : Tea.TeaModel {
    public var namePrefix: String?

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
        if self.namePrefix != nil {
            map["namePrefix"] = self.namePrefix!
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
        if let value = dict["namePrefix"] as? String {
            self.namePrefix = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [String]?

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
                map["items"] = self.items!
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
            if let value = dict["items"] as? [String] {
                self.items = value
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

    public var data: ListMemoryResponseBody.Data?

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
            var model = ListMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMemoryEventRequest : Tea.TeaModel {
    public var from: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var to: Int64?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int64 {
            self.from = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["to"] as? Int64 {
            self.to = value
        }
    }
}

public class ListMemoryEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [String]?

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
                map["items"] = self.items!
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
            if let value = dict["items"] as? [String] {
                self.items = value
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

    public var data: ListMemoryEventResponseBody.Data?

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
            var model = ListMemoryEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMemoryEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoryEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMemoryEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMemorySessionsRequest : Tea.TeaModel {
    public var from: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var to: Int64?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int64 {
            self.from = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["to"] as? Int64 {
            self.to = value
        }
    }
}

public class ListMemorySessionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [String]?

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
                map["items"] = self.items!
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
            if let value = dict["items"] as? [String] {
                self.items = value
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

    public var data: ListMemorySessionsResponseBody.Data?

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
            var model = ListMemorySessionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMemorySessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemorySessionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMemorySessionsResponseBody()
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

public class RetrieveMemoryRequest : Tea.TeaModel {
    public class Query : Tea.TeaModel {
        public var memory: String?

        public var metadata: [String: String]?

        public var namespace: String?

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
            if self.memory != nil {
                map["memory"] = self.memory!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["memory"] as? String {
                self.memory = value
            }
            if let value = dict["metadata"] as? [String: String] {
                self.metadata = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var from: Int32?

    public var query: RetrieveMemoryRequest.Query?

    public var store: String?

    public var to: Int32?

    public var topk: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.query?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.query != nil {
            map["query"] = self.query?.toMap()
        }
        if self.store != nil {
            map["store"] = self.store!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.topk != nil {
            map["topk"] = self.topk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["query"] as? [String: Any?] {
            var model = RetrieveMemoryRequest.Query()
            model.fromMap(value)
            self.query = model
        }
        if let value = dict["store"] as? String {
            self.store = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
        if let value = dict["topk"] as? Int32 {
            self.topk = value
        }
    }
}

public class RetrieveMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var events: [[String: String]]?

        public var memories: [[String: String]]?

        public override init() {
            super.init()
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
                map["events"] = self.events!
            }
            if self.memories != nil {
                map["memories"] = self.memories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["events"] as? [[String: String]] {
                self.events = value
            }
            if let value = dict["memories"] as? [[String: String]] {
                self.memories = value
            }
        }
    }
    public var code: String?

    public var data: RetrieveMemoryResponseBody.Data?

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
            var model = RetrieveMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RetrieveMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetrieveMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RetrieveMemoryResponseBody()
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

public class UpdateMemoryRequest : Tea.TeaModel {
    public var longTtl: Int32?

    public var shortTtl: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.longTtl != nil {
            map["longTtl"] = self.longTtl!
        }
        if self.shortTtl != nil {
            map["shortTtl"] = self.shortTtl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["longTtl"] as? Int32 {
            self.longTtl = value
        }
        if let value = dict["shortTtl"] as? Int32 {
            self.shortTtl = value
        }
    }
}

public class UpdateMemoryResponseBody : Tea.TeaModel {
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

public class UpdateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
