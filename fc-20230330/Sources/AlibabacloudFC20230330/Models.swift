import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccelerationInfo : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class Alias : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var aliasName: String?

    public var createdTime: String?

    public var description_: String?

    public var lastModifiedTime: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalVersionWeight != nil {
            map["additionalVersionWeight"] = self.additionalVersionWeight!
        }
        if self.aliasName != nil {
            map["aliasName"] = self.aliasName!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalVersionWeight") && dict["additionalVersionWeight"] != nil {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("aliasName") && dict["aliasName"] != nil {
            self.aliasName = dict["aliasName"] as! String
        }
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class AsyncConfig : Tea.TeaModel {
    public var createdTime: String?

    public var destinationConfig: DestinationConfig?

    public var functionName: String?

    public var lastModifiedTime: String?

    public var maxAsyncEventAgeInSeconds: Int64?

    public var maxAsyncRetryAttempts: Int64?

    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.destinationConfig != nil {
            map["destinationConfig"] = self.destinationConfig?.toMap()
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.maxAsyncEventAgeInSeconds != nil {
            map["maxAsyncEventAgeInSeconds"] = self.maxAsyncEventAgeInSeconds!
        }
        if self.maxAsyncRetryAttempts != nil {
            map["maxAsyncRetryAttempts"] = self.maxAsyncRetryAttempts!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("destinationConfig") && dict["destinationConfig"] != nil {
            var model = DestinationConfig()
            model.fromMap(dict["destinationConfig"] as! [String: Any])
            self.destinationConfig = model
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("maxAsyncEventAgeInSeconds") && dict["maxAsyncEventAgeInSeconds"] != nil {
            self.maxAsyncEventAgeInSeconds = dict["maxAsyncEventAgeInSeconds"] as! Int64
        }
        if dict.keys.contains("maxAsyncRetryAttempts") && dict["maxAsyncRetryAttempts"] != nil {
            self.maxAsyncRetryAttempts = dict["maxAsyncRetryAttempts"] as! Int64
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certName") && dict["certName"] != nil {
            self.certName = dict["certName"] as! String
        }
        if dict.keys.contains("certificate") && dict["certificate"] != nil {
            self.certificate = dict["certificate"] as! String
        }
        if dict.keys.contains("privateKey") && dict["privateKey"] != nil {
            self.privateKey = dict["privateKey"] as! String
        }
    }
}

public class ConcurrencyConfig : Tea.TeaModel {
    public var functionArn: String?

    public var reservedConcurrency: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
        }
        if self.reservedConcurrency != nil {
            map["reservedConcurrency"] = self.reservedConcurrency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionArn") && dict["functionArn"] != nil {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("reservedConcurrency") && dict["reservedConcurrency"] != nil {
            self.reservedConcurrency = dict["reservedConcurrency"] as! Int64
        }
    }
}

