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
        if dict.keys.contains("status") {
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
        if dict.keys.contains("additionalVersionWeight") {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("aliasName") {
            self.aliasName = dict["aliasName"] as! String
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("versionId") {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class AsyncConfig : Tea.TeaModel {
    public var asyncTask: Bool?

    public var createdTime: String?

    public var destinationConfig: DestinationConfig?

    public var functionArn: String?

    public var lastModifiedTime: String?

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
        if self.asyncTask != nil {
            map["asyncTask"] = self.asyncTask!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.destinationConfig != nil {
            map["destinationConfig"] = self.destinationConfig?.toMap()
        }
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("asyncTask") {
            self.asyncTask = dict["asyncTask"] as! Bool
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("destinationConfig") {
            var model = DestinationConfig()
            model.fromMap(dict["destinationConfig"] as! [String: Any])
            self.destinationConfig = model
        }
        if dict.keys.contains("functionArn") {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("maxAsyncEventAgeInSeconds") {
            self.maxAsyncEventAgeInSeconds = dict["maxAsyncEventAgeInSeconds"] as! Int64
        }
        if dict.keys.contains("maxAsyncRetryAttempts") {
            self.maxAsyncRetryAttempts = dict["maxAsyncRetryAttempts"] as! Int64
        }
    }
}

public class AsyncTask : Tea.TeaModel {
    public var alreadyRetriedTimes: Int64?

    public var destinationStatus: String?

    public var durationMs: Int64?

    public var endTime: Int64?

    public var events: [AsyncTaskEvent]?

    public var functionArn: String?

    public var instanceId: String?

    public var qualifier: String?

    public var requestId: String?

    public var returnPayload: String?

    public var startedTime: Int64?

    public var status: String?

    public var taskErrorMessage: String?

    public var taskId: String?

    public var taskPayload: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alreadyRetriedTimes != nil {
            map["alreadyRetriedTimes"] = self.alreadyRetriedTimes!
        }
        if self.destinationStatus != nil {
            map["destinationStatus"] = self.destinationStatus!
        }
        if self.durationMs != nil {
            map["durationMs"] = self.durationMs!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.returnPayload != nil {
            map["returnPayload"] = self.returnPayload!
        }
        if self.startedTime != nil {
            map["startedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskErrorMessage != nil {
            map["taskErrorMessage"] = self.taskErrorMessage!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskPayload != nil {
            map["taskPayload"] = self.taskPayload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alreadyRetriedTimes") {
            self.alreadyRetriedTimes = dict["alreadyRetriedTimes"] as! Int64
        }
        if dict.keys.contains("destinationStatus") {
            self.destinationStatus = dict["destinationStatus"] as! String
        }
        if dict.keys.contains("durationMs") {
            self.durationMs = dict["durationMs"] as! Int64
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("events") {
            var tmp : [AsyncTaskEvent] = []
            for v in dict["events"] as! [Any] {
                var model = AsyncTaskEvent()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("functionArn") {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("returnPayload") {
            self.returnPayload = dict["returnPayload"] as! String
        }
        if dict.keys.contains("startedTime") {
            self.startedTime = dict["startedTime"] as! Int64
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("taskErrorMessage") {
            self.taskErrorMessage = dict["taskErrorMessage"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("taskPayload") {
            self.taskPayload = dict["taskPayload"] as! String
        }
    }
}

public class AsyncTaskEvent : Tea.TeaModel {
    public var eventDetail: String?

    public var eventId: Int64?

    public var status: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventDetail != nil {
            map["eventDetail"] = self.eventDetail!
        }
        if self.eventId != nil {
            map["eventId"] = self.eventId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventDetail") {
            self.eventDetail = dict["eventDetail"] as! String
        }
        if dict.keys.contains("eventId") {
            self.eventId = dict["eventId"] as! Int64
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("timestamp") {
            self.timestamp = dict["timestamp"] as! Int64
        }
    }
}

public class AuthConfig : Tea.TeaModel {
    public var authInfo: String?

    public var authType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authInfo != nil {
            map["authInfo"] = self.authInfo!
        }
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authInfo") {
            self.authInfo = dict["authInfo"] as! String
        }
        if dict.keys.contains("authType") {
            self.authType = dict["authType"] as! String
        }
    }
}

public class BatchWindow : Tea.TeaModel {
    public var countBasedWindow: Int32?

    public var timeBasedWindow: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.countBasedWindow != nil {
            map["CountBasedWindow"] = self.countBasedWindow!
        }
        if self.timeBasedWindow != nil {
            map["TimeBasedWindow"] = self.timeBasedWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountBasedWindow") {
            self.countBasedWindow = dict["CountBasedWindow"] as! Int32
        }
        if dict.keys.contains("TimeBasedWindow") {
            self.timeBasedWindow = dict["TimeBasedWindow"] as! Int32
        }
    }
}

public class CDNTriggerConfig : Tea.TeaModel {
    public var eventName: String?

    public var eventVersion: String?

    public var filter: [String: [String]]?

    public var notes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventName != nil {
            map["eventName"] = self.eventName!
        }
        if self.eventVersion != nil {
            map["eventVersion"] = self.eventVersion!
        }
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventName") {
            self.eventName = dict["eventName"] as! String
        }
        if dict.keys.contains("eventVersion") {
            self.eventVersion = dict["eventVersion"] as! String
        }
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! [String: [String]]
        }
        if dict.keys.contains("notes") {
            self.notes = dict["notes"] as! String
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
        if dict.keys.contains("certName") {
            self.certName = dict["certName"] as! String
        }
        if dict.keys.contains("certificate") {
            self.certificate = dict["certificate"] as! String
        }
        if dict.keys.contains("privateKey") {
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
        if dict.keys.contains("functionArn") {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("reservedConcurrency") {
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
        if dict.keys.contains("additionalVersionWeight") {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("aliasName") {
            self.aliasName = dict["aliasName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("versionId") {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class CreateCustomDomainInput : Tea.TeaModel {
    public var authConfig: AuthConfig?

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
        try self.authConfig?.validate()
        try self.certConfig?.validate()
        try self.routeConfig?.validate()
        try self.tlsConfig?.validate()
        try self.wafConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
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
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("certConfig") {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("domainName") {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("tlsConfig") {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") {
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

    public var disableOndemand: Bool?

    public var diskSize: Int32?

    public var enableLongLiving: Bool?

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

    public var sessionAffinity: String?

    public var tags: [Tag]?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

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
        if self.disableOndemand != nil {
            map["disableOndemand"] = self.disableOndemand!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.enableLongLiving != nil {
            map["enableLongLiving"] = self.enableLongLiving!
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
        if self.sessionAffinity != nil {
            map["sessionAffinity"] = self.sessionAffinity!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("customContainerConfig") {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("disableOndemand") {
            self.disableOndemand = dict["disableOndemand"] as! Bool
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("enableLongLiving") {
            self.enableLongLiving = dict["enableLongLiving"] as! Bool
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuConfig") {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("layers") {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("logConfig") {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("sessionAffinity") {
            self.sessionAffinity = dict["sessionAffinity"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") {
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
        if dict.keys.contains("code") {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("compatibleRuntime") {
            self.compatibleRuntime = dict["compatibleRuntime"] as! [String]
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("license") {
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
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("invocationRole") {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sourceArn") {
            self.sourceArn = dict["sourceArn"] as! String
        }
        if dict.keys.contains("triggerConfig") {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
        if dict.keys.contains("triggerName") {
            self.triggerName = dict["triggerName"] as! String
        }
        if dict.keys.contains("triggerType") {
            self.triggerType = dict["triggerType"] as! String
        }
    }
}

public class CreateVpcBindingInput : Tea.TeaModel {
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
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("vpcId") {
            self.vpcId = dict["vpcId"] as! String
        }
    }
}

public class CustomContainerConfig : Tea.TeaModel {
    public var accelerationInfo: AccelerationInfo?

    public var accelerationType: String?

    public var acrInstanceId: String?

    public var command: [String]?

    public var entrypoint: [String]?

    public var healthCheckConfig: CustomHealthCheckConfig?

    public var image: String?

    public var port: Int32?

    public var registryConfig: RegistryConfig?

    public var resolvedImageUri: String?

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
        try self.registryConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerationInfo != nil {
            map["accelerationInfo"] = self.accelerationInfo?.toMap()
        }
        if self.accelerationType != nil {
            map["accelerationType"] = self.accelerationType!
        }
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
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
        if self.registryConfig != nil {
            map["registryConfig"] = self.registryConfig?.toMap()
        }
        if self.resolvedImageUri != nil {
            map["resolvedImageUri"] = self.resolvedImageUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accelerationInfo") {
            var model = AccelerationInfo()
            model.fromMap(dict["accelerationInfo"] as! [String: Any])
            self.accelerationInfo = model
        }
        if dict.keys.contains("accelerationType") {
            self.accelerationType = dict["accelerationType"] as! String
        }
        if dict.keys.contains("acrInstanceId") {
            self.acrInstanceId = dict["acrInstanceId"] as! String
        }
        if dict.keys.contains("command") {
            self.command = dict["command"] as! [String]
        }
        if dict.keys.contains("entrypoint") {
            self.entrypoint = dict["entrypoint"] as! [String]
        }
        if dict.keys.contains("healthCheckConfig") {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["healthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("image") {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("port") {
            self.port = dict["port"] as! Int32
        }
        if dict.keys.contains("registryConfig") {
            var model = RegistryConfig()
            model.fromMap(dict["registryConfig"] as! [String: Any])
            self.registryConfig = model
        }
        if dict.keys.contains("resolvedImageUri") {
            self.resolvedImageUri = dict["resolvedImageUri"] as! String
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
        if dict.keys.contains("dnsOptions") {
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
        if dict.keys.contains("nameServers") {
            self.nameServers = dict["nameServers"] as! [String]
        }
        if dict.keys.contains("searches") {
            self.searches = dict["searches"] as! [String]
        }
    }
}

public class CustomDomain : Tea.TeaModel {
    public var accountId: String?

    public var apiVersion: String?

    public var authConfig: AuthConfig?

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
        try self.authConfig?.validate()
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
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
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
        if dict.keys.contains("accountId") {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("apiVersion") {
            self.apiVersion = dict["apiVersion"] as! String
        }
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("certConfig") {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("domainName") {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("subdomainCount") {
            self.subdomainCount = dict["subdomainCount"] as! String
        }
        if dict.keys.contains("tlsConfig") {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") {
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
        if dict.keys.contains("failureThreshold") {
            self.failureThreshold = dict["failureThreshold"] as! Int32
        }
        if dict.keys.contains("httpGetUrl") {
            self.httpGetUrl = dict["httpGetUrl"] as! String
        }
        if dict.keys.contains("initialDelaySeconds") {
            self.initialDelaySeconds = dict["initialDelaySeconds"] as! Int32
        }
        if dict.keys.contains("periodSeconds") {
            self.periodSeconds = dict["periodSeconds"] as! Int32
        }
        if dict.keys.contains("successThreshold") {
            self.successThreshold = dict["successThreshold"] as! Int32
        }
        if dict.keys.contains("timeoutSeconds") {
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
        if dict.keys.contains("args") {
            self.args = dict["args"] as! [String]
        }
        if dict.keys.contains("command") {
            self.command = dict["command"] as! [String]
        }
        if dict.keys.contains("healthCheckConfig") {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["healthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("port") {
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
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class DeadLetterQueue : Tea.TeaModel {
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
            map["Arn"] = self.arn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") {
            self.arn = dict["Arn"] as! String
        }
    }
}

public class DeliveryOption : Tea.TeaModel {
    public var concurrency: Int64?

    public var eventSchema: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.eventSchema != nil {
            map["eventSchema"] = self.eventSchema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("concurrency") {
            self.concurrency = dict["concurrency"] as! Int64
        }
        if dict.keys.contains("eventSchema") {
            self.eventSchema = dict["eventSchema"] as! String
        }
    }
}

public class DescribeRegionsOutput : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsOutput.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                var tmp : [DescribeRegionsOutput.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsOutput.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsOutput.Regions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsOutput.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
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
        if dict.keys.contains("destination") {
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
        if dict.keys.contains("onFailure") {
            var model = Destination()
            model.fromMap(dict["onFailure"] as! [String: Any])
            self.onFailure = model
        }
        if dict.keys.contains("onSuccess") {
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
        if dict.keys.contains("match") {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") {
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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EventBridgeTriggerConfig : Tea.TeaModel {
    public var asyncInvocationType: Bool?

    public var eventRuleFilterPattern: String?

    public var eventSinkConfig: EventSinkConfig?

    public var eventSourceConfig: EventSourceConfig?

    public var runOptions: RunOptions?

    public var triggerEnable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.eventSinkConfig?.validate()
        try self.eventSourceConfig?.validate()
        try self.runOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asyncInvocationType != nil {
            map["asyncInvocationType"] = self.asyncInvocationType!
        }
        if self.eventRuleFilterPattern != nil {
            map["eventRuleFilterPattern"] = self.eventRuleFilterPattern!
        }
        if self.eventSinkConfig != nil {
            map["eventSinkConfig"] = self.eventSinkConfig?.toMap()
        }
        if self.eventSourceConfig != nil {
            map["eventSourceConfig"] = self.eventSourceConfig?.toMap()
        }
        if self.runOptions != nil {
            map["runOptions"] = self.runOptions?.toMap()
        }
        if self.triggerEnable != nil {
            map["triggerEnable"] = self.triggerEnable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("asyncInvocationType") {
            self.asyncInvocationType = dict["asyncInvocationType"] as! Bool
        }
        if dict.keys.contains("eventRuleFilterPattern") {
            self.eventRuleFilterPattern = dict["eventRuleFilterPattern"] as! String
        }
        if dict.keys.contains("eventSinkConfig") {
            var model = EventSinkConfig()
            model.fromMap(dict["eventSinkConfig"] as! [String: Any])
            self.eventSinkConfig = model
        }
        if dict.keys.contains("eventSourceConfig") {
            var model = EventSourceConfig()
            model.fromMap(dict["eventSourceConfig"] as! [String: Any])
            self.eventSourceConfig = model
        }
        if dict.keys.contains("runOptions") {
            var model = RunOptions()
            model.fromMap(dict["runOptions"] as! [String: Any])
            self.runOptions = model
        }
        if dict.keys.contains("triggerEnable") {
            self.triggerEnable = dict["triggerEnable"] as! Bool
        }
    }
}

public class EventSinkConfig : Tea.TeaModel {
    public var deliveryOption: DeliveryOption?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliveryOption?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryOption != nil {
            map["deliveryOption"] = self.deliveryOption?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deliveryOption") {
            var model = DeliveryOption()
            model.fromMap(dict["deliveryOption"] as! [String: Any])
            self.deliveryOption = model
        }
    }
}

public class EventSourceConfig : Tea.TeaModel {
    public var eventSourceParameters: EventSourceParameters?

    public var eventSourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.eventSourceParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventSourceParameters != nil {
            map["eventSourceParameters"] = self.eventSourceParameters?.toMap()
        }
        if self.eventSourceType != nil {
            map["eventSourceType"] = self.eventSourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventSourceParameters") {
            var model = EventSourceParameters()
            model.fromMap(dict["eventSourceParameters"] as! [String: Any])
            self.eventSourceParameters = model
        }
        if dict.keys.contains("eventSourceType") {
            self.eventSourceType = dict["eventSourceType"] as! String
        }
    }
}

public class EventSourceParameters : Tea.TeaModel {
    public var sourceDTSParameters: SourceDTSParameters?

    public var sourceKafkaParameters: SourceKafkaParameters?

    public var sourceMNSParameters: SourceMNSParameters?

    public var sourceMQTTParameters: SourceMQTTParameters?

    public var sourceRabbitMQParameters: SourceRabbitMQParameters?

    public var sourceRocketMQParameters: SourceRocketMQParameters?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceDTSParameters?.validate()
        try self.sourceKafkaParameters?.validate()
        try self.sourceMNSParameters?.validate()
        try self.sourceMQTTParameters?.validate()
        try self.sourceRabbitMQParameters?.validate()
        try self.sourceRocketMQParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDTSParameters != nil {
            map["sourceDTSParameters"] = self.sourceDTSParameters?.toMap()
        }
        if self.sourceKafkaParameters != nil {
            map["sourceKafkaParameters"] = self.sourceKafkaParameters?.toMap()
        }
        if self.sourceMNSParameters != nil {
            map["sourceMNSParameters"] = self.sourceMNSParameters?.toMap()
        }
        if self.sourceMQTTParameters != nil {
            map["sourceMQTTParameters"] = self.sourceMQTTParameters?.toMap()
        }
        if self.sourceRabbitMQParameters != nil {
            map["sourceRabbitMQParameters"] = self.sourceRabbitMQParameters?.toMap()
        }
        if self.sourceRocketMQParameters != nil {
            map["sourceRocketMQParameters"] = self.sourceRocketMQParameters?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sourceDTSParameters") {
            var model = SourceDTSParameters()
            model.fromMap(dict["sourceDTSParameters"] as! [String: Any])
            self.sourceDTSParameters = model
        }
        if dict.keys.contains("sourceKafkaParameters") {
            var model = SourceKafkaParameters()
            model.fromMap(dict["sourceKafkaParameters"] as! [String: Any])
            self.sourceKafkaParameters = model
        }
        if dict.keys.contains("sourceMNSParameters") {
            var model = SourceMNSParameters()
            model.fromMap(dict["sourceMNSParameters"] as! [String: Any])
            self.sourceMNSParameters = model
        }
        if dict.keys.contains("sourceMQTTParameters") {
            var model = SourceMQTTParameters()
            model.fromMap(dict["sourceMQTTParameters"] as! [String: Any])
            self.sourceMQTTParameters = model
        }
        if dict.keys.contains("sourceRabbitMQParameters") {
            var model = SourceRabbitMQParameters()
            model.fromMap(dict["sourceRabbitMQParameters"] as! [String: Any])
            self.sourceRabbitMQParameters = model
        }
        if dict.keys.contains("sourceRocketMQParameters") {
            var model = SourceRocketMQParameters()
            model.fromMap(dict["sourceRocketMQParameters"] as! [String: Any])
            self.sourceRocketMQParameters = model
        }
    }
}

public class Filter : Tea.TeaModel {
    public var key: Key?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.key?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["key"] = self.key?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            var model = Key()
            model.fromMap(dict["key"] as! [String: Any])
            self.key = model
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

    public var disableOndemand: Bool?

    public var diskSize: Int32?

    public var enableLongLiving: Bool?

    public var environmentVariables: [String: String]?

    public var functionArn: String?

    public var functionId: String?

    public var functionName: String?

    public var gpuConfig: GPUConfig?

    public var handler: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var internetAccess: Bool?

    public var invocationRestriction: FunctionRestriction?

    public var lastModifiedTime: String?

    public var lastUpdateStatus: String?

    public var lastUpdateStatusReason: String?

    public var lastUpdateStatusReasonCode: String?

    public var layers: [FunctionLayer]?

    public var logConfig: LogConfig?

    public var memorySize: Int32?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var runtime: String?

    public var sessionAffinity: String?

    public var state: String?

    public var stateReason: String?

    public var stateReasonCode: String?

    public var tags: [Tag]?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

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
        try self.invocationRestriction?.validate()
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
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
        if self.disableOndemand != nil {
            map["disableOndemand"] = self.disableOndemand!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.enableLongLiving != nil {
            map["enableLongLiving"] = self.enableLongLiving!
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
        if self.invocationRestriction != nil {
            map["invocationRestriction"] = self.invocationRestriction?.toMap()
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.lastUpdateStatus != nil {
            map["lastUpdateStatus"] = self.lastUpdateStatus!
        }
        if self.lastUpdateStatusReason != nil {
            map["lastUpdateStatusReason"] = self.lastUpdateStatusReason!
        }
        if self.lastUpdateStatusReasonCode != nil {
            map["lastUpdateStatusReasonCode"] = self.lastUpdateStatusReasonCode!
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
        if self.sessionAffinity != nil {
            map["sessionAffinity"] = self.sessionAffinity!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.stateReason != nil {
            map["stateReason"] = self.stateReason!
        }
        if self.stateReasonCode != nil {
            map["stateReasonCode"] = self.stateReasonCode!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("codeChecksum") {
            self.codeChecksum = dict["codeChecksum"] as! String
        }
        if dict.keys.contains("codeSize") {
            self.codeSize = dict["codeSize"] as! Int64
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("customContainerConfig") {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("disableOndemand") {
            self.disableOndemand = dict["disableOndemand"] as! Bool
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("enableLongLiving") {
            self.enableLongLiving = dict["enableLongLiving"] as! Bool
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("functionArn") {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("functionId") {
            self.functionId = dict["functionId"] as! String
        }
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuConfig") {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("invocationRestriction") {
            var model = FunctionRestriction()
            model.fromMap(dict["invocationRestriction"] as! [String: Any])
            self.invocationRestriction = model
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("lastUpdateStatus") {
            self.lastUpdateStatus = dict["lastUpdateStatus"] as! String
        }
        if dict.keys.contains("lastUpdateStatusReason") {
            self.lastUpdateStatusReason = dict["lastUpdateStatusReason"] as! String
        }
        if dict.keys.contains("lastUpdateStatusReasonCode") {
            self.lastUpdateStatusReasonCode = dict["lastUpdateStatusReasonCode"] as! String
        }
        if dict.keys.contains("layers") {
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
        if dict.keys.contains("logConfig") {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("sessionAffinity") {
            self.sessionAffinity = dict["sessionAffinity"] as! String
        }
        if dict.keys.contains("state") {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("stateReason") {
            self.stateReason = dict["stateReason"] as! String
        }
        if dict.keys.contains("stateReasonCode") {
            self.stateReasonCode = dict["stateReasonCode"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") {
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
        if dict.keys.contains("arn") {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int64
        }
    }
}

public class FunctionRestriction : Tea.TeaModel {
    public var disable: Bool?

    public var lastModifiedTime: String?

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
        if self.disable != nil {
            map["disable"] = self.disable!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("disable") {
            self.disable = dict["disable"] as! Bool
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
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
        if dict.keys.contains("gpuMemorySize") {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("gpuType") {
            self.gpuType = dict["gpuType"] as! String
        }
    }
}

public class GetInstanceLifecycleEventsOutput : Tea.TeaModel {
    public var events: [InstanceEventItem]?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("events") {
            var tmp : [InstanceEventItem] = []
            for v in dict["events"] as! [Any] {
                var model = InstanceEventItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetResourceTagsOutput : Tea.TeaModel {
    public var resouceType: String?

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
        if self.resouceType != nil {
            map["resouceType"] = self.resouceType!
        }
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resouceType") {
            self.resouceType = dict["resouceType"] as! String
        }
        if dict.keys.contains("resourceArn") {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tags") {
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
        if dict.keys.contains("urlInternet") {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") {
            self.urlIntranet = dict["urlIntranet"] as! String
        }
    }
}

public class HTTPTriggerConfig : Tea.TeaModel {
    public var authConfig: String?

    public var authType: String?

    public var disableURLInternet: Bool?

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
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig!
        }
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.disableURLInternet != nil {
            map["disableURLInternet"] = self.disableURLInternet!
        }
        if self.methods != nil {
            map["methods"] = self.methods!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            self.authConfig = dict["authConfig"] as! String
        }
        if dict.keys.contains("authType") {
            self.authType = dict["authType"] as! String
        }
        if dict.keys.contains("disableURLInternet") {
            self.disableURLInternet = dict["disableURLInternet"] as! Bool
        }
        if dict.keys.contains("methods") {
            self.methods = dict["methods"] as! [String]
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
        if dict.keys.contains("checksum") {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("ossBucketName") {
            self.ossBucketName = dict["ossBucketName"] as! String
        }
        if dict.keys.contains("ossObjectName") {
            self.ossObjectName = dict["ossObjectName"] as! String
        }
        if dict.keys.contains("zipFile") {
            self.zipFile = dict["zipFile"] as! String
        }
    }
}

public class InstanceEventItem : Tea.TeaModel {
    public var children: [InstanceEventItem]?

    public var level: String?

    public var message: String?

    public var time: String?

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
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["children"] = tmp
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if dict.keys.contains("children") {
            var tmp : [InstanceEventItem] = []
            for v in dict["children"] as! [Any] {
                var model = InstanceEventItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("level") {
            self.level = dict["level"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class InstanceInfo : Tea.TeaModel {
    public var createdTimeMs: Int64?

    public var destroyedTimeMs: Int64?

    public var instanceId: String?

    public var qualifier: String?

    public var status: String?

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
        if self.createdTimeMs != nil {
            map["createdTimeMs"] = self.createdTimeMs!
        }
        if self.destroyedTimeMs != nil {
            map["destroyedTimeMs"] = self.destroyedTimeMs!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTimeMs") {
            self.createdTimeMs = dict["createdTimeMs"] as! Int64
        }
        if dict.keys.contains("destroyedTimeMs") {
            self.destroyedTimeMs = dict["destroyedTimeMs"] as! Int64
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("versionId") {
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
        if dict.keys.contains("initializer") {
            var model = LifecycleHook()
            model.fromMap(dict["initializer"] as! [String: Any])
            self.initializer = model
        }
        if dict.keys.contains("preStop") {
            var model = LifecycleHook()
            model.fromMap(dict["preStop"] as! [String: Any])
            self.preStop = model
        }
    }
}

public class JobConfig : Tea.TeaModel {
    public var maxRetryTime: Int32?

    public var triggerInterval: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxRetryTime != nil {
            map["maxRetryTime"] = self.maxRetryTime!
        }
        if self.triggerInterval != nil {
            map["triggerInterval"] = self.triggerInterval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxRetryTime") {
            self.maxRetryTime = dict["maxRetryTime"] as! Int32
        }
        if dict.keys.contains("triggerInterval") {
            self.triggerInterval = dict["triggerInterval"] as! Int32
        }
    }
}

public class Key : Tea.TeaModel {
    public var prefix_: String?

    public var suffix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.suffix != nil {
            map["suffix"] = self.suffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("suffix") {
            self.suffix = dict["suffix"] as! String
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
        if dict.keys.contains("acl") {
            self.acl = dict["acl"] as! String
        }
        if dict.keys.contains("code") {
            var model = OutputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("codeChecksum") {
            self.codeChecksum = dict["codeChecksum"] as! String
        }
        if dict.keys.contains("codeSize") {
            self.codeSize = dict["codeSize"] as! Int64
        }
        if dict.keys.contains("compatibleRuntime") {
            self.compatibleRuntime = dict["compatibleRuntime"] as! [String]
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("layerName") {
            self.layerName = dict["layerName"] as! String
        }
        if dict.keys.contains("layerVersionArn") {
            self.layerVersionArn = dict["layerVersionArn"] as! String
        }
        if dict.keys.contains("license") {
            self.license = dict["license"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int32
        }
    }
}

public class LifecycleHook : Tea.TeaModel {
    public var command: [String]?

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
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("command") {
            self.command = dict["command"] as! [String]
        }
        if dict.keys.contains("handler") {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("timeout") {
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
        if dict.keys.contains("aliases") {
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
        if dict.keys.contains("nextToken") {
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
        if dict.keys.contains("configs") {
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
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListAsyncTaskOutput : Tea.TeaModel {
    public var nextToken: String?

    public var tasks: [AsyncTask]?

    public override init() {
        super.init()
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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("tasks") {
            var tmp : [AsyncTask] = []
            for v in dict["tasks"] as! [Any] {
                var model = AsyncTask()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
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
        if dict.keys.contains("configs") {
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
        if dict.keys.contains("nextToken") {
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
        if dict.keys.contains("customDomains") {
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
        if dict.keys.contains("nextToken") {
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
        if dict.keys.contains("functions") {
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
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListInstancesOutput : Tea.TeaModel {
    public var instances: [InstanceInfo]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances") {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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
        if dict.keys.contains("layers") {
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
        if dict.keys.contains("nextVersion") {
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
        if dict.keys.contains("layers") {
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
        if dict.keys.contains("nextToken") {
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
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("provisionConfigs") {
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

public class ListTagResourcesOutput : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [TagResource]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var tmp : [TagResource] = []
            for v in dict["TagResources"] as! [Any] {
                var model = TagResource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
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
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resources") {
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
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("triggers") {
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
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("versions") {
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

public class ListVpcBindingsOutput : Tea.TeaModel {
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
        if dict.keys.contains("vpcIds") {
            self.vpcIds = dict["vpcIds"] as! [String]
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
        if dict.keys.contains("enableInstanceMetrics") {
            self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
        }
        if dict.keys.contains("enableRequestMetrics") {
            self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
        }
        if dict.keys.contains("logBeginRule") {
            self.logBeginRule = dict["logBeginRule"] as! String
        }
        if dict.keys.contains("logstore") {
            self.logstore = dict["logstore"] as! String
        }
        if dict.keys.contains("project") {
            self.project = dict["project"] as! String
        }
    }
}

public class MNSTopicTriggerConfig : Tea.TeaModel {
    public var filterTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterTag != nil {
            map["filterTag"] = self.filterTag!
        }
        if self.notifyContentFormat != nil {
            map["notifyContentFormat"] = self.notifyContentFormat!
        }
        if self.notifyStrategy != nil {
            map["notifyStrategy"] = self.notifyStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterTag") {
            self.filterTag = dict["filterTag"] as! String
        }
        if dict.keys.contains("notifyContentFormat") {
            self.notifyContentFormat = dict["notifyContentFormat"] as! String
        }
        if dict.keys.contains("notifyStrategy") {
            self.notifyStrategy = dict["notifyStrategy"] as! String
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
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! Int32
        }
        if dict.keys.contains("mountPoints") {
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
        if dict.keys.contains("userId") {
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
        if dict.keys.contains("enableTLS") {
            self.enableTLS = dict["enableTLS"] as! Bool
        }
        if dict.keys.contains("mountDir") {
            self.mountDir = dict["mountDir"] as! String
        }
        if dict.keys.contains("serverAddr") {
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
        if dict.keys.contains("mountPoints") {
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
        if dict.keys.contains("bucketName") {
            self.bucketName = dict["bucketName"] as! String
        }
        if dict.keys.contains("bucketPath") {
            self.bucketPath = dict["bucketPath"] as! String
        }
        if dict.keys.contains("endpoint") {
            self.endpoint = dict["endpoint"] as! String
        }
        if dict.keys.contains("mountDir") {
            self.mountDir = dict["mountDir"] as! String
        }
        if dict.keys.contains("readOnly") {
            self.readOnly = dict["readOnly"] as! Bool
        }
    }
}

public class OSSTriggerConfig : Tea.TeaModel {
    public var events: [String]?

    public var filter: Filter?

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
        if self.events != nil {
            map["events"] = self.events!
        }
        if self.filter != nil {
            map["filter"] = self.filter?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("events") {
            self.events = dict["events"] as! [String]
        }
        if dict.keys.contains("filter") {
            var model = Filter()
            model.fromMap(dict["filter"] as! [String: Any])
            self.filter = model
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
        if dict.keys.contains("location") {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("repositoryType") {
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
        if dict.keys.contains("checksum") {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
        }
    }
}

public class PathConfig : Tea.TeaModel {
    public var functionName: String?

    public var methods: [String]?

    public var path: String?

    public var qualifier: String?

    public var rewriteConfig: RewriteConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rewriteConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionName != nil {
            map["functionName"] = self.functionName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("methods") {
            self.methods = dict["methods"] as! [String]
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("rewriteConfig") {
            var model = RewriteConfig()
            model.fromMap(dict["rewriteConfig"] as! [String: Any])
            self.rewriteConfig = model
        }
    }
}

public class ProvisionConfig : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var alwaysAllocateGPU: Bool?

    public var current: Int64?

    public var currentError: String?

    public var defaultTarget: Int64?

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
        if self.alwaysAllocateGPU != nil {
            map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.currentError != nil {
            map["currentError"] = self.currentError!
        }
        if self.defaultTarget != nil {
            map["defaultTarget"] = self.defaultTarget!
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
        if dict.keys.contains("alwaysAllocateCPU") {
            self.alwaysAllocateCPU = dict["alwaysAllocateCPU"] as! Bool
        }
        if dict.keys.contains("alwaysAllocateGPU") {
            self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
        }
        if dict.keys.contains("current") {
            self.current = dict["current"] as! Int64
        }
        if dict.keys.contains("currentError") {
            self.currentError = dict["currentError"] as! String
        }
        if dict.keys.contains("defaultTarget") {
            self.defaultTarget = dict["defaultTarget"] as! Int64
        }
        if dict.keys.contains("functionArn") {
            self.functionArn = dict["functionArn"] as! String
        }
        if dict.keys.contains("scheduledActions") {
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
        if dict.keys.contains("target") {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("targetTrackingPolicies") {
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
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class PutAsyncInvokeConfigInput : Tea.TeaModel {
    public var asyncTask: Bool?

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
        if self.asyncTask != nil {
            map["asyncTask"] = self.asyncTask!
        }
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
        if dict.keys.contains("asyncTask") {
            self.asyncTask = dict["asyncTask"] as! Bool
        }
        if dict.keys.contains("destinationConfig") {
            var model = DestinationConfig()
            model.fromMap(dict["destinationConfig"] as! [String: Any])
            self.destinationConfig = model
        }
        if dict.keys.contains("maxAsyncEventAgeInSeconds") {
            self.maxAsyncEventAgeInSeconds = dict["maxAsyncEventAgeInSeconds"] as! Int64
        }
        if dict.keys.contains("maxAsyncRetryAttempts") {
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
        if dict.keys.contains("reservedConcurrency") {
            self.reservedConcurrency = dict["reservedConcurrency"] as! Int64
        }
    }
}

public class PutProvisionConfigInput : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var alwaysAllocateGPU: Bool?

    public var defaultTarget: Int64?

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
        if self.alwaysAllocateGPU != nil {
            map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
        }
        if self.defaultTarget != nil {
            map["defaultTarget"] = self.defaultTarget!
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
        if dict.keys.contains("alwaysAllocateCPU") {
            self.alwaysAllocateCPU = dict["alwaysAllocateCPU"] as! Bool
        }
        if dict.keys.contains("alwaysAllocateGPU") {
            self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
        }
        if dict.keys.contains("defaultTarget") {
            self.defaultTarget = dict["defaultTarget"] as! Int64
        }
        if dict.keys.contains("scheduledActions") {
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
        if dict.keys.contains("target") {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("targetTrackingPolicies") {
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
        if dict.keys.contains("match") {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") {
            self.replacement = dict["replacement"] as! String
        }
    }
}

public class RegistryAuthConfig : Tea.TeaModel {
    public var password: String?

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
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("userName") {
            self.userName = dict["userName"] as! String
        }
    }
}

public class RegistryCertConfig : Tea.TeaModel {
    public var insecure: Bool?

    public var rootCaCertBase64: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.insecure != nil {
            map["insecure"] = self.insecure!
        }
        if self.rootCaCertBase64 != nil {
            map["rootCaCertBase64"] = self.rootCaCertBase64!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("insecure") {
            self.insecure = dict["insecure"] as! Bool
        }
        if dict.keys.contains("rootCaCertBase64") {
            self.rootCaCertBase64 = dict["rootCaCertBase64"] as! String
        }
    }
}

public class RegistryConfig : Tea.TeaModel {
    public var authConfig: RegistryAuthConfig?

    public var certConfig: RegistryCertConfig?

    public var networkConfig: RegistryNetworkConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.certConfig?.validate()
        try self.networkConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.networkConfig != nil {
            map["networkConfig"] = self.networkConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            var model = RegistryAuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("certConfig") {
            var model = RegistryCertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("networkConfig") {
            var model = RegistryNetworkConfig()
            model.fromMap(dict["networkConfig"] as! [String: Any])
            self.networkConfig = model
        }
    }
}

public class RegistryNetworkConfig : Tea.TeaModel {
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
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("securityGroupId") {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
        if dict.keys.contains("vSwitchId") {
            self.vSwitchId = dict["vSwitchId"] as! String
        }
        if dict.keys.contains("vpcId") {
            self.vpcId = dict["vpcId"] as! String
        }
    }
}

public class Resource : Tea.TeaModel {
    public var resouceType: String?

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
        if self.resouceType != nil {
            map["resouceType"] = self.resouceType!
        }
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resouceType") {
            self.resouceType = dict["resouceType"] as! String
        }
        if dict.keys.contains("resourceArn") {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! [String: String]
        }
    }
}

public class RetryStrategy : Tea.TeaModel {
    public var pushRetryStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushRetryStrategy != nil {
            map["PushRetryStrategy"] = self.pushRetryStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PushRetryStrategy") {
            self.pushRetryStrategy = dict["PushRetryStrategy"] as! String
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
        if dict.keys.contains("equalRules") {
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
        if dict.keys.contains("regexRules") {
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
        if dict.keys.contains("wildcardRules") {
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
        if dict.keys.contains("routes") {
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

public class RunOptions : Tea.TeaModel {
    public var batchWindow: BatchWindow?

    public var deadLetterQueue: DeadLetterQueue?

    public var errorsTolerance: String?

    public var mode: String?

    public var retryStrategy: RetryStrategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.batchWindow?.validate()
        try self.deadLetterQueue?.validate()
        try self.retryStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchWindow != nil {
            map["batchWindow"] = self.batchWindow?.toMap()
        }
        if self.deadLetterQueue != nil {
            map["deadLetterQueue"] = self.deadLetterQueue?.toMap()
        }
        if self.errorsTolerance != nil {
            map["errorsTolerance"] = self.errorsTolerance!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.retryStrategy != nil {
            map["retryStrategy"] = self.retryStrategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("batchWindow") {
            var model = BatchWindow()
            model.fromMap(dict["batchWindow"] as! [String: Any])
            self.batchWindow = model
        }
        if dict.keys.contains("deadLetterQueue") {
            var model = DeadLetterQueue()
            model.fromMap(dict["deadLetterQueue"] as! [String: Any])
            self.deadLetterQueue = model
        }
        if dict.keys.contains("errorsTolerance") {
            self.errorsTolerance = dict["errorsTolerance"] as! String
        }
        if dict.keys.contains("mode") {
            self.mode = dict["mode"] as! String
        }
        if dict.keys.contains("retryStrategy") {
            var model = RetryStrategy()
            model.fromMap(dict["retryStrategy"] as! [String: Any])
            self.retryStrategy = model
        }
    }
}

public class SLSTriggerConfig : Tea.TeaModel {
    public var enable: Bool?

    public var functionParameter: [String: String]?

    public var jobConfig: JobConfig?

    public var logConfig: SLSTriggerLogConfig?

    public var sourceConfig: SourceConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobConfig?.validate()
        try self.logConfig?.validate()
        try self.sourceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.functionParameter != nil {
            map["functionParameter"] = self.functionParameter!
        }
        if self.jobConfig != nil {
            map["jobConfig"] = self.jobConfig?.toMap()
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.sourceConfig != nil {
            map["sourceConfig"] = self.sourceConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("functionParameter") {
            self.functionParameter = dict["functionParameter"] as! [String: String]
        }
        if dict.keys.contains("jobConfig") {
            var model = JobConfig()
            model.fromMap(dict["jobConfig"] as! [String: Any])
            self.jobConfig = model
        }
        if dict.keys.contains("logConfig") {
            var model = SLSTriggerLogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("sourceConfig") {
            var model = SourceConfig()
            model.fromMap(dict["sourceConfig"] as! [String: Any])
            self.sourceConfig = model
        }
    }
}

public class SLSTriggerLogConfig : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logstore") {
            self.logstore = dict["logstore"] as! String
        }
        if dict.keys.contains("project") {
            self.project = dict["project"] as! String
        }
    }
}

public class ScheduledAction : Tea.TeaModel {
    public var endTime: String?

    public var name: String?

    public var scheduleExpression: String?

    public var startTime: String?

    public var target: Int64?

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
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("scheduleExpression") {
            self.scheduleExpression = dict["scheduleExpression"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("target") {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("timeZone") {
            self.timeZone = dict["timeZone"] as! String
        }
    }
}

public class SourceConfig : Tea.TeaModel {
    public var logstore: String?

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
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logstore") {
            self.logstore = dict["logstore"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
    }
}

public class SourceDTSParameters : Tea.TeaModel {
    public var brokerUrl: String?

    public var initCheckPoint: Int32?

    public var password: String?

    public var regionId: String?

    public var sid: String?

    public var taskId: String?

    public var topic: String?

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
        if self.brokerUrl != nil {
            map["BrokerUrl"] = self.brokerUrl!
        }
        if self.initCheckPoint != nil {
            map["InitCheckPoint"] = self.initCheckPoint!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sid != nil {
            map["Sid"] = self.sid!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrokerUrl") {
            self.brokerUrl = dict["BrokerUrl"] as! String
        }
        if dict.keys.contains("InitCheckPoint") {
            self.initCheckPoint = dict["InitCheckPoint"] as! Int32
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sid") {
            self.sid = dict["Sid"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class SourceKafkaParameters : Tea.TeaModel {
    public var consumerGroup: String?

    public var instanceId: String?

    public var network: String?

    public var offsetReset: String?

    public var regionId: String?

    public var securityGroupId: String?

    public var topic: String?

    public var vSwitchIds: String?

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
        if self.consumerGroup != nil {
            map["ConsumerGroup"] = self.consumerGroup!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.offsetReset != nil {
            map["OffsetReset"] = self.offsetReset!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerGroup") {
            self.consumerGroup = dict["ConsumerGroup"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Network") {
            self.network = dict["Network"] as! String
        }
        if dict.keys.contains("OffsetReset") {
            self.offsetReset = dict["OffsetReset"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class SourceMNSParameters : Tea.TeaModel {
    public var isBase64Decode: Bool?

    public var queueName: String?

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
        if self.isBase64Decode != nil {
            map["IsBase64Decode"] = self.isBase64Decode!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsBase64Decode") {
            self.isBase64Decode = dict["IsBase64Decode"] as! Bool
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SourceMQTTParameters : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class SourceRabbitMQParameters : Tea.TeaModel {
    public var instanceId: String?

    public var queueName: String?

    public var regionId: String?

    public var virtualHostName: String?

    public override init() {
        super.init()
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
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualHostName != nil {
            map["VirtualHostName"] = self.virtualHostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualHostName") {
            self.virtualHostName = dict["VirtualHostName"] as! String
        }
    }
}

public class SourceRocketMQParameters : Tea.TeaModel {
    public var authType: String?

    public var filterType: String?

    public var groupID: String?

    public var instanceEndpoint: String?

    public var instanceId: String?

    public var instanceNetwork: String?

    public var instancePassword: String?

    public var instanceSecurityGroupId: String?

    public var instanceType: String?

    public var instanceUsername: String?

    public var instanceVSwitchIds: String?

    public var instanceVpcId: String?

    public var offset: String?

    public var regionId: String?

    public var tag: String?

    public var timestamp: Int32?

    public var topic: String?

    public override init() {
        super.init()
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
            map["AuthType"] = self.authType!
        }
        if self.filterType != nil {
            map["FilterType"] = self.filterType!
        }
        if self.groupID != nil {
            map["GroupID"] = self.groupID!
        }
        if self.instanceEndpoint != nil {
            map["InstanceEndpoint"] = self.instanceEndpoint!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceNetwork != nil {
            map["InstanceNetwork"] = self.instanceNetwork!
        }
        if self.instancePassword != nil {
            map["InstancePassword"] = self.instancePassword!
        }
        if self.instanceSecurityGroupId != nil {
            map["InstanceSecurityGroupId"] = self.instanceSecurityGroupId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.instanceUsername != nil {
            map["InstanceUsername"] = self.instanceUsername!
        }
        if self.instanceVSwitchIds != nil {
            map["InstanceVSwitchIds"] = self.instanceVSwitchIds!
        }
        if self.instanceVpcId != nil {
            map["InstanceVpcId"] = self.instanceVpcId!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("FilterType") {
            self.filterType = dict["FilterType"] as! String
        }
        if dict.keys.contains("GroupID") {
            self.groupID = dict["GroupID"] as! String
        }
        if dict.keys.contains("InstanceEndpoint") {
            self.instanceEndpoint = dict["InstanceEndpoint"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceNetwork") {
            self.instanceNetwork = dict["InstanceNetwork"] as! String
        }
        if dict.keys.contains("InstancePassword") {
            self.instancePassword = dict["InstancePassword"] as! String
        }
        if dict.keys.contains("InstanceSecurityGroupId") {
            self.instanceSecurityGroupId = dict["InstanceSecurityGroupId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InstanceUsername") {
            self.instanceUsername = dict["InstanceUsername"] as! String
        }
        if dict.keys.contains("InstanceVSwitchIds") {
            self.instanceVSwitchIds = dict["InstanceVSwitchIds"] as! String
        }
        if dict.keys.contains("InstanceVpcId") {
            self.instanceVpcId = dict["InstanceVpcId"] as! String
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int32
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
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
        if dict.keys.contains("cipherSuites") {
            self.cipherSuites = dict["cipherSuites"] as! [String]
        }
        if dict.keys.contains("maxVersion") {
            self.maxVersion = dict["maxVersion"] as! String
        }
        if dict.keys.contains("minVersion") {
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

public class TagResource : Tea.TeaModel {
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

public class TagResourceInput : Tea.TeaModel {
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
        if dict.keys.contains("resourceArn") {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! [String: String]
        }
    }
}

public class TagResourcesInput : Tea.TeaModel {
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [Tag]?

    public override init() {
        super.init()
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
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
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("maxCapacity") {
            self.maxCapacity = dict["maxCapacity"] as! Int64
        }
        if dict.keys.contains("metricTarget") {
            self.metricTarget = dict["metricTarget"] as! Double
        }
        if dict.keys.contains("metricType") {
            self.metricType = dict["metricType"] as! String
        }
        if dict.keys.contains("minCapacity") {
            self.minCapacity = dict["minCapacity"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("timeZone") {
            self.timeZone = dict["timeZone"] as! String
        }
    }
}

public class TimerTriggerConfig : Tea.TeaModel {
    public var cronExpression: String?

    public var enable: Bool?

    public var payload: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["cronExpression"] = self.cronExpression!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.payload != nil {
            map["payload"] = self.payload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cronExpression") {
            self.cronExpression = dict["cronExpression"] as! String
        }
        if dict.keys.contains("enable") {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("payload") {
            self.payload = dict["payload"] as! String
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
        if dict.keys.contains("params") {
            self.params = dict["params"] as! [String: String]
        }
        if dict.keys.contains("type") {
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
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("httpTrigger") {
            var model = HTTPTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("invocationRole") {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sourceArn") {
            self.sourceArn = dict["sourceArn"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("targetArn") {
            self.targetArn = dict["targetArn"] as! String
        }
        if dict.keys.contains("triggerConfig") {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
        if dict.keys.contains("triggerId") {
            self.triggerId = dict["triggerId"] as! String
        }
        if dict.keys.contains("triggerName") {
            self.triggerName = dict["triggerName"] as! String
        }
        if dict.keys.contains("triggerType") {
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
        if dict.keys.contains("additionalVersionWeight") {
            self.additionalVersionWeight = dict["additionalVersionWeight"] as! [String: Double]
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("versionId") {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class UpdateCustomDomainInput : Tea.TeaModel {
    public var authConfig: AuthConfig?

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
        try self.authConfig?.validate()
        try self.certConfig?.validate()
        try self.routeConfig?.validate()
        try self.tlsConfig?.validate()
        try self.wafConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
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
        if dict.keys.contains("authConfig") {
            var model = AuthConfig()
            model.fromMap(dict["authConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("certConfig") {
            var model = CertConfig()
            model.fromMap(dict["certConfig"] as! [String: Any])
            self.certConfig = model
        }
        if dict.keys.contains("protocol") {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("routeConfig") {
            var model = RouteConfig()
            model.fromMap(dict["routeConfig"] as! [String: Any])
            self.routeConfig = model
        }
        if dict.keys.contains("tlsConfig") {
            var model = TLSConfig()
            model.fromMap(dict["tlsConfig"] as! [String: Any])
            self.tlsConfig = model
        }
        if dict.keys.contains("wafConfig") {
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

    public var disableOndemand: Bool?

    public var diskSize: Int32?

    public var enableLongLiving: Bool?

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

    public var sessionAffinity: String?

    public var timeout: Int32?

    public var tracingConfig: TracingConfig?

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
        if self.disableOndemand != nil {
            map["disableOndemand"] = self.disableOndemand!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.enableLongLiving != nil {
            map["enableLongLiving"] = self.enableLongLiving!
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
        if self.sessionAffinity != nil {
            map["sessionAffinity"] = self.sessionAffinity!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            var model = InputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("customContainerConfig") {
            var model = CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customRuntimeConfig") {
            var model = CustomRuntimeConfig()
            model.fromMap(dict["customRuntimeConfig"] as! [String: Any])
            self.customRuntimeConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("disableOndemand") {
            self.disableOndemand = dict["disableOndemand"] as! Bool
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("enableLongLiving") {
            self.enableLongLiving = dict["enableLongLiving"] as! Bool
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: String]
        }
        if dict.keys.contains("gpuConfig") {
            var model = GPUConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("handler") {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("internetAccess") {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("layers") {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("logConfig") {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("nasConfig") {
            var model = NASConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("ossMountConfig") {
            var model = OSSMountConfig()
            model.fromMap(dict["ossMountConfig"] as! [String: Any])
            self.ossMountConfig = model
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("sessionAffinity") {
            self.sessionAffinity = dict["sessionAffinity"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("tracingConfig") {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") {
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
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("invocationRole") {
            self.invocationRole = dict["invocationRole"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("triggerConfig") {
            self.triggerConfig = dict["triggerConfig"] as! String
        }
    }
}

public class VPCConfig : Tea.TeaModel {
    public var role: String?

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
        if self.role != nil {
            map["role"] = self.role!
        }
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
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("securityGroupId") {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
        if dict.keys.contains("vSwitchIds") {
            self.vSwitchIds = dict["vSwitchIds"] as! [String]
        }
        if dict.keys.contains("vpcId") {
            self.vpcId = dict["vpcId"] as! String
        }
    }
}

public class Version : Tea.TeaModel {
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
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("lastModifiedTime") {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("versionId") {
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
        if dict.keys.contains("enableWAF") {
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
        if dict.keys.contains("match") {
            self.match = dict["match"] as! String
        }
        if dict.keys.contains("replacement") {
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcBindingRequest : Tea.TeaModel {
    public var body: CreateVpcBindingInput?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("body") {
            var model = CreateVpcBindingInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcBindingResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("qualifier") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("qualifier") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

public class DeleteVpcBindingResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsOutput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRegionsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableFunctionInvocationRequest : Tea.TeaModel {
    public var abortOngoingRequest: Bool?

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
        if self.abortOngoingRequest != nil {
            map["abortOngoingRequest"] = self.abortOngoingRequest!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("abortOngoingRequest") {
            self.abortOngoingRequest = dict["abortOngoingRequest"] as! Bool
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
        }
    }
}

public class DisableFunctionInvocationResponseBody : Tea.TeaModel {
    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DisableFunctionInvocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableFunctionInvocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableFunctionInvocationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableFunctionInvocationResponseBody : Tea.TeaModel {
    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class EnableFunctionInvocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableFunctionInvocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableFunctionInvocationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AsyncConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsyncTaskRequest : Tea.TeaModel {
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
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class GetAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsyncTask?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AsyncTask()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ProvisionConfig()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAsyncTaskId: String?

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
        if self.xFcAsyncTaskId != nil {
            map["x-fc-async-task-id"] = self.xFcAsyncTaskId!
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-fc-async-task-id") {
            self.xFcAsyncTaskId = dict["x-fc-async-task-id"] as! String
        }
        if dict.keys.contains("x-fc-invocation-type") {
            self.xFcInvocationType = dict["x-fc-invocation-type"] as! String
        }
        if dict.keys.contains("x-fc-log-type") {
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
        if dict.keys.contains("body") {
            self.body = dict["body"] as! InputStream
        }
        if dict.keys.contains("qualifier") {
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
    }

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAsyncInvokeConfigOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsyncTasksRequest : Tea.TeaModel {
    public var includePayload: Bool?

    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var qualifier: String?

    public var sortOrderByTime: String?

    public var startedTimeBegin: Int64?

    public var startedTimeEnd: Int64?

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
        if self.includePayload != nil {
            map["includePayload"] = self.includePayload!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.sortOrderByTime != nil {
            map["sortOrderByTime"] = self.sortOrderByTime!
        }
        if self.startedTimeBegin != nil {
            map["startedTimeBegin"] = self.startedTimeBegin!
        }
        if self.startedTimeEnd != nil {
            map["startedTimeEnd"] = self.startedTimeEnd!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("includePayload") {
            self.includePayload = dict["includePayload"] as! Bool
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sortOrderByTime") {
            self.sortOrderByTime = dict["sortOrderByTime"] as! String
        }
        if dict.keys.contains("startedTimeBegin") {
            self.startedTimeBegin = dict["startedTimeBegin"] as! Int64
        }
        if dict.keys.contains("startedTimeEnd") {
            self.startedTimeEnd = dict["startedTimeEnd"] as! Int64
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListAsyncTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsyncTaskOutput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAsyncTaskOutput()
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
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListVersionsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var description_: String?

    public var fcVersion: String?

    public var functionName: String?

    public var gpuType: String?

    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var runtime: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
        if self.fcVersion != nil {
            map["fcVersion"] = self.fcVersion!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuType != nil {
            map["gpuType"] = self.gpuType!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("fcVersion") {
            self.fcVersion = dict["fcVersion"] as! String
        }
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuType") {
            self.gpuType = dict["gpuType"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListFunctionsShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fcVersion: String?

    public var functionName: String?

    public var gpuType: String?

    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var runtime: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
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
        if self.fcVersion != nil {
            map["fcVersion"] = self.fcVersion!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuType != nil {
            map["gpuType"] = self.gpuType!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("fcVersion") {
            self.fcVersion = dict["fcVersion"] as! String
        }
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuType") {
            self.gpuType = dict["gpuType"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFunctionsOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var endTimeMs: Int64?

    public var instanceIds: [String]?

    public var instanceStatus: [String]?

    public var limit: String?

    public var qualifier: String?

    public var startKey: String?

    public var startTimeMs: Int64?

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
        if self.endTimeMs != nil {
            map["endTimeMs"] = self.endTimeMs!
        }
        if self.instanceIds != nil {
            map["instanceIds"] = self.instanceIds!
        }
        if self.instanceStatus != nil {
            map["instanceStatus"] = self.instanceStatus!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.startKey != nil {
            map["startKey"] = self.startKey!
        }
        if self.startTimeMs != nil {
            map["startTimeMs"] = self.startTimeMs!
        }
        if self.withAllActive != nil {
            map["withAllActive"] = self.withAllActive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTimeMs") {
            self.endTimeMs = dict["endTimeMs"] as! Int64
        }
        if dict.keys.contains("instanceIds") {
            self.instanceIds = dict["instanceIds"] as! [String]
        }
        if dict.keys.contains("instanceStatus") {
            self.instanceStatus = dict["instanceStatus"] as! [String]
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("startKey") {
            self.startKey = dict["startKey"] as! String
        }
        if dict.keys.contains("startTimeMs") {
            self.startTimeMs = dict["startTimeMs"] as! Int64
        }
        if dict.keys.contains("withAllActive") {
            self.withAllActive = dict["withAllActive"] as! Bool
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var endTimeMs: Int64?

    public var instanceIdsShrink: String?

    public var instanceStatusShrink: String?

    public var limit: String?

    public var qualifier: String?

    public var startKey: String?

    public var startTimeMs: Int64?

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
        if self.endTimeMs != nil {
            map["endTimeMs"] = self.endTimeMs!
        }
        if self.instanceIdsShrink != nil {
            map["instanceIds"] = self.instanceIdsShrink!
        }
        if self.instanceStatusShrink != nil {
            map["instanceStatus"] = self.instanceStatusShrink!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.startKey != nil {
            map["startKey"] = self.startKey!
        }
        if self.startTimeMs != nil {
            map["startTimeMs"] = self.startTimeMs!
        }
        if self.withAllActive != nil {
            map["withAllActive"] = self.withAllActive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTimeMs") {
            self.endTimeMs = dict["endTimeMs"] as! Int64
        }
        if dict.keys.contains("instanceIds") {
            self.instanceIdsShrink = dict["instanceIds"] as! String
        }
        if dict.keys.contains("instanceStatus") {
            self.instanceStatusShrink = dict["instanceStatus"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! String
        }
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("startKey") {
            self.startKey = dict["startKey"] as! String
        }
        if dict.keys.contains("startTimeMs") {
            self.startTimeMs = dict["startTimeMs"] as! Int64
        }
        if dict.keys.contains("withAllActive") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("startVersion") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("official") {
            self.official = dict["official"] as! String
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("public") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProvisionConfigsOutput()
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
    public var limit: Int32?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var limit: Int32?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceIdShrink = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesOutput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTagResourcesOutput()
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
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("prefix") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTriggersOutput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVpcBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcBindingsOutput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListVpcBindingsOutput()
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
            var model = PutAsyncInvokeConfigInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConcurrencyConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutLayerACLRequest : Tea.TeaModel {
    public var acl: String?

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
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acl") {
            self.acl = dict["acl"] as! String
        }
        if dict.keys.contains("public") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("body") {
            var model = PutProvisionConfigInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("qualifier") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ProvisionConfig()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAsyncTaskRequest : Tea.TeaModel {
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
        if dict.keys.contains("qualifier") {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class StopAsyncTaskResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var body: TagResourcesInput?

    public override init() {
        super.init()
    }

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
        if dict.keys.contains("body") {
            var model = TagResourcesInput()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
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
            map["All"] = self.all!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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
            map["All"] = self.all!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceIdShrink = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKeyShrink = dict["TagKey"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        if dict.keys.contains("body") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = Trigger()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