public class CreateAliasInput : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var aliasName: String?

    public var description_: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalVersionWeight != nil {
            map["additionalVersionWeight"] = self.additionalVersionWeight!
        }
        if self.aliasName != nil {
            map["aliasName"] = self.aliasName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalVersionWeight") && dict["additionalVersionWeight"] != nil {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("aliasName") && dict["aliasName"] != nil {
            self.aliasName = dict["aliasName"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class CreateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var domainName: String?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var tlsConfig: TLSConfig?

    public var wafConfig: WAFConfig?

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
        try self.wafConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
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
        if self.wafConfig != nil {
            map["wafConfig"] = self.wafConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certConfig") && dict["certConfig"] != nil {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") && dict["routeConfig"] != nil {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("tlsConfig") && dict["tlsConfig"] != nil {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") && dict["wafConfig"] != nil {
            var model = WAFConfig()
            model.fromMap(dict["wafConfig"] as! [String: Any])
            self.wafConfig = model
        }
    }
}

public class CreateFunctionInput : Tea.TeaModel {
    public var code: InputCodeLocation?

    public var cpu: Double?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionName: String?

    public var gpuConfig: GPUConfig?

    public var handler: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var internetAccess: Bool?

    public var layers: [String]?

    public var logConfig: LogConfig?

    public var memorySize: Int32?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var runtime: String?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

    public var vpcBinding: VPCBinding?

    public var vpcConfig: VPCConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.code?.validate()
        try self.customContainerConfig?.validate()
        try self.customDNS?.validate()
        try self.customRuntimeConfig?.validate()
        try self.gpuConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcBinding?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.customDNS != nil {
            map["customDNS"] = self.customDNS?.toMap()
        }
        if self.customRuntimeConfig != nil {
            map["customRuntimeConfig"] = self.customRuntimeConfig?.toMap()
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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcBinding != nil {
            map["vpcBinding"] = self.vpcBinding?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("customContainerConfig") && dict["customContainerConfig"] != nil {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") && dict["customDNS"] != nil {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") && dict["customRuntimeConfig"] != nil {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") && dict["diskSize"] != nil {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("environmentVariables") && dict["environmentVariables"] != nil {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuConfig") && dict["gpuConfig"] != nil {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") && dict["nasConfig"] != nil {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") && dict["ossMountConfig"] != nil {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcBinding") && dict["vpcBinding"] != nil {
            var model = VPCBinding()
            model.fromMap(dict["vpcBinding"] as! [String: Any])
            self.vpcBinding = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class CreateLayerVersionInput : Tea.TeaModel {
    public var code: InputCodeLocation?

    public var compatibleRuntime: [String]?

    public var description_: String?

    public var license: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.code?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code?.toMap()
        }
        if self.compatibleRuntime != nil {
            map["compatibleRuntime"] = self.compatibleRuntime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.license != nil {
            map["license"] = self.license!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("compatibleRuntime") && dict["compatibleRuntime"] != nil {
            self.compatibleRuntime = dict["compatibleRuntime"] as! [String]
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("license") && dict["license"] != nil {
            self.license = dict["license"] as! String
        }
    }
}

public class CreateTriggerInput : Tea.TeaModel {
    public var description_: String?

    public var invocationRole: String?

    public var qualifier: String?

    public var sourceArn: String?

    public var triggerConfig: String?

    public var triggerName: String?

    public var triggerType: String?

    public override init() {
        super.init()
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
        if self.invocationRole != nil {
            map["invocationRole"] = self.invocationRole!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.sourceArn != nil {
            map["sourceArn"] = self.sourceArn!
        }
        if self.triggerConfig != nil {
            map["triggerConfig"] = self.triggerConfig!
        }
        if self.triggerName != nil {
            map["triggerName"] = self.triggerName!
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("invocationRole") && dict["invocationRole"] != nil {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sourceArn") && dict["sourceArn"] != nil {
            self.sourceArn = dict["sourceArn"] as! String
        }
        if dict.keys.contains("triggerConfig") && dict["triggerConfig"] != nil {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
        if dict.keys.contains("triggerName") && dict["triggerName"] != nil {
            self.triggerName = dict["triggerName"] as! String
        }
        if dict.keys.contains("triggerType") && dict["triggerType"] != nil {
            self.triggerType = dict["triggerType"] as! String
        }
    }
}

public class CustomContainerConfig : Tea.TeaModel {
    public var accelerationInfo: AccelerationInfo?

    public var accelerationType: String?

    public var acrInstanceID: String?

    public var command: [String]?

    public var entrypoint: [String]?

    public var healthCheckConfig: CustomHealthCheckConfig?

    public var image: String?

    public var port: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accelerationInfo?.validate()
        try self.healthCheckConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerationInfo != nil {
            map["accelerationInfo"] = self.accelerationInfo?.toMap()
        }
        if self.accelerationType != nil {
            map["accelerationType"] = self.accelerationType!
        }
        if self.acrInstanceID != nil {
            map["acrInstanceID"] = self.acrInstanceID!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.entrypoint != nil {
            map["entrypoint"] = self.entrypoint!
        }
        if self.healthCheckConfig != nil {
            map["healthCheckConfig"] = self.healthCheckConfig?.toMap()
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accelerationInfo") && dict["accelerationInfo"] != nil {
            var model = AccelerationInfo()
            model.fromMap(dict["accelerationInfo"] as! [String: Any])
            self.accelerationInfo = model
        }
        if dict.keys.contains("accelerationType") && dict["accelerationType"] != nil {
            self.accelerationType = dict["accelerationType"] as! String
        }
        if dict.keys.contains("acrInstanceID") && dict["acrInstanceID"] != nil {
            self.acrInstanceID = dict["acrInstanceID"] as! String
        }
        if dict.keys.contains("command") && dict["command"] != nil {
            self.command = dict["command"] as! [String]
        }
        if dict.keys.contains("entrypoint") && dict["entrypoint"] != nil {
            self.entrypoint = dict["entrypoint"] as! [String]
        }
        if dict.keys.contains("healthCheckConfig") && dict["healthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["healthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("port") && dict["port"] != nil {
            self.port = dict["port"] as! Int32
        }
    }
}

public class CustomDNS : Tea.TeaModel {
    public var dnsOptions: [DNSOption]?

    public var nameServers: [String]?

    public var searches: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsOptions != nil {
            var tmp : [Any] = []
            for k in self.dnsOptions! {
                tmp.append(k.toMap())
            }
            map["dnsOptions"] = tmp
        }
        if self.nameServers != nil {
            map["nameServers"] = self.nameServers!
        }
        if self.searches != nil {
            map["searches"] = self.searches!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dnsOptions") && dict["dnsOptions"] != nil {
            var tmp : [DNSOption] = []
            for v in dict["dnsOptions"] as! [Any] {
                var model = DNSOption()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dnsOptions = tmp
        }
        if dict.keys.contains("nameServers") && dict["nameServers"] != nil {
            self.nameServers = dict["nameServers"] as! [String]
        }
        if dict.keys.contains("searches") && dict["searches"] != nil {
            self.searches = dict["searches"] as! [String]
        }
    }
}

public class CustomDomain : Tea.TeaModel {
    public var accountId: String?

    public var apiVersion: String?

    public var certConfig: CertConfig?

    public var createdTime: String?

    public var domainName: String?

    public var lastModifiedTime: String?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var subdomainCount: String?

    public var tlsConfig: TLSConfig?

    public var wafConfig: WAFConfig?

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
        try self.wafConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.apiVersion != nil {
            map["apiVersion"] = self.apiVersion!
        }
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.routeConfig != nil {
            map["routeConfig"] = self.routeConfig?.toMap()
        }
        if self.subdomainCount != nil {
            map["subdomainCount"] = self.subdomainCount!
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        if self.wafConfig != nil {
            map["wafConfig"] = self.wafConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("apiVersion") && dict["apiVersion"] != nil {
            self.apiVersion = dict["apiVersion"] as! String
        }
        if dict.keys.contains("certConfig") && dict["certConfig"] != nil {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") && dict["routeConfig"] != nil {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("subdomainCount") && dict["subdomainCount"] != nil {
            self.subdomainCount = dict["subdomainCount"] as! String
        }
        if dict.keys.contains("tlsConfig") && dict["tlsConfig"] != nil {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") && dict["wafConfig"] != nil {
            var model = WAFConfig()
            model.fromMap(dict["wafConfig"] as! [String: Any])
            self.wafConfig = model
        }
    }
}

public class CustomHealthCheckConfig : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failureThreshold") && dict["failureThreshold"] != nil {
            self.failureThreshold = dict["failureThreshold"] as! Int32
        }
        if dict.keys.contains("httpGetUrl") && dict["httpGetUrl"] != nil {
            self.httpGetUrl = dict["httpGetUrl"] as! String
        }
        if dict.keys.contains("initialDelaySeconds") && dict["initialDelaySeconds"] != nil {
            self.initialDelaySeconds = dict["initialDelaySeconds"] as! Int32
        }
        if dict.keys.contains("periodSeconds") && dict["periodSeconds"] != nil {
            self.periodSeconds = dict["periodSeconds"] as! Int32
        }
        if dict.keys.contains("successThreshold") && dict["successThreshold"] != nil {
            self.successThreshold = dict["successThreshold"] as! Int32
        }
        if dict.keys.contains("timeoutSeconds") && dict["timeoutSeconds"] != nil {
            self.timeoutSeconds = dict["timeoutSeconds"] as! Int32
        }
    }
}

public class CustomRuntimeConfig : Tea.TeaModel {
    public var args: [String]?

    public var command: [String]?

    public var healthCheckConfig: CustomHealthCheckConfig?

    public var port: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.healthCheckConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.healthCheckConfig != nil {
            map["healthCheckConfig"] = self.healthCheckConfig?.toMap()
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("args") && dict["args"] != nil {
            self.args = dict["args"] as! [String]
        }
        if dict.keys.contains("command") && dict["command"] != nil {
            self.command = dict["command"] as! [String]
        }
        if dict.keys.contains("healthCheckConfig") && dict["healthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["healthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("port") && dict["port"] != nil {
            self.port = dict["port"] as! Int32
        }
    }
}

public class DNSOption : Tea.TeaModel {
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

public class Destination : Tea.TeaModel {
    public var destination: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destination != nil {
            map["destination"] = self.destination!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destination") && dict["destination"] != nil {
            self.destination = dict["destination"] as! String
        }
    }
}

public class DestinationConfig : Tea.TeaModel {
    public var onFailure: Destination?

    public var onSuccess: Destination?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.onFailure?.validate()
        try self.onSuccess?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.onFailure != nil {
            map["onFailure"] = self.onFailure?.toMap()
        }
        if self.onSuccess != nil {
            map["onSuccess"] = self.onSuccess?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("onFailure") && dict["onFailure"] != nil {
            var model = Destination()
            model.fromMap(dict["onFailure"] as! [String: Any])
            self.onFailure = model
        }
        if dict.keys.contains("onSuccess") && dict["onSuccess"] != nil {
            var model = Destination()
            model.fromMap(dict["onSuccess"] as! [String: Any])
            self.onSuccess = model
        }
    }
}

public class EqualRule : Tea.TeaModel {
    public var match: String?

    public var replacement: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.match != nil {
            map["match"] = self.match!
        }
        if self.replacement != nil {
            map["replacement"] = self.replacement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("match") && dict["match"] != nil {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") && dict["replacement"] != nil {
            self.replacement = dict["replacement"] as! String
        }
    }
}

public class Error : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class Function : Tea.TeaModel {
    public var codeChecksum: String?

    public var codeSize: Int64?

    public var cpu: Double?

    public var createdTime: String?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionArn: String?

    public var functionId: String?

    public var functionName: String?

    public var gpuConfig: GPUConfig?

    public var handler: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var internetAccess: Bool?

    public var lastModifiedTime: String?

    public var layers: [FunctionLayer]?

    public var logConfig: LogConfig?

    public var memorySize: Int32?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var runtime: String?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

    public var vpcBinding: VPCBinding?

    public var vpcConfig: VPCConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customContainerConfig?.validate()
        try self.customDNS?.validate()
        try self.customRuntimeConfig?.validate()
        try self.gpuConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcBinding?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeChecksum != nil {
            map["codeChecksum"] = self.codeChecksum!
        }
        if self.codeSize != nil {
            map["codeSize"] = self.codeSize!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.customDNS != nil {
            map["customDNS"] = self.customDNS?.toMap()
        }
        if self.customRuntimeConfig != nil {
            map["customRuntimeConfig"] = self.customRuntimeConfig?.toMap()
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
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
        }
        if self.functionId != nil {
            map["functionId"] = self.functionId!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.layers != nil {
            var tmp : [Any] = []
            for k in self.layers! {
                tmp.append(k.toMap())
            }
            map["layers"] = tmp
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcBinding != nil {
            map["vpcBinding"] = self.vpcBinding?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("codeChecksum") && dict["codeChecksum"] != nil {
            self.codeChecksum = dict["codeChecksum"] as! String
        }
        if dict.keys.contains("codeSize") && dict["codeSize"] != nil {
            self.codeSize = dict["codeSize"] as! Int64
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("customContainerConfig") && dict["customContainerConfig"] != nil {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") && dict["customDNS"] != nil {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") && dict["customRuntimeConfig"] != nil {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") && dict["diskSize"] != nil {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("environmentVariables") && dict["environmentVariables"] != nil {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("functionArn") && dict["functionArn"] != nil {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("functionId") && dict["functionId"] != nil {
            self.functionId = dict["functionId"] as! String
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuConfig") && dict["gpuConfig"] != nil {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            var tmp : [FunctionLayer] = []
            for v in dict["layers"] as! [Any] {
                var model = FunctionLayer()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layers = tmp
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") && dict["nasConfig"] != nil {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") && dict["ossMountConfig"] != nil {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcBinding") && dict["vpcBinding"] != nil {
            var model = VPCBinding()
            model.fromMap(dict["vpcBinding"] as! [String: Any])
            self.vpcBinding = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class FunctionLayer : Tea.TeaModel {
    public var arn: String?

    public var size: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arn") && dict["arn"] != nil {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int64
        }
    }
}

public class GPUConfig : Tea.TeaModel {
    public var gpuMemorySize: Int32?

    public var gpuType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.gpuType != nil {
            map["gpuType"] = self.gpuType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("gpuType") && dict["gpuType"] != nil {
            self.gpuType = dict["gpuType"] as! String
        }
    }
}

public class GetResourceTagsOutput : Tea.TeaModel {
    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceArn") && dict["resourceArn"] != nil {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! [String: String]
        }
    }
}

public class HTTPTrigger : Tea.TeaModel {
    public var urlInternet: String?

    public var urlIntranet: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.urlInternet != nil {
            map["urlInternet"] = self.urlInternet!
        }
        if self.urlIntranet != nil {
            map["urlIntranet"] = self.urlIntranet!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
            self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failureThreshold") && dict["failureThreshold"] != nil {
            self.failureThreshold = dict["failureThreshold"] as! Int32
        }
        if dict.keys.contains("httpGetUrl") && dict["httpGetUrl"] != nil {
            self.httpGetUrl = dict["httpGetUrl"] as! String
        }
        if dict.keys.contains("initialDelaySeconds") && dict["initialDelaySeconds"] != nil {
            self.initialDelaySeconds = dict["initialDelaySeconds"] as! Int32
        }
        if dict.keys.contains("periodSeconds") && dict["periodSeconds"] != nil {
            self.periodSeconds = dict["periodSeconds"] as! Int32
        }
        if dict.keys.contains("successThreshold") && dict["successThreshold"] != nil {
            self.successThreshold = dict["successThreshold"] as! Int32
        }
        if dict.keys.contains("timeoutSeconds") && dict["timeoutSeconds"] != nil {
            self.timeoutSeconds = dict["timeoutSeconds"] as! Int32
        }
    }
}

public class InnerRewriteConfig : Tea.TeaModel {
    public var regexRules: [RewriteRegexRule]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regexRules != nil {
            var tmp : [Any] = []
            for k in self.regexRules! {
                tmp.append(k.toMap())
            }
            map["regexRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regexRules") && dict["regexRules"] != nil {
            var tmp : [RewriteRegexRule] = []
            for v in dict["regexRules"] as! [Any] {
                var model = RewriteRegexRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regexRules = tmp
        }
    }
}

public class InputCodeLocation : Tea.TeaModel {
    public var checksum: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("checksum") && dict["checksum"] != nil {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("ossBucketName") && dict["ossBucketName"] != nil {
            self.ossBucketName = dict["ossBucketName"] as! String
        }
        if dict.keys.contains("ossObjectName") && dict["ossObjectName"] != nil {
            self.ossObjectName = dict["ossObjectName"] as! String
        }
        if dict.keys.contains("zipFile") && dict["zipFile"] != nil {
            self.zipFile = dict["zipFile"] as! String
        }
    }
}

public class InstanceInfo : Tea.TeaModel {
    public var instanceId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class InstanceLifecycleConfig : Tea.TeaModel {
    public var initializer: LifecycleHook?

    public var preStop: LifecycleHook?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.initializer?.validate()
        try self.preStop?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initializer != nil {
            map["initializer"] = self.initializer?.toMap()
        }
        if self.preStop != nil {
            map["preStop"] = self.preStop?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            var model = LifecycleHook()
            model.fromMap(dict["initializer"] as! [String: Any])
            self.initializer = model
        }
        if dict.keys.contains("preStop") && dict["preStop"] != nil {
            var model = LifecycleHook()
            model.fromMap(dict["preStop"] as! [String: Any])
            self.preStop = model
        }
    }
}

public class Layer : Tea.TeaModel {
    public var acl: String?

    public var code: OutputCodeLocation?

    public var codeChecksum: String?

    public var codeSize: Int64?

    public var compatibleRuntime: [String]?

    public var createTime: String?

    public var description_: String?

    public var layerName: String?

    public var layerVersionArn: String?

    public var license: String?

    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.code?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.code != nil {
            map["code"] = self.code?.toMap()
        }
        if self.codeChecksum != nil {
            map["codeChecksum"] = self.codeChecksum!
        }
        if self.codeSize != nil {
            map["codeSize"] = self.codeSize!
        }
        if self.compatibleRuntime != nil {
            map["compatibleRuntime"] = self.compatibleRuntime!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.layerName != nil {
            map["layerName"] = self.layerName!
        }
        if self.layerVersionArn != nil {
            map["layerVersionArn"] = self.layerVersionArn!
        }
        if self.license != nil {
            map["license"] = self.license!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acl") && dict["acl"] != nil {
            self.acl = dict["acl"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = OutputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("codeChecksum") && dict["codeChecksum"] != nil {
            self.codeChecksum = dict["codeChecksum"] as! String
        }
        if dict.keys.contains("codeSize") && dict["codeSize"] != nil {
            self.codeSize = dict["codeSize"] as! Int64
        }
        if dict.keys.contains("compatibleRuntime") && dict["compatibleRuntime"] != nil {
            self.compatibleRuntime = dict["compatibleRuntime"] as! [String]
        }
        if dict.keys.contains("createTime") && dict["createTime"] != nil {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("layerName") && dict["layerName"] != nil {
            self.layerName = dict["layerName"] as! String
        }
        if dict.keys.contains("layerVersionArn") && dict["layerVersionArn"] != nil {
            self.layerVersionArn = dict["layerVersionArn"] as! String
        }
        if dict.keys.contains("license") && dict["license"] != nil {
            self.license = dict["license"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! Int32
        }
    }
}

public class LifecycleHook : Tea.TeaModel {
    public var handler: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class ListAliasesOutput : Tea.TeaModel {
    public var aliases: [Alias]?

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
        if self.aliases != nil {
            var tmp : [Any] = []
            for k in self.aliases! {
                tmp.append(k.toMap())
            }
            map["aliases"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliases") && dict["aliases"] != nil {
            var tmp : [Alias] = []
            for v in dict["aliases"] as! [Any] {
                var model = Alias()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aliases = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListAsyncInvokeConfigOutput : Tea.TeaModel {
    public var configs: [AsyncConfig]?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["configs"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("configs") && dict["configs"] != nil {
            var tmp : [AsyncConfig] = []
            for v in dict["configs"] as! [Any] {
                var model = AsyncConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListConcurrencyConfigsOutput : Tea.TeaModel {
    public var configs: [ConcurrencyConfig]?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["configs"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("configs") && dict["configs"] != nil {
            var tmp : [ConcurrencyConfig] = []
            for v in dict["configs"] as! [Any] {
                var model = ConcurrencyConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListCustomDomainOutput : Tea.TeaModel {
    public var customDomains: [CustomDomain]?

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
        if self.customDomains != nil {
            var tmp : [Any] = []
            for k in self.customDomains! {
                tmp.append(k.toMap())
            }
            map["customDomains"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customDomains") && dict["customDomains"] != nil {
            var tmp : [CustomDomain] = []
            for v in dict["customDomains"] as! [Any] {
                var model = CustomDomain()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customDomains = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListFunctionsOutput : Tea.TeaModel {
    public var functions: [Function]?

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
        if self.functions != nil {
            var tmp : [Any] = []
            for k in self.functions! {
                tmp.append(k.toMap())
            }
            map["functions"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functions") && dict["functions"] != nil {
            var tmp : [Function] = []
            for v in dict["functions"] as! [Any] {
                var model = Function()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.functions = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListInstancesOutput : Tea.TeaModel {
    public var instances: [InstanceInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances") && dict["instances"] != nil {
            var tmp : [InstanceInfo] = []
            for v in dict["instances"] as! [Any] {
                var model = InstanceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class ListLayerVersionOutput : Tea.TeaModel {
    public var layers: [Layer]?

    public var nextVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.layers != nil {
            var tmp : [Any] = []
            for k in self.layers! {
                tmp.append(k.toMap())
            }
            map["layers"] = tmp
        }
        if self.nextVersion != nil {
            map["nextVersion"] = self.nextVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("layers") && dict["layers"] != nil {
            var tmp : [Layer] = []
            for v in dict["layers"] as! [Any] {
                var model = Layer()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layers = tmp
        }
        if dict.keys.contains("nextVersion") && dict["nextVersion"] != nil {
            self.nextVersion = dict["nextVersion"] as! Int32
        }
    }
}

public class ListLayersOutput : Tea.TeaModel {
    public var layers: [Layer]?

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
        if self.layers != nil {
            var tmp : [Any] = []
            for k in self.layers! {
                tmp.append(k.toMap())
            }
            map["layers"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("layers") && dict["layers"] != nil {
            var tmp : [Layer] = []
            for v in dict["layers"] as! [Any] {
                var model = Layer()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layers = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListProvisionConfigsOutput : Tea.TeaModel {
    public var nextToken: String?

    public var provisionConfigs: [ProvisionConfig]?

    public override init() {
        super.init()
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
        if self.provisionConfigs != nil {
            var tmp : [Any] = []
            for k in self.provisionConfigs! {
                tmp.append(k.toMap())
            }
            map["provisionConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("provisionConfigs") && dict["provisionConfigs"] != nil {
            var tmp : [ProvisionConfig] = []
            for v in dict["provisionConfigs"] as! [Any] {
                var model = ProvisionConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.provisionConfigs = tmp
        }
    }
}

public class ListTaggedResourcesOutput : Tea.TeaModel {
    public var nextToken: String?

    public var resources: [Resource]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resources") && dict["resources"] != nil {
            var tmp : [Resource] = []
            for v in dict["resources"] as! [Any] {
                var model = Resource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class ListTriggersOutput : Tea.TeaModel {
    public var nextToken: String?

    public var triggers: [Trigger]?

    public override init() {
        super.init()
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
        if self.triggers != nil {
            var tmp : [Any] = []
            for k in self.triggers! {
                tmp.append(k.toMap())
            }
            map["triggers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("triggers") && dict["triggers"] != nil {
            var tmp : [Trigger] = []
            for v in dict["triggers"] as! [Any] {
                var model = Trigger()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.triggers = tmp
        }
    }
}

public class ListVersionsOutput : Tea.TeaModel {
    public var direction: String?

    public var nextToken: String?

    public var versions: [Version]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("direction") && dict["direction"] != nil {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("versions") && dict["versions"] != nil {
            var tmp : [Version] = []
            for v in dict["versions"] as! [Any] {
                var model = Version()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class LogConfig : Tea.TeaModel {
    public var enableInstanceMetrics: Bool?

    public var enableRequestMetrics: Bool?

    public var logBeginRule: String?

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
        if self.enableInstanceMetrics != nil {
            map["enableInstanceMetrics"] = self.enableInstanceMetrics!
        }
        if self.enableRequestMetrics != nil {
            map["enableRequestMetrics"] = self.enableRequestMetrics!
        }
        if self.logBeginRule != nil {
            map["logBeginRule"] = self.logBeginRule!
        }
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enableInstanceMetrics") && dict["enableInstanceMetrics"] != nil {
            self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
        }
        if dict.keys.contains("enableRequestMetrics") && dict["enableRequestMetrics"] != nil {
            self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
        }
        if dict.keys.contains("logBeginRule") && dict["logBeginRule"] != nil {
            self.logBeginRule = dict["logBeginRule"] as! String
        }
        if dict.keys.contains("logstore") && dict["logstore"] != nil {
            self.logstore = dict["logstore"] as! String
        }
        if dict.keys.contains("project") && dict["project"] != nil {
            self.project = dict["project"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("groupId") && dict["groupId"] != nil {
            self.groupId = dict["groupId"] as! Int32
        }
        if dict.keys.contains("mountPoints") && dict["mountPoints"] != nil {
            var tmp : [NASMountConfig] = []
            for v in dict["mountPoints"] as! [Any] {
                var model = NASMountConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mountPoints = tmp
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enableTLS") && dict["enableTLS"] != nil {
            self.enableTLS = dict["enableTLS"] as! Bool
        }
        if dict.keys.contains("mountDir") && dict["mountDir"] != nil {
            self.mountDir = dict["mountDir"] as! String
        }
        if dict.keys.contains("serverAddr") && dict["serverAddr"] != nil {
            self.serverAddr = dict["serverAddr"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("mountPoints") && dict["mountPoints"] != nil {
            var tmp : [OSSMountPoint] = []
            for v in dict["mountPoints"] as! [Any] {
                var model = OSSMountPoint()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bucketName") && dict["bucketName"] != nil {
            self.bucketName = dict["bucketName"] as! String
        }
        if dict.keys.contains("bucketPath") && dict["bucketPath"] != nil {
            self.bucketPath = dict["bucketPath"] as! String
        }
        if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
            self.endpoint = dict["endpoint"] as! String
        }
        if dict.keys.contains("mountDir") && dict["mountDir"] != nil {
            self.mountDir = dict["mountDir"] as! String
        }
        if dict.keys.contains("readOnly") && dict["readOnly"] != nil {
            self.readOnly = dict["readOnly"] as! Bool
        }
    }
}

public class OutputCodeLocation : Tea.TeaModel {
    public var location: String?

    public var repositoryType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.repositoryType != nil {
            map["repositoryType"] = self.repositoryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("location") && dict["location"] != nil {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("repositoryType") && dict["repositoryType"] != nil {
            self.repositoryType = dict["repositoryType"] as! String
        }
    }
}

public class OutputFuncCode : Tea.TeaModel {
    public var checksum: String?

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
        if self.checksum != nil {
            map["checksum"] = self.checksum!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("checksum") && dict["checksum"] != nil {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
    }
}

public class PathConfig : Tea.TeaModel {
    public var accountId: String?

    public var functionName: String?

    public var innerRewriteConfig: InnerRewriteConfig?

    public var methods: [String]?

    public var path: String?

    public var qualifier: String?

    public var rewriteConfig: RewriteConfig?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.innerRewriteConfig?.validate()
        try self.rewriteConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.innerRewriteConfig != nil {
            map["innerRewriteConfig"] = self.innerRewriteConfig?.toMap()
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.rewriteConfig != nil {
            map["rewriteConfig"] = self.rewriteConfig?.toMap()
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("innerRewriteConfig") && dict["innerRewriteConfig"] != nil {
            var model = InnerRewriteConfig()
            model.fromMap(dict["innerRewriteConfig"] as! [String: Any])
            self.innerRewriteConfig = model
        }
        if dict.keys.contains("methods") && dict["methods"] != nil {
            self.methods = dict["methods"] as! [String]
        }
        if dict.keys.contains("path") && dict["path"] != nil {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("rewriteConfig") && dict["rewriteConfig"] != nil {
            var model = RewriteConfig()
            model.fromMap(dict["rewriteConfig"] as! [String: Any])
            self.rewriteConfig = model
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
    }
}

public class PolicyItem : Tea.TeaModel {
    public var key: String?

    public var operator_: String?

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
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_!
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
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("operator") && dict["operator"] != nil {
            self.operator_ = dict["operator"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
    }
}

public class ProvisionConfig : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var current: Int64?

    public var currentError: String?

    public var functionArn: String?

    public var scheduledActions: [ScheduledAction]?

    public var target: Int64?

    public var targetTrackingPolicies: [TargetTrackingPolicy]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alwaysAllocateCPU != nil {
            map["alwaysAllocateCPU"] = self.alwaysAllocateCPU!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.currentError != nil {
            map["currentError"] = self.currentError!
        }
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
        }
        if self.scheduledActions != nil {
            var tmp : [Any] = []
            for k in self.scheduledActions! {
                tmp.append(k.toMap())
            }
            map["scheduledActions"] = tmp
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.targetTrackingPolicies != nil {
            var tmp : [Any] = []
            for k in self.targetTrackingPolicies! {
                tmp.append(k.toMap())
            }
            map["targetTrackingPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alwaysAllocateCPU") && dict["alwaysAllocateCPU"] != nil {
            self.alwaysAllocateCPU = dict["alwaysAllocateCPU"] as! Bool
        }
        if dict.keys.contains("current") && dict["current"] != nil {
            self.current = dict["current"] as! Int64
        }
        if dict.keys.contains("currentError") && dict["currentError"] != nil {
            self.currentError = dict["currentError"] as! String
        }
        if dict.keys.contains("functionArn") && dict["functionArn"] != nil {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
            var tmp : [ScheduledAction] = []
            for v in dict["scheduledActions"] as! [Any] {
                var model = ScheduledAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scheduledActions = tmp
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("targetTrackingPolicies") && dict["targetTrackingPolicies"] != nil {
            var tmp : [TargetTrackingPolicy] = []
            for v in dict["targetTrackingPolicies"] as! [Any] {
                var model = TargetTrackingPolicy()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetTrackingPolicies = tmp
        }
    }
}

public class PublishVersionInput : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
    }
}

public class PutAsyncInvokeConfigInput : Tea.TeaModel {
    public var destinationConfig: DestinationConfig?

    public var maxAsyncEventAgeInSeconds: Int64?

    public var maxAsyncRetryAttempts: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationConfig != nil {
            map["destinationConfig"] = self.destinationConfig?.toMap()
        }
        if self.maxAsyncEventAgeInSeconds != nil {
            map["maxAsyncEventAgeInSeconds"] = self.maxAsyncEventAgeInSeconds!
        }
        if self.maxAsyncRetryAttempts != nil {
            map["maxAsyncRetryAttempts"] = self.maxAsyncRetryAttempts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationConfig") && dict["destinationConfig"] != nil {
            var model = DestinationConfig()
            model.fromMap(dict["destinationConfig"] as! [String: Any])
            self.destinationConfig = model
        }
        if dict.keys.contains("maxAsyncEventAgeInSeconds") && dict["maxAsyncEventAgeInSeconds"] != nil {
            self.maxAsyncEventAgeInSeconds = dict["maxAsyncEventAgeInSeconds"] as! Int64
        }
        if dict.keys.contains("maxAsyncRetryAttempts") && dict["maxAsyncRetryAttempts"] != nil {
            self.maxAsyncRetryAttempts = dict["maxAsyncRetryAttempts"] as! Int64
        }
    }
}

public class PutConcurrencyInput : Tea.TeaModel {
    public var reservedConcurrency: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reservedConcurrency != nil {
            map["reservedConcurrency"] = self.reservedConcurrency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("reservedConcurrency") && dict["reservedConcurrency"] != nil {
            self.reservedConcurrency = dict["reservedConcurrency"] as! Int64
        }
    }
}

public class PutProvisionConfigInput : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var scheduledActions: [ScheduledAction]?

    public var target: Int64?

    public var targetTrackingPolicies: [TargetTrackingPolicy]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alwaysAllocateCPU != nil {
            map["alwaysAllocateCPU"] = self.alwaysAllocateCPU!
        }
        if self.scheduledActions != nil {
            var tmp : [Any] = []
            for k in self.scheduledActions! {
                tmp.append(k.toMap())
            }
            map["scheduledActions"] = tmp
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.targetTrackingPolicies != nil {
            var tmp : [Any] = []
            for k in self.targetTrackingPolicies! {
                tmp.append(k.toMap())
            }
            map["targetTrackingPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alwaysAllocateCPU") && dict["alwaysAllocateCPU"] != nil {
            self.alwaysAllocateCPU = dict["alwaysAllocateCPU"] as! Bool
        }
        if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
            var tmp : [ScheduledAction] = []
            for v in dict["scheduledActions"] as! [Any] {
                var model = ScheduledAction()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scheduledActions = tmp
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("targetTrackingPolicies") && dict["targetTrackingPolicies"] != nil {
            var tmp : [TargetTrackingPolicy] = []
            for v in dict["targetTrackingPolicies"] as! [Any] {
                var model = TargetTrackingPolicy()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetTrackingPolicies = tmp
        }
    }
}

public class RegexRule : Tea.TeaModel {
    public var match: String?

    public var replacement: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.match != nil {
            map["match"] = self.match!
        }
        if self.replacement != nil {
            map["replacement"] = self.replacement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("match") && dict["match"] != nil {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") && dict["replacement"] != nil {
            self.replacement = dict["replacement"] as! String
        }
    }
}

public class Resource : Tea.TeaModel {
    public var resourceArn: String?

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
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceArn") && dict["resourceArn"] != nil {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! [String: String]
        }
    }
}

public class RewriteConfig : Tea.TeaModel {
    public var equalRules: [EqualRule]?

    public var regexRules: [RegexRule]?

    public var wildcardRules: [WildcardRule]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.equalRules != nil {
            var tmp : [Any] = []
            for k in self.equalRules! {
                tmp.append(k.toMap())
            }
            map["equalRules"] = tmp
        }
        if self.regexRules != nil {
            var tmp : [Any] = []
            for k in self.regexRules! {
                tmp.append(k.toMap())
            }
            map["regexRules"] = tmp
        }
        if self.wildcardRules != nil {
            var tmp : [Any] = []
            for k in self.wildcardRules! {
                tmp.append(k.toMap())
            }
            map["wildcardRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("equalRules") && dict["equalRules"] != nil {
            var tmp : [EqualRule] = []
            for v in dict["equalRules"] as! [Any] {
                var model = EqualRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.equalRules = tmp
        }
        if dict.keys.contains("regexRules") && dict["regexRules"] != nil {
            var tmp : [RegexRule] = []
            for v in dict["regexRules"] as! [Any] {
                var model = RegexRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regexRules = tmp
        }
        if dict.keys.contains("wildcardRules") && dict["wildcardRules"] != nil {
            var tmp : [WildcardRule] = []
            for v in dict["wildcardRules"] as! [Any] {
                var model = WildcardRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.wildcardRules = tmp
        }
    }
}

public class RewriteRegexRule : Tea.TeaModel {
    public var regexStr: String?

    public var replacement: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regexStr != nil {
            map["regexStr"] = self.regexStr!
        }
        if self.replacement != nil {
            map["replacement"] = self.replacement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regexStr") && dict["regexStr"] != nil {
            self.regexStr = dict["regexStr"] as! String
        }
        if dict.keys.contains("replacement") && dict["replacement"] != nil {
            self.replacement = dict["replacement"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("routes") && dict["routes"] != nil {
            var tmp : [PathConfig] = []
            for v in dict["routes"] as! [Any] {
                var model = PathConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.routes = tmp
        }
    }
}

public class RoutePolicy : Tea.TeaModel {
    public var condition: String?

    public var policyItems: [PolicyItem]?

    public override init() {
        super.init()
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
        if self.policyItems != nil {
            var tmp : [Any] = []
            for k in self.policyItems! {
                tmp.append(k.toMap())
            }
            map["policyItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("condition") && dict["condition"] != nil {
            self.condition = dict["condition"] as! String
        }
        if dict.keys.contains("policyItems") && dict["policyItems"] != nil {
            var tmp : [PolicyItem] = []
            for v in dict["policyItems"] as! [Any] {
                var model = PolicyItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyItems = tmp
        }
    }
}

public class ScheduledAction : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var scheduleExpression: String?

    public var startTime: String?

    public var target: Int64?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.scheduleExpression != nil {
            map["scheduleExpression"] = self.scheduleExpression!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("scheduleExpression") && dict["scheduleExpression"] != nil {
            self.scheduleExpression = dict["scheduleExpression"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cipherSuites") && dict["cipherSuites"] != nil {
            self.cipherSuites = dict["cipherSuites"] as! [String]
        }
        if dict.keys.contains("maxVersion") && dict["maxVersion"] != nil {
            self.maxVersion = dict["maxVersion"] as! String
        }
        if dict.keys.contains("minVersion") && dict["minVersion"] != nil {
            self.minVersion = dict["minVersion"] as! String
        }
    }
}

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

public class TagResourceInput : Tea.TeaModel {
    public var resourceArn: String?

    public var resourceType: String?

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
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceArn") && dict["resourceArn"] != nil {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! [String: String]
        }
    }
}

public class TargetTrackingPolicy : Tea.TeaModel {
    public var endTime: String?

    public var maxCapacity: Int64?

    public var metricTarget: Double?

    public var metricType: String?

    public var minCapacity: Int64?

    public var name: String?

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
            map["endTime"] = self.endTime!
        }
        if self.maxCapacity != nil {
            map["maxCapacity"] = self.maxCapacity!
        }
        if self.metricTarget != nil {
            map["metricTarget"] = self.metricTarget!
        }
        if self.metricType != nil {
            map["metricType"] = self.metricType!
        }
        if self.minCapacity != nil {
            map["minCapacity"] = self.minCapacity!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("maxCapacity") && dict["maxCapacity"] != nil {
            self.maxCapacity = dict["maxCapacity"] as! Int64
        }
        if dict.keys.contains("metricTarget") && dict["metricTarget"] != nil {
            self.metricTarget = dict["metricTarget"] as! Double
        }
        if dict.keys.contains("metricType") && dict["metricType"] != nil {
            self.metricType = dict["metricType"] as! String
        }
        if dict.keys.contains("minCapacity") && dict["minCapacity"] != nil {
            self.minCapacity = dict["minCapacity"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! String
        }
    }
}

public class TracingConfig : Tea.TeaModel {
    public var params: [String: String]?

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
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("params") && dict["params"] != nil {
            self.params = dict["params"] as! [String: String]
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class Trigger : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var httpTrigger: HTTPTrigger?

    public var invocationRole: String?

    public var lastModifiedTime: String?

    public var qualifier: String?

    public var sourceArn: String?

    public var status: String?

    public var targetArn: String?

    public var triggerConfig: String?

    public var triggerId: String?

    public var triggerName: String?

    public var triggerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpTrigger?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.invocationRole != nil {
            map["invocationRole"] = self.invocationRole!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.sourceArn != nil {
            map["sourceArn"] = self.sourceArn!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.targetArn != nil {
            map["targetArn"] = self.targetArn!
        }
        if self.triggerConfig != nil {
            map["triggerConfig"] = self.triggerConfig!
        }
        if self.triggerId != nil {
            map["triggerId"] = self.triggerId!
        }
        if self.triggerName != nil {
            map["triggerName"] = self.triggerName!
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("httpTrigger") && dict["httpTrigger"] != nil {
            var model = HTTPTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("invocationRole") && dict["invocationRole"] != nil {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sourceArn") && dict["sourceArn"] != nil {
            self.sourceArn = dict["sourceArn"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("targetArn") && dict["targetArn"] != nil {
            self.targetArn = dict["targetArn"] as! String
        }
        if dict.keys.contains("triggerConfig") && dict["triggerConfig"] != nil {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
        if dict.keys.contains("triggerId") && dict["triggerId"] != nil {
            self.triggerId = dict["triggerId"] as! String
        }
        if dict.keys.contains("triggerName") && dict["triggerName"] != nil {
            self.triggerName = dict["triggerName"] as! String
        }
        if dict.keys.contains("triggerType") && dict["triggerType"] != nil {
            self.triggerType = dict["triggerType"] as! String
        }
    }
}

public class UpdateAliasInput : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var description_: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalVersionWeight != nil {
            map["additionalVersionWeight"] = self.additionalVersionWeight!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalVersionWeight") && dict["additionalVersionWeight"] != nil {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class UpdateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var protocol_: String?

    public var routeConfig: RouteConfig?

    public var tlsConfig: TLSConfig?

    public var wafConfig: WAFConfig?

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
        try self.wafConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
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
        if self.wafConfig != nil {
            map["wafConfig"] = self.wafConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("certConfig") && dict["certConfig"] != nil {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") && dict["routeConfig"] != nil {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("tlsConfig") && dict["tlsConfig"] != nil {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") && dict["wafConfig"] != nil {
            var model = WAFConfig()
            model.fromMap(dict["wafConfig"] as! [String: Any])
            self.wafConfig = model
        }
    }
}

public class UpdateFunctionInput : Tea.TeaModel {
    public var code: InputCodeLocation?

    public var cpu: Double?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var gpuConfig: GPUConfig?

    public var handler: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var internetAccess: Bool?

    public var layers: [String]?

    public var logConfig: LogConfig?

    public var memorySize: Int32?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var runtime: String?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

    public var vpcBinding: VPCBinding?

    public var vpcConfig: VPCConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.code?.validate()
        try self.customContainerConfig?.validate()
        try self.customDNS?.validate()
        try self.customRuntimeConfig?.validate()
        try self.gpuConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcBinding?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.customDNS != nil {
            map["customDNS"] = self.customDNS?.toMap()
        }
        if self.customRuntimeConfig != nil {
            map["customRuntimeConfig"] = self.customRuntimeConfig?.toMap()
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
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcBinding != nil {
            map["vpcBinding"] = self.vpcBinding?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("customContainerConfig") && dict["customContainerConfig"] != nil {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") && dict["customDNS"] != nil {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") && dict["customRuntimeConfig"] != nil {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") && dict["diskSize"] != nil {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("environmentVariables") && dict["environmentVariables"] != nil {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("gpuConfig") && dict["gpuConfig"] != nil {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") && dict["nasConfig"] != nil {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") && dict["ossMountConfig"] != nil {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcBinding") && dict["vpcBinding"] != nil {
            var model = VPCBinding()
            model.fromMap(dict["vpcBinding"] as! [String: Any])
            self.vpcBinding = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class UpdateTriggerInput : Tea.TeaModel {
    public var description_: String?

    public var invocationRole: String?

    public var qualifier: String?

    public var triggerConfig: String?

    public override init() {
        super.init()
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
        if self.invocationRole != nil {
            map["invocationRole"] = self.invocationRole!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.triggerConfig != nil {
            map["triggerConfig"] = self.triggerConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("invocationRole") && dict["invocationRole"] != nil {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("triggerConfig") && dict["triggerConfig"] != nil {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
    }
}

public class VPCBinding : Tea.TeaModel {
    public var vpcIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vpcIds != nil {
            map["vpcIds"] = self.vpcIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("vpcIds") && dict["vpcIds"] != nil {
            self.vpcIds = dict["vpcIds"] as! [String]
        }
    }
}

public class VPCConfig : Tea.TeaModel {
    public var securityGroupId: String?

    public var vSwitchIds: [String]?

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
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchIds != nil {
            map["vSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("securityGroupId") && dict["securityGroupId"] != nil {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
        if dict.keys.contains("vSwitchIds") && dict["vSwitchIds"] != nil {
            self.vSwitchIds = dict["vSwitchIds"] as! [String]
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
        }
    }
}

public class Version : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var functionVersionArn: String?

    public var lastModifiedTime: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.functionVersionArn != nil {
            map["functionVersionArn"] = self.functionVersionArn!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("functionVersionArn") && dict["functionVersionArn"] != nil {
            self.functionVersionArn = dict["functionVersionArn"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class WAFConfig : Tea.TeaModel {
    public var enableWAF: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableWAF != nil {
            map["enableWAF"] = self.enableWAF!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enableWAF") && dict["enableWAF"] != nil {
            self.enableWAF = dict["enableWAF"] as! Bool
        }
    }
}

public class WildcardRule : Tea.TeaModel {
    public var match: String?

    public var replacement: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.match != nil {
            map["match"] = self.match!
        }
        if self.replacement != nil {
            map["replacement"] = self.replacement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("match") && dict["match"] != nil {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") && dict["replacement"] != nil {
            self.replacement = dict["replacement"] as! String
        }
    }
}

public class CreateAliasRequest : Tea.TeaModel {
    public var body: CreateAliasInput?

    public override init() {
        super.init()
    }

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
            var model = CreateAliasInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Alias?

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
            var model = Alias()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateCustomDomainInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomain?

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
            var model = CustomDomain()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionRequest : Tea.TeaModel {
    public var body: CreateFunctionInput?

    public override init() {
        super.init()
    }

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
            var model = CreateFunctionInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Function?

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
            var model = Function()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLayerVersionRequest : Tea.TeaModel {
    public var body: CreateLayerVersionInput?

    public override init() {
        super.init()
    }

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
            var model = CreateLayerVersionInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLayerVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Layer?

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
            var model = Layer()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTriggerRequest : Tea.TeaModel {
    public var body: CreateTriggerInput?

    public override init() {
        super.init()
    }

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
            var model = CreateTriggerInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Trigger?

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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAliasResponse : Tea.TeaModel {
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

public class DeleteAsyncInvokeConfigRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class DeleteAsyncInvokeConfigResponse : Tea.TeaModel {
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

public class DeleteConcurrencyConfigResponse : Tea.TeaModel {
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

public class DeleteCustomDomainResponse : Tea.TeaModel {
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

public class DeleteFunctionResponse : Tea.TeaModel {
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

public class DeleteFunctionVersionResponse : Tea.TeaModel {
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

public class DeleteLayerVersionResponse : Tea.TeaModel {
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

public class DeleteProvisionConfigRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class DeleteProvisionConfigResponse : Tea.TeaModel {
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

public class DeleteTriggerResponse : Tea.TeaModel {
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

public class GetAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Alias?

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
            var model = Alias()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsyncInvokeConfigRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class GetAsyncInvokeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsyncConfig?

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
            var model = AsyncConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConcurrencyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConcurrencyConfig?

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
            var model = ConcurrencyConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomain?

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
            var model = CustomDomain()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class GetFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Function?

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
            var model = Function()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionCodeRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class GetFunctionCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OutputFuncCode?

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
            var model = OutputFuncCode()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLayerVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Layer?

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
            var model = Layer()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLayerVersionByArnResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Layer?

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
            var model = Layer()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProvisionConfigRequest : Tea.TeaModel {
    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class GetProvisionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProvisionConfig?

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
            var model = ProvisionConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceTagsRequest : Tea.TeaModel {
    public var arn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arn") && dict["arn"] != nil {
            self.arn = dict["arn"] as! String
        }
    }
}

public class GetResourceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTagsOutput?

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
            var model = GetResourceTagsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Trigger?

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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcInvocationType: String?

    public var xFcLogType: String?

    public override init() {
        super.init()
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
        if self.xFcInvocationType != nil {
            map["x-fc-invocation-type"] = self.xFcInvocationType!
        }
        if self.xFcLogType != nil {
            map["x-fc-log-type"] = self.xFcLogType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-fc-invocation-type") && dict["x-fc-invocation-type"] != nil {
            self.xFcInvocationType = dict["x-fc-invocation-type"] as! String
        }
        if dict.keys.contains("x-fc-log-type") && dict["x-fc-log-type"] != nil {
            self.xFcLogType = dict["x-fc-log-type"] as! String
        }
    }
}

public class InvokeFunctionRequest : Tea.TeaModel {
    public var body: InputStream?

    public var qualifier: String?

    public override init() {
        super.init()
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
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! InputStream
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class InvokeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InputStream?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! InputStream
        }
    }
}

public class ListAliasesRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
    }
}

public class ListAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAliasesOutput?

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
            var model = ListAliasesOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsyncInvokeConfigsRequest : Tea.TeaModel {
    public var functionName: String?

    public var limit: Int32?

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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListAsyncInvokeConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsyncInvokeConfigOutput?

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
            var model = ListAsyncInvokeConfigOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConcurrencyConfigsRequest : Tea.TeaModel {
    public var functionName: String?

    public var limit: Int32?

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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListConcurrencyConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConcurrencyConfigsOutput?

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
            var model = ListConcurrencyConfigsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomDomainsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
    }
}

public class ListCustomDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomDomainOutput?

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
            var model = ListCustomDomainOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionVersionsRequest : Tea.TeaModel {
    public var direction: String?

    public var limit: Int32?

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
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("direction") && dict["direction"] != nil {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListFunctionVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVersionsOutput?

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
            var model = ListVersionsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
    }
}

public class ListFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionsOutput?

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
            var model = ListFunctionsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var qualifier: String?

    public var withAllActive: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.withAllActive != nil {
            map["withAllActive"] = self.withAllActive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("withAllActive") && dict["withAllActive"] != nil {
            self.withAllActive = dict["withAllActive"] as! Bool
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesOutput?

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
            var model = ListInstancesOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLayerVersionsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var startVersion: String?

    public override init() {
        super.init()
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
        if self.startVersion != nil {
            map["startVersion"] = self.startVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("startVersion") && dict["startVersion"] != nil {
            self.startVersion = dict["startVersion"] as! String
        }
    }
}

public class ListLayerVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLayerVersionOutput?

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
            var model = ListLayerVersionOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLayersRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var official: String?

    public var prefix_: String?

    public var public_: String?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.official != nil {
            map["official"] = self.official!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("official") && dict["official"] != nil {
            self.official = dict["official"] as! String
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! String
        }
    }
}

public class ListLayersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLayersOutput?

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
            var model = ListLayersOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProvisionConfigsRequest : Tea.TeaModel {
    public var functionName: String?

    public var limit: Int32?

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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListProvisionConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvisionConfigsOutput?

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
            var model = ListProvisionConfigsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaggedResourcesRequest : Tea.TeaModel {
    public var limit: Int32?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListTaggedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaggedResourcesOutput?

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
            var model = ListTaggedResourcesOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTriggersRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
    }
}

public class ListTriggersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTriggersOutput?

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
            var model = ListTriggersOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishFunctionVersionRequest : Tea.TeaModel {
    public var body: PublishVersionInput?

    public override init() {
        super.init()
    }

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
            var model = PublishVersionInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishFunctionVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Version?

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
            var model = Version()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutAsyncInvokeConfigRequest : Tea.TeaModel {
    public var body: PutAsyncInvokeConfigInput?

    public var qualifier: String?

    public override init() {
        super.init()
    }

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
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PutAsyncInvokeConfigInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class PutAsyncInvokeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsyncConfig?

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
            var model = AsyncConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutConcurrencyConfigRequest : Tea.TeaModel {
    public var body: PutConcurrencyInput?

    public override init() {
        super.init()
    }

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
            var model = PutConcurrencyInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutConcurrencyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConcurrencyConfig?

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
            var model = ConcurrencyConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutLayerACLRequest : Tea.TeaModel {
    public var public_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! String
        }
    }
}

public class PutLayerACLResponse : Tea.TeaModel {
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

public class PutProvisionConfigRequest : Tea.TeaModel {
    public var body: PutProvisionConfigInput?

    public var qualifier: String?

    public override init() {
        super.init()
    }

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
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PutProvisionConfigInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class PutProvisionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProvisionConfig?

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
            var model = ProvisionConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourceRequest : Tea.TeaModel {
    public var body: TagResourceInput?

    public override init() {
        super.init()
    }

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
            var model = TagResourceInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Tag?

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
            var model = Tag()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourceRequest : Tea.TeaModel {
    public var all: Bool?

    public var arn: String?

    public var tagKeys: String?

    public override init() {
        super.init()
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
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.tagKeys != nil {
            map["tagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") && dict["all"] != nil {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("arn") && dict["arn"] != nil {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("tagKeys") && dict["tagKeys"] != nil {
            self.tagKeys = dict["tagKeys"] as! String
        }
    }
}

public class UntagResourceResponse : Tea.TeaModel {
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

public class UpdateAliasRequest : Tea.TeaModel {
    public var body: UpdateAliasInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateAliasInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Alias?

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
            var model = Alias()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateCustomDomainInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomDomain?

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
            var model = CustomDomain()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFunctionRequest : Tea.TeaModel {
    public var body: UpdateFunctionInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateFunctionInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Function?

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
            var model = Function()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTriggerRequest : Tea.TeaModel {
    public var body: UpdateTriggerInput?

    public override init() {
        super.init()
    }

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
            var model = UpdateTriggerInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Trigger?

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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
