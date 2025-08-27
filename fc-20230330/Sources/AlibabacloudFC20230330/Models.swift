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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalVersionWeight"] as? [String: Double] {
            self.additionalVersionWeight = value
        }
        if let value = dict["aliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asyncTask"] as? Bool {
            self.asyncTask = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["destinationConfig"] as? [String: Any?] {
            var model = DestinationConfig()
            model.fromMap(value)
            self.destinationConfig = model
        }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["maxAsyncEventAgeInSeconds"] as? Int64 {
            self.maxAsyncEventAgeInSeconds = value
        }
        if let value = dict["maxAsyncRetryAttempts"] as? Int64 {
            self.maxAsyncRetryAttempts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alreadyRetriedTimes"] as? Int64 {
            self.alreadyRetriedTimes = value
        }
        if let value = dict["destinationStatus"] as? String {
            self.destinationStatus = value
        }
        if let value = dict["durationMs"] as? Int64 {
            self.durationMs = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["events"] as? [Any?] {
            var tmp : [AsyncTaskEvent] = []
            for v in value {
                if v != nil {
                    var model = AsyncTaskEvent()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["returnPayload"] as? String {
            self.returnPayload = value
        }
        if let value = dict["startedTime"] as? Int64 {
            self.startedTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskErrorMessage"] as? String {
            self.taskErrorMessage = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["taskPayload"] as? String {
            self.taskPayload = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["eventDetail"] as? String {
            self.eventDetail = value
        }
        if let value = dict["eventId"] as? Int64 {
            self.eventId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["timestamp"] as? Int64 {
            self.timestamp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authInfo"] as? String {
            self.authInfo = value
        }
        if let value = dict["authType"] as? String {
            self.authType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CountBasedWindow"] as? Int32 {
            self.countBasedWindow = value
        }
        if let value = dict["TimeBasedWindow"] as? Int32 {
            self.timeBasedWindow = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["eventName"] as? String {
            self.eventName = value
        }
        if let value = dict["eventVersion"] as? String {
            self.eventVersion = value
        }
        if let value = dict["filter"] as? [String: [String]] {
            self.filter = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
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

public class ChangeResourceGroupInput : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var resourceId: String?

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
        if self.newResourceGroupId != nil {
            map["newResourceGroupId"] = self.newResourceGroupId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupOutput : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var oldResourceGroupId: String?

    public var resourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newResourceGroupId != nil {
            map["newResourceGroupId"] = self.newResourceGroupId!
        }
        if self.oldResourceGroupId != nil {
            map["oldResourceGroupId"] = self.oldResourceGroupId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["oldResourceGroupId"] as? String {
            self.oldResourceGroupId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["reservedConcurrency"] as? Int64 {
            self.reservedConcurrency = value
        }
    }
}

public class CookieSessionAffinityConfig : Tea.TeaModel {
    public var sessionConcurrencyPerInstance: Int64?

    public var sessionIdleTimeoutInSeconds: Int64?

    public var sessionTTLInSeconds: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionConcurrencyPerInstance != nil {
            map["sessionConcurrencyPerInstance"] = self.sessionConcurrencyPerInstance!
        }
        if self.sessionIdleTimeoutInSeconds != nil {
            map["sessionIdleTimeoutInSeconds"] = self.sessionIdleTimeoutInSeconds!
        }
        if self.sessionTTLInSeconds != nil {
            map["sessionTTLInSeconds"] = self.sessionTTLInSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionConcurrencyPerInstance"] as? Int64 {
            self.sessionConcurrencyPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutInSeconds"] as? Int64 {
            self.sessionIdleTimeoutInSeconds = value
        }
        if let value = dict["sessionTTLInSeconds"] as? Int64 {
            self.sessionTTLInSeconds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalVersionWeight"] as? [String: Double] {
            self.additionalVersionWeight = value
        }
        if let value = dict["aliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
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
        if let value = dict["wafConfig"] as? [String: Any?] {
            var model = WAFConfig()
            model.fromMap(value)
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

    public var instanceIsolationMode: String?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var internetAccess: Bool?

    public var layers: [String]?

    public var logConfig: LogConfig?

    public var memorySize: Int32?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var resourceGroupId: String?

    public var role: String?

    public var runtime: String?

    public var sessionAffinity: String?

    public var sessionAffinityConfig: String?

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
        if self.instanceIsolationMode != nil {
            map["instanceIsolationMode"] = self.instanceIsolationMode!
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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
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
        if self.sessionAffinityConfig != nil {
            map["sessionAffinityConfig"] = self.sessionAffinityConfig!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? [String: Any?] {
            var model = InputCodeLocation()
            model.fromMap(value)
            self.code = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["customDNS"] as? [String: Any?] {
            var model = CustomDNS()
            model.fromMap(value)
            self.customDNS = model
        }
        if let value = dict["customRuntimeConfig"] as? [String: Any?] {
            var model = CustomRuntimeConfig()
            model.fromMap(value)
            self.customRuntimeConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["disableOndemand"] as? Bool {
            self.disableOndemand = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["enableLongLiving"] as? Bool {
            self.enableLongLiving = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = GPUConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["handler"] as? String {
            self.handler = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["instanceIsolationMode"] as? String {
            self.instanceIsolationMode = value
        }
        if let value = dict["instanceLifecycleConfig"] as? [String: Any?] {
            var model = InstanceLifecycleConfig()
            model.fromMap(value)
            self.instanceLifecycleConfig = model
        }
        if let value = dict["internetAccess"] as? Bool {
            self.internetAccess = value
        }
        if let value = dict["layers"] as? [String] {
            self.layers = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
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
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["sessionAffinity"] as? String {
            self.sessionAffinity = value
        }
        if let value = dict["sessionAffinityConfig"] as? String {
            self.sessionAffinityConfig = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["tracingConfig"] as? [String: Any?] {
            var model = TracingConfig()
            model.fromMap(value)
            self.tracingConfig = model
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = VPCConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? [String: Any?] {
            var model = InputCodeLocation()
            model.fromMap(value)
            self.code = model
        }
        if let value = dict["compatibleRuntime"] as? [String] {
            self.compatibleRuntime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["license"] as? String {
            self.license = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["invocationRole"] as? String {
            self.invocationRole = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["sourceArn"] as? String {
            self.sourceArn = value
        }
        if let value = dict["triggerConfig"] as? String {
            self.triggerConfig = value
        }
        if let value = dict["triggerName"] as? String {
            self.triggerName = value
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accelerationInfo"] as? [String: Any?] {
            var model = AccelerationInfo()
            model.fromMap(value)
            self.accelerationInfo = model
        }
        if let value = dict["accelerationType"] as? String {
            self.accelerationType = value
        }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["entrypoint"] as? [String] {
            self.entrypoint = value
        }
        if let value = dict["healthCheckConfig"] as? [String: Any?] {
            var model = CustomHealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
        }
        if let value = dict["registryConfig"] as? [String: Any?] {
            var model = RegistryConfig()
            model.fromMap(value)
            self.registryConfig = model
        }
        if let value = dict["resolvedImageUri"] as? String {
            self.resolvedImageUri = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dnsOptions"] as? [Any?] {
            var tmp : [DNSOption] = []
            for v in value {
                if v != nil {
                    var model = DNSOption()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dnsOptions = tmp
        }
        if let value = dict["nameServers"] as? [String] {
            self.nameServers = value
        }
        if let value = dict["searches"] as? [String] {
            self.searches = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["apiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["routeConfig"] as? [String: Any?] {
            var model = RouteConfig()
            model.fromMap(value)
            self.routeConfig = model
        }
        if let value = dict["subdomainCount"] as? String {
            self.subdomainCount = value
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
        if let value = dict["wafConfig"] as? [String: Any?] {
            var model = WAFConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["args"] as? [String] {
            self.args = value
        }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["healthCheckConfig"] as? [String: Any?] {
            var model = CustomHealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
        }
        if let value = dict["port"] as? Int32 {
            self.port = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["eventSchema"] as? String {
            self.eventSchema = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsOutput.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsOutput.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsOutput.Regions()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["destination"] as? String {
            self.destination = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["onFailure"] as? [String: Any?] {
            var model = Destination()
            model.fromMap(value)
            self.onFailure = model
        }
        if let value = dict["onSuccess"] as? [String: Any?] {
            var model = Destination()
            model.fromMap(value)
            self.onSuccess = model
        }
    }
}

public class ElasticConfigStatus : Tea.TeaModel {
    public var currentError: String?

    public var currentInstances: Int64?

    public var functionArn: String?

    public var minInstances: Int64?

    public var residentPoolId: String?

    public var scalingPolicies: [ScalingPolicy]?

    public var scheduledPolicies: [ScheduledPolicy]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentError != nil {
            map["currentError"] = self.currentError!
        }
        if self.currentInstances != nil {
            map["currentInstances"] = self.currentInstances!
        }
        if self.functionArn != nil {
            map["functionArn"] = self.functionArn!
        }
        if self.minInstances != nil {
            map["minInstances"] = self.minInstances!
        }
        if self.residentPoolId != nil {
            map["residentPoolId"] = self.residentPoolId!
        }
        if self.scalingPolicies != nil {
            var tmp : [Any] = []
            for k in self.scalingPolicies! {
                tmp.append(k.toMap())
            }
            map["scalingPolicies"] = tmp
        }
        if self.scheduledPolicies != nil {
            var tmp : [Any] = []
            for k in self.scheduledPolicies! {
                tmp.append(k.toMap())
            }
            map["scheduledPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentError"] as? String {
            self.currentError = value
        }
        if let value = dict["currentInstances"] as? Int64 {
            self.currentInstances = value
        }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["minInstances"] as? Int64 {
            self.minInstances = value
        }
        if let value = dict["residentPoolId"] as? String {
            self.residentPoolId = value
        }
        if let value = dict["scalingPolicies"] as? [Any?] {
            var tmp : [ScalingPolicy] = []
            for v in value {
                if v != nil {
                    var model = ScalingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scalingPolicies = tmp
        }
        if let value = dict["scheduledPolicies"] as? [Any?] {
            var tmp : [ScheduledPolicy] = []
            for v in value {
                if v != nil {
                    var model = ScheduledPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scheduledPolicies = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["match"] as? String {
            self.match = value
        }
        if let value = dict["replacement"] as? String {
            self.replacement = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asyncInvocationType"] as? Bool {
            self.asyncInvocationType = value
        }
        if let value = dict["eventRuleFilterPattern"] as? String {
            self.eventRuleFilterPattern = value
        }
        if let value = dict["eventSinkConfig"] as? [String: Any?] {
            var model = EventSinkConfig()
            model.fromMap(value)
            self.eventSinkConfig = model
        }
        if let value = dict["eventSourceConfig"] as? [String: Any?] {
            var model = EventSourceConfig()
            model.fromMap(value)
            self.eventSourceConfig = model
        }
        if let value = dict["runOptions"] as? [String: Any?] {
            var model = RunOptions()
            model.fromMap(value)
            self.runOptions = model
        }
        if let value = dict["triggerEnable"] as? Bool {
            self.triggerEnable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deliveryOption"] as? [String: Any?] {
            var model = DeliveryOption()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["eventSourceParameters"] as? [String: Any?] {
            var model = EventSourceParameters()
            model.fromMap(value)
            self.eventSourceParameters = model
        }
        if let value = dict["eventSourceType"] as? String {
            self.eventSourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDTSParameters"] as? [String: Any?] {
            var model = SourceDTSParameters()
            model.fromMap(value)
            self.sourceDTSParameters = model
        }
        if let value = dict["sourceKafkaParameters"] as? [String: Any?] {
            var model = SourceKafkaParameters()
            model.fromMap(value)
            self.sourceKafkaParameters = model
        }
        if let value = dict["sourceMNSParameters"] as? [String: Any?] {
            var model = SourceMNSParameters()
            model.fromMap(value)
            self.sourceMNSParameters = model
        }
        if let value = dict["sourceMQTTParameters"] as? [String: Any?] {
            var model = SourceMQTTParameters()
            model.fromMap(value)
            self.sourceMQTTParameters = model
        }
        if let value = dict["sourceRabbitMQParameters"] as? [String: Any?] {
            var model = SourceRabbitMQParameters()
            model.fromMap(value)
            self.sourceRabbitMQParameters = model
        }
        if let value = dict["sourceRocketMQParameters"] as? [String: Any?] {
            var model = SourceRocketMQParameters()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? [String: Any?] {
            var model = Key()
            model.fromMap(value)
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

    public var instanceIsolationMode: String?

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

    public var resourceGroupId: String?

    public var role: String?

    public var runtime: String?

    public var sessionAffinity: String?

    public var sessionAffinityConfig: String?

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
        if self.instanceIsolationMode != nil {
            map["instanceIsolationMode"] = self.instanceIsolationMode!
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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
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
        if self.sessionAffinityConfig != nil {
            map["sessionAffinityConfig"] = self.sessionAffinityConfig!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeChecksum"] as? String {
            self.codeChecksum = value
        }
        if let value = dict["codeSize"] as? Int64 {
            self.codeSize = value
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["customDNS"] as? [String: Any?] {
            var model = CustomDNS()
            model.fromMap(value)
            self.customDNS = model
        }
        if let value = dict["customRuntimeConfig"] as? [String: Any?] {
            var model = CustomRuntimeConfig()
            model.fromMap(value)
            self.customRuntimeConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["disableOndemand"] as? Bool {
            self.disableOndemand = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["enableLongLiving"] as? Bool {
            self.enableLongLiving = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["functionId"] as? String {
            self.functionId = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = GPUConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["handler"] as? String {
            self.handler = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["instanceIsolationMode"] as? String {
            self.instanceIsolationMode = value
        }
        if let value = dict["instanceLifecycleConfig"] as? [String: Any?] {
            var model = InstanceLifecycleConfig()
            model.fromMap(value)
            self.instanceLifecycleConfig = model
        }
        if let value = dict["internetAccess"] as? Bool {
            self.internetAccess = value
        }
        if let value = dict["invocationRestriction"] as? [String: Any?] {
            var model = FunctionRestriction()
            model.fromMap(value)
            self.invocationRestriction = model
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["lastUpdateStatus"] as? String {
            self.lastUpdateStatus = value
        }
        if let value = dict["lastUpdateStatusReason"] as? String {
            self.lastUpdateStatusReason = value
        }
        if let value = dict["lastUpdateStatusReasonCode"] as? String {
            self.lastUpdateStatusReasonCode = value
        }
        if let value = dict["layers"] as? [Any?] {
            var tmp : [FunctionLayer] = []
            for v in value {
                if v != nil {
                    var model = FunctionLayer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.layers = tmp
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
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
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["sessionAffinity"] as? String {
            self.sessionAffinity = value
        }
        if let value = dict["sessionAffinityConfig"] as? String {
            self.sessionAffinityConfig = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["stateReason"] as? String {
            self.stateReason = value
        }
        if let value = dict["stateReasonCode"] as? String {
            self.stateReasonCode = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["tracingConfig"] as? [String: Any?] {
            var model = TracingConfig()
            model.fromMap(value)
            self.tracingConfig = model
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = VPCConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arn"] as? String {
            self.arn = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["disable"] as? Bool {
            self.disable = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gpuMemorySize"] as? Int32 {
            self.gpuMemorySize = value
        }
        if let value = dict["gpuType"] as? String {
            self.gpuType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["events"] as? [Any?] {
            var tmp : [InstanceEventItem] = []
            for v in value {
                if v != nil {
                    var model = InstanceEventItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resouceType"] as? String {
            self.resouceType = value
        }
        if let value = dict["resourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
    }
}

public class GetScalingConfigStatusOutput : Tea.TeaModel {
    public var scalingConfigStatus: ScalingConfigStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingConfigStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scalingConfigStatus != nil {
            map["scalingConfigStatus"] = self.scalingConfigStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scalingConfigStatus"] as? [String: Any?] {
            var model = ScalingConfigStatus()
            model.fromMap(value)
            self.scalingConfigStatus = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["urlInternet"] as? String {
            self.urlInternet = value
        }
        if let value = dict["urlIntranet"] as? String {
            self.urlIntranet = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["disableURLInternet"] as? Bool {
            self.disableURLInternet = value
        }
        if let value = dict["methods"] as? [String] {
            self.methods = value
        }
    }
}

public class HeaderFieldSessionAffinityConfig : Tea.TeaModel {
    public var affinityHeaderFieldName: String?

    public var sessionConcurrencyPerInstance: Int64?

    public var sessionIdleTimeoutInSeconds: Int64?

    public var sessionTTLInSeconds: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affinityHeaderFieldName != nil {
            map["affinityHeaderFieldName"] = self.affinityHeaderFieldName!
        }
        if self.sessionConcurrencyPerInstance != nil {
            map["sessionConcurrencyPerInstance"] = self.sessionConcurrencyPerInstance!
        }
        if self.sessionIdleTimeoutInSeconds != nil {
            map["sessionIdleTimeoutInSeconds"] = self.sessionIdleTimeoutInSeconds!
        }
        if self.sessionTTLInSeconds != nil {
            map["sessionTTLInSeconds"] = self.sessionTTLInSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["affinityHeaderFieldName"] as? String {
            self.affinityHeaderFieldName = value
        }
        if let value = dict["sessionConcurrencyPerInstance"] as? Int64 {
            self.sessionConcurrencyPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutInSeconds"] as? Int64 {
            self.sessionIdleTimeoutInSeconds = value
        }
        if let value = dict["sessionTTLInSeconds"] as? Int64 {
            self.sessionTTLInSeconds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checksum"] as? String {
            self.checksum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["children"] as? [Any?] {
            var tmp : [InstanceEventItem] = []
            for v in value {
                if v != nil {
                    var model = InstanceEventItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["level"] as? String {
            self.level = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["time"] as? String {
            self.time = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTimeMs"] as? Int64 {
            self.createdTimeMs = value
        }
        if let value = dict["destroyedTimeMs"] as? Int64 {
            self.destroyedTimeMs = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["initializer"] as? [String: Any?] {
            var model = LifecycleHook()
            model.fromMap(value)
            self.initializer = model
        }
        if let value = dict["preStop"] as? [String: Any?] {
            var model = LifecycleHook()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxRetryTime"] as? Int32 {
            self.maxRetryTime = value
        }
        if let value = dict["triggerInterval"] as? Int32 {
            self.triggerInterval = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["suffix"] as? String {
            self.suffix = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["code"] as? [String: Any?] {
            var model = OutputCodeLocation()
            model.fromMap(value)
            self.code = model
        }
        if let value = dict["codeChecksum"] as? String {
            self.codeChecksum = value
        }
        if let value = dict["codeSize"] as? Int64 {
            self.codeSize = value
        }
        if let value = dict["compatibleRuntime"] as? [String] {
            self.compatibleRuntime = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["layerName"] as? String {
            self.layerName = value
        }
        if let value = dict["layerVersionArn"] as? String {
            self.layerVersionArn = value
        }
        if let value = dict["license"] as? String {
            self.license = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["command"] as? [String] {
            self.command = value
        }
        if let value = dict["handler"] as? String {
            self.handler = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliases"] as? [Any?] {
            var tmp : [Alias] = []
            for v in value {
                if v != nil {
                    var model = Alias()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aliases = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [Any?] {
            var tmp : [AsyncConfig] = []
            for v in value {
                if v != nil {
                    var model = AsyncConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [AsyncTask] = []
            for v in value {
                if v != nil {
                    var model = AsyncTask()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configs"] as? [Any?] {
            var tmp : [ConcurrencyConfig] = []
            for v in value {
                if v != nil {
                    var model = ConcurrencyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["customDomains"] as? [Any?] {
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
            self.customDomains = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListElasticConfigsOutput : Tea.TeaModel {
    public var elasticConfigs: [ElasticConfigStatus]?

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
        if self.elasticConfigs != nil {
            var tmp : [Any] = []
            for k in self.elasticConfigs! {
                tmp.append(k.toMap())
            }
            map["elasticConfigs"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["elasticConfigs"] as? [Any?] {
            var tmp : [ElasticConfigStatus] = []
            for v in value {
                if v != nil {
                    var model = ElasticConfigStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elasticConfigs = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functions"] as? [Any?] {
            var tmp : [Function] = []
            for v in value {
                if v != nil {
                    var model = Function()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.functions = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [InstanceInfo] = []
            for v in value {
                if v != nil {
                    var model = InstanceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["layers"] as? [Any?] {
            var tmp : [Layer] = []
            for v in value {
                if v != nil {
                    var model = Layer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.layers = tmp
        }
        if let value = dict["nextVersion"] as? Int32 {
            self.nextVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["layers"] as? [Any?] {
            var tmp : [Layer] = []
            for v in value {
                if v != nil {
                    var model = Layer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.layers = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["provisionConfigs"] as? [Any?] {
            var tmp : [ProvisionConfig] = []
            for v in value {
                if v != nil {
                    var model = ProvisionConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.provisionConfigs = tmp
        }
    }
}

public class ListResidentResourcePoolsOutput : Tea.TeaModel {
    public var nextToken: String?

    public var residentResourcePools: [ResidentResourcePool]?

    public override init() {
        super.init()
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
        if self.residentResourcePools != nil {
            var tmp : [Any] = []
            for k in self.residentResourcePools! {
                tmp.append(k.toMap())
            }
            map["residentResourcePools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["residentResourcePools"] as? [Any?] {
            var tmp : [ResidentResourcePool] = []
            for v in value {
                if v != nil {
                    var model = ResidentResourcePool()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.residentResourcePools = tmp
        }
    }
}

public class ListScalingConfigStatusOutput : Tea.TeaModel {
    public var nextToken: String?

    public var result: [ScalingConfigStatus]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ScalingConfigStatus] = []
            for v in value {
                if v != nil {
                    var model = ScalingConfigStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [TagResource] = []
            for v in value {
                if v != nil {
                    var model = TagResource()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resources"] as? [Any?] {
            var tmp : [Resource] = []
            for v in value {
                if v != nil {
                    var model = Resource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["triggers"] as? [Any?] {
            var tmp : [Trigger] = []
            for v in value {
                if v != nil {
                    var model = Trigger()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["versions"] as? [Any?] {
            var tmp : [Version] = []
            for v in value {
                if v != nil {
                    var model = Version()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["vpcIds"] as? [String] {
            self.vpcIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enableInstanceMetrics"] as? Bool {
            self.enableInstanceMetrics = value
        }
        if let value = dict["enableRequestMetrics"] as? Bool {
            self.enableRequestMetrics = value
        }
        if let value = dict["logBeginRule"] as? String {
            self.logBeginRule = value
        }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
    }
}

public class MCPSSESessionAffinityConfig : Tea.TeaModel {
    public var sessionConcurrencyPerInstance: Int64?

    public var sseEndpointPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionConcurrencyPerInstance != nil {
            map["sessionConcurrencyPerInstance"] = self.sessionConcurrencyPerInstance!
        }
        if self.sseEndpointPath != nil {
            map["sseEndpointPath"] = self.sseEndpointPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionConcurrencyPerInstance"] as? Int64 {
            self.sessionConcurrencyPerInstance = value
        }
        if let value = dict["sseEndpointPath"] as? String {
            self.sseEndpointPath = value
        }
    }
}

public class MCPStreamableSessionAffinityConfig : Tea.TeaModel {
    public var sessionConcurrencyPerInstance: Int64?

    public var sessionIdleTimeoutInSeconds: Int64?

    public var sessionTTLInSeconds: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionConcurrencyPerInstance != nil {
            map["sessionConcurrencyPerInstance"] = self.sessionConcurrencyPerInstance!
        }
        if self.sessionIdleTimeoutInSeconds != nil {
            map["sessionIdleTimeoutInSeconds"] = self.sessionIdleTimeoutInSeconds!
        }
        if self.sessionTTLInSeconds != nil {
            map["sessionTTLInSeconds"] = self.sessionTTLInSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionConcurrencyPerInstance"] as? Int64 {
            self.sessionConcurrencyPerInstance = value
        }
        if let value = dict["sessionIdleTimeoutInSeconds"] as? Int64 {
            self.sessionIdleTimeoutInSeconds = value
        }
        if let value = dict["sessionTTLInSeconds"] as? Int64 {
            self.sessionTTLInSeconds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filterTag"] as? String {
            self.filterTag = value
        }
        if let value = dict["notifyContentFormat"] as? String {
            self.notifyContentFormat = value
        }
        if let value = dict["notifyStrategy"] as? String {
            self.notifyStrategy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["events"] as? [String] {
            self.events = value
        }
        if let value = dict["filter"] as? [String: Any?] {
            var model = Filter()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["repositoryType"] as? String {
            self.repositoryType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["methods"] as? [String] {
            self.methods = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["rewriteConfig"] as? [String: Any?] {
            var model = RewriteConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alwaysAllocateCPU"] as? Bool {
            self.alwaysAllocateCPU = value
        }
        if let value = dict["alwaysAllocateGPU"] as? Bool {
            self.alwaysAllocateGPU = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["currentError"] as? String {
            self.currentError = value
        }
        if let value = dict["defaultTarget"] as? Int64 {
            self.defaultTarget = value
        }
        if let value = dict["functionArn"] as? String {
            self.functionArn = value
        }
        if let value = dict["scheduledActions"] as? [Any?] {
            var tmp : [ScheduledAction] = []
            for v in value {
                if v != nil {
                    var model = ScheduledAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scheduledActions = tmp
        }
        if let value = dict["target"] as? Int64 {
            self.target = value
        }
        if let value = dict["targetTrackingPolicies"] as? [Any?] {
            var tmp : [TargetTrackingPolicy] = []
            for v in value {
                if v != nil {
                    var model = TargetTrackingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asyncTask"] as? Bool {
            self.asyncTask = value
        }
        if let value = dict["destinationConfig"] as? [String: Any?] {
            var model = DestinationConfig()
            model.fromMap(value)
            self.destinationConfig = model
        }
        if let value = dict["maxAsyncEventAgeInSeconds"] as? Int64 {
            self.maxAsyncEventAgeInSeconds = value
        }
        if let value = dict["maxAsyncRetryAttempts"] as? Int64 {
            self.maxAsyncRetryAttempts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["reservedConcurrency"] as? Int64 {
            self.reservedConcurrency = value
        }
    }
}

public class PutElasticConfigInput : Tea.TeaModel {
    public var minInstances: Int64?

    public var residentPoolId: String?

    public var scalingPolicies: [ScalingPolicy]?

    public var scheduledPolicies: [ScheduledPolicy]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.minInstances != nil {
            map["minInstances"] = self.minInstances!
        }
        if self.residentPoolId != nil {
            map["residentPoolId"] = self.residentPoolId!
        }
        if self.scalingPolicies != nil {
            var tmp : [Any] = []
            for k in self.scalingPolicies! {
                tmp.append(k.toMap())
            }
            map["scalingPolicies"] = tmp
        }
        if self.scheduledPolicies != nil {
            var tmp : [Any] = []
            for k in self.scheduledPolicies! {
                tmp.append(k.toMap())
            }
            map["scheduledPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["minInstances"] as? Int64 {
            self.minInstances = value
        }
        if let value = dict["residentPoolId"] as? String {
            self.residentPoolId = value
        }
        if let value = dict["scalingPolicies"] as? [Any?] {
            var tmp : [ScalingPolicy] = []
            for v in value {
                if v != nil {
                    var model = ScalingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scalingPolicies = tmp
        }
        if let value = dict["scheduledPolicies"] as? [Any?] {
            var tmp : [ScheduledPolicy] = []
            for v in value {
                if v != nil {
                    var model = ScheduledPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scheduledPolicies = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alwaysAllocateCPU"] as? Bool {
            self.alwaysAllocateCPU = value
        }
        if let value = dict["alwaysAllocateGPU"] as? Bool {
            self.alwaysAllocateGPU = value
        }
        if let value = dict["defaultTarget"] as? Int64 {
            self.defaultTarget = value
        }
        if let value = dict["scheduledActions"] as? [Any?] {
            var tmp : [ScheduledAction] = []
            for v in value {
                if v != nil {
                    var model = ScheduledAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scheduledActions = tmp
        }
        if let value = dict["target"] as? Int64 {
            self.target = value
        }
        if let value = dict["targetTrackingPolicies"] as? [Any?] {
            var tmp : [TargetTrackingPolicy] = []
            for v in value {
                if v != nil {
                    var model = TargetTrackingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetTrackingPolicies = tmp
        }
    }
}

public class PutScalingConfigInput : Tea.TeaModel {
    public var residentConfig: ResidentConfig?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.residentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.residentConfig != nil {
            map["residentConfig"] = self.residentConfig?.toMap()
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["residentConfig"] as? [String: Any?] {
            var model = ResidentConfig()
            model.fromMap(value)
            self.residentConfig = model
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class PutScalingConfigOutput : Tea.TeaModel {
    public var functionName: String?

    public var qualifier: String?

    public var residentConfig: ResidentConfig?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.residentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.residentConfig != nil {
            map["residentConfig"] = self.residentConfig?.toMap()
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["residentConfig"] as? [String: Any?] {
            var model = ResidentConfig()
            model.fromMap(value)
            self.residentConfig = model
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["match"] as? String {
            self.match = value
        }
        if let value = dict["replacement"] as? String {
            self.replacement = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["password"] as? String {
            self.password = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["insecure"] as? Bool {
            self.insecure = value
        }
        if let value = dict["rootCaCertBase64"] as? String {
            self.rootCaCertBase64 = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = RegistryAuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = RegistryCertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["networkConfig"] as? [String: Any?] {
            var model = RegistryNetworkConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ResidentConfig : Tea.TeaModel {
    public var count: Int64?

    public var poolId: String?

    public override init() {
        super.init()
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
        if self.poolId != nil {
            map["poolId"] = self.poolId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["poolId"] as? String {
            self.poolId = value
        }
    }
}

public class ResidentResourceAllocation : Tea.TeaModel {
    public var functionName: String?

    public var instanceCount: Int32?

    public var qualifier: String?

    public var totalCpuCores: Double?

    public var totalDiskSize: Double?

    public var totalGpuMemorySize: Double?

    public var totalMemorySize: Double?

    public override init() {
        super.init()
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
        if self.instanceCount != nil {
            map["instanceCount"] = self.instanceCount!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.totalCpuCores != nil {
            map["totalCpuCores"] = self.totalCpuCores!
        }
        if self.totalDiskSize != nil {
            map["totalDiskSize"] = self.totalDiskSize!
        }
        if self.totalGpuMemorySize != nil {
            map["totalGpuMemorySize"] = self.totalGpuMemorySize!
        }
        if self.totalMemorySize != nil {
            map["totalMemorySize"] = self.totalMemorySize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["instanceCount"] as? Int32 {
            self.instanceCount = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["totalCpuCores"] as? Double {
            self.totalCpuCores = value
        }
        if let value = dict["totalDiskSize"] as? Double {
            self.totalDiskSize = value
        }
        if let value = dict["totalGpuMemorySize"] as? Double {
            self.totalGpuMemorySize = value
        }
        if let value = dict["totalMemorySize"] as? Double {
            self.totalMemorySize = value
        }
    }
}

public class ResidentResourceAllocationStatus : Tea.TeaModel {
    public var lastAllocatedTime: String?

    public var lastAllocation: ResidentResourceAllocation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lastAllocation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lastAllocatedTime != nil {
            map["lastAllocatedTime"] = self.lastAllocatedTime!
        }
        if self.lastAllocation != nil {
            map["lastAllocation"] = self.lastAllocation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["lastAllocatedTime"] as? String {
            self.lastAllocatedTime = value
        }
        if let value = dict["lastAllocation"] as? [String: Any?] {
            var model = ResidentResourceAllocation()
            model.fromMap(value)
            self.lastAllocation = model
        }
    }
}

public class ResidentResourceCapacity : Tea.TeaModel {
    public var gpuType: String?

    public var totalCpuCores: Int64?

    public var totalDiskSize: Int64?

    public var totalGpuCards: Int64?

    public var totalGpuMemorySize: Int64?

    public var totalMemorySize: Int64?

    public override init() {
        super.init()
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
            map["gpuType"] = self.gpuType!
        }
        if self.totalCpuCores != nil {
            map["totalCpuCores"] = self.totalCpuCores!
        }
        if self.totalDiskSize != nil {
            map["totalDiskSize"] = self.totalDiskSize!
        }
        if self.totalGpuCards != nil {
            map["totalGpuCards"] = self.totalGpuCards!
        }
        if self.totalGpuMemorySize != nil {
            map["totalGpuMemorySize"] = self.totalGpuMemorySize!
        }
        if self.totalMemorySize != nil {
            map["totalMemorySize"] = self.totalMemorySize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["totalCpuCores"] as? Int64 {
            self.totalCpuCores = value
        }
        if let value = dict["totalDiskSize"] as? Int64 {
            self.totalDiskSize = value
        }
        if let value = dict["totalGpuCards"] as? Int64 {
            self.totalGpuCards = value
        }
        if let value = dict["totalGpuMemorySize"] as? Int64 {
            self.totalGpuMemorySize = value
        }
        if let value = dict["totalMemorySize"] as? Int64 {
            self.totalMemorySize = value
        }
    }
}

public class ResidentResourcePool : Tea.TeaModel {
    public var allocationStatus: ResidentResourceAllocationStatus?

    public var createdTime: String?

    public var expireTime: String?

    public var lastModifiedTime: String?

    public var residentResourcePoolId: String?

    public var residentResourcePoolName: String?

    public var resourcePoolCapacity: ResidentResourceCapacity?

    public var resourcePoolConfig: ResidentResourceCapacity?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.allocationStatus?.validate()
        try self.resourcePoolCapacity?.validate()
        try self.resourcePoolConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocationStatus != nil {
            map["allocationStatus"] = self.allocationStatus?.toMap()
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.residentResourcePoolId != nil {
            map["residentResourcePoolId"] = self.residentResourcePoolId!
        }
        if self.residentResourcePoolName != nil {
            map["residentResourcePoolName"] = self.residentResourcePoolName!
        }
        if self.resourcePoolCapacity != nil {
            map["resourcePoolCapacity"] = self.resourcePoolCapacity?.toMap()
        }
        if self.resourcePoolConfig != nil {
            map["resourcePoolConfig"] = self.resourcePoolConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allocationStatus"] as? [String: Any?] {
            var model = ResidentResourceAllocationStatus()
            model.fromMap(value)
            self.allocationStatus = model
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["residentResourcePoolId"] as? String {
            self.residentResourcePoolId = value
        }
        if let value = dict["residentResourcePoolName"] as? String {
            self.residentResourcePoolName = value
        }
        if let value = dict["resourcePoolCapacity"] as? [String: Any?] {
            var model = ResidentResourceCapacity()
            model.fromMap(value)
            self.resourcePoolCapacity = model
        }
        if let value = dict["resourcePoolConfig"] as? [String: Any?] {
            var model = ResidentResourceCapacity()
            model.fromMap(value)
            self.resourcePoolConfig = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resouceType"] as? String {
            self.resouceType = value
        }
        if let value = dict["resourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushRetryStrategy"] as? String {
            self.pushRetryStrategy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["equalRules"] as? [Any?] {
            var tmp : [EqualRule] = []
            for v in value {
                if v != nil {
                    var model = EqualRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.equalRules = tmp
        }
        if let value = dict["regexRules"] as? [Any?] {
            var tmp : [RegexRule] = []
            for v in value {
                if v != nil {
                    var model = RegexRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regexRules = tmp
        }
        if let value = dict["wildcardRules"] as? [Any?] {
            var tmp : [WildcardRule] = []
            for v in value {
                if v != nil {
                    var model = WildcardRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchWindow"] as? [String: Any?] {
            var model = BatchWindow()
            model.fromMap(value)
            self.batchWindow = model
        }
        if let value = dict["deadLetterQueue"] as? [String: Any?] {
            var model = DeadLetterQueue()
            model.fromMap(value)
            self.deadLetterQueue = model
        }
        if let value = dict["errorsTolerance"] as? String {
            self.errorsTolerance = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["retryStrategy"] as? [String: Any?] {
            var model = RetryStrategy()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["functionParameter"] as? [String: String] {
            self.functionParameter = value
        }
        if let value = dict["jobConfig"] as? [String: Any?] {
            var model = JobConfig()
            model.fromMap(value)
            self.jobConfig = model
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = SLSTriggerLogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["sourceConfig"] as? [String: Any?] {
            var model = SourceConfig()
            model.fromMap(value)
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

public class ScalingConfigStatus : Tea.TeaModel {
    public var functionName: String?

    public var qualifier: String?

    public var residentConfig: ResidentConfig?

    public var resourceType: String?

    public var scalingStatus: ScalingStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.residentConfig?.validate()
        try self.scalingStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.residentConfig != nil {
            map["residentConfig"] = self.residentConfig?.toMap()
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.scalingStatus != nil {
            map["scalingStatus"] = self.scalingStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["residentConfig"] as? [String: Any?] {
            var model = ResidentConfig()
            model.fromMap(value)
            self.residentConfig = model
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["scalingStatus"] as? [String: Any?] {
            var model = ScalingStatus()
            model.fromMap(value)
            self.scalingStatus = model
        }
    }
}

public class ScalingPolicy : Tea.TeaModel {
    public var endTime: String?

    public var maxInstances: Int64?

    public var metricTarget: Double?

    public var metricType: String?

    public var minInstances: Int64?

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
        if self.maxInstances != nil {
            map["maxInstances"] = self.maxInstances!
        }
        if self.metricTarget != nil {
            map["metricTarget"] = self.metricTarget!
        }
        if self.metricType != nil {
            map["metricType"] = self.metricType!
        }
        if self.minInstances != nil {
            map["minInstances"] = self.minInstances!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["maxInstances"] as? Int64 {
            self.maxInstances = value
        }
        if let value = dict["metricTarget"] as? Double {
            self.metricTarget = value
        }
        if let value = dict["metricType"] as? String {
            self.metricType = value
        }
        if let value = dict["minInstances"] as? Int64 {
            self.minInstances = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class ScalingStatus : Tea.TeaModel {
    public var currentError: String?

    public var resourceCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentError != nil {
            map["currentError"] = self.currentError!
        }
        if self.resourceCount != nil {
            map["resourceCount"] = self.resourceCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentError"] as? String {
            self.currentError = value
        }
        if let value = dict["resourceCount"] as? Int64 {
            self.resourceCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["scheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["target"] as? Int64 {
            self.target = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class ScheduledPolicy : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["scheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["target"] as? Int64 {
            self.target = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrokerUrl"] as? String {
            self.brokerUrl = value
        }
        if let value = dict["InitCheckPoint"] as? Int32 {
            self.initCheckPoint = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sid"] as? String {
            self.sid = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsumerGroup"] as? String {
            self.consumerGroup = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Network"] as? String {
            self.network = value
        }
        if let value = dict["OffsetReset"] as? String {
            self.offsetReset = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["VSwitchIds"] as? String {
            self.vSwitchIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsBase64Decode"] as? Bool {
            self.isBase64Decode = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VirtualHostName"] as? String {
            self.virtualHostName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["FilterType"] as? String {
            self.filterType = value
        }
        if let value = dict["GroupID"] as? String {
            self.groupID = value
        }
        if let value = dict["InstanceEndpoint"] as? String {
            self.instanceEndpoint = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceNetwork"] as? String {
            self.instanceNetwork = value
        }
        if let value = dict["InstancePassword"] as? String {
            self.instancePassword = value
        }
        if let value = dict["InstanceSecurityGroupId"] as? String {
            self.instanceSecurityGroupId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InstanceUsername"] as? String {
            self.instanceUsername = value
        }
        if let value = dict["InstanceVSwitchIds"] as? String {
            self.instanceVSwitchIds = value
        }
        if let value = dict["InstanceVpcId"] as? String {
            self.instanceVpcId = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["Timestamp"] as? Int32 {
            self.timestamp = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceArn"] as? String {
            self.resourceArn = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["maxCapacity"] as? Int64 {
            self.maxCapacity = value
        }
        if let value = dict["metricTarget"] as? Double {
            self.metricTarget = value
        }
        if let value = dict["metricType"] as? String {
            self.metricType = value
        }
        if let value = dict["minCapacity"] as? Int64 {
            self.minCapacity = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["payload"] as? String {
            self.payload = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? [String: String] {
            self.params = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = HTTPTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["invocationRole"] as? String {
            self.invocationRole = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["sourceArn"] as? String {
            self.sourceArn = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["targetArn"] as? String {
            self.targetArn = value
        }
        if let value = dict["triggerConfig"] as? String {
            self.triggerConfig = value
        }
        if let value = dict["triggerId"] as? String {
            self.triggerId = value
        }
        if let value = dict["triggerName"] as? String {
            self.triggerName = value
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalVersionWeight"] as? [String: Double] {
            self.additionalVersionWeight = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
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
        if let value = dict["wafConfig"] as? [String: Any?] {
            var model = WAFConfig()
            model.fromMap(value)
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

    public var instanceIsolationMode: String?

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

    public var sessionAffinityConfig: String?

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
        if self.instanceIsolationMode != nil {
            map["instanceIsolationMode"] = self.instanceIsolationMode!
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
        if self.sessionAffinityConfig != nil {
            map["sessionAffinityConfig"] = self.sessionAffinityConfig!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? [String: Any?] {
            var model = InputCodeLocation()
            model.fromMap(value)
            self.code = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["customDNS"] as? [String: Any?] {
            var model = CustomDNS()
            model.fromMap(value)
            self.customDNS = model
        }
        if let value = dict["customRuntimeConfig"] as? [String: Any?] {
            var model = CustomRuntimeConfig()
            model.fromMap(value)
            self.customRuntimeConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["disableOndemand"] as? Bool {
            self.disableOndemand = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["enableLongLiving"] as? Bool {
            self.enableLongLiving = value
        }
        if let value = dict["environmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = GPUConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["handler"] as? String {
            self.handler = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["instanceIsolationMode"] as? String {
            self.instanceIsolationMode = value
        }
        if let value = dict["instanceLifecycleConfig"] as? [String: Any?] {
            var model = InstanceLifecycleConfig()
            model.fromMap(value)
            self.instanceLifecycleConfig = model
        }
        if let value = dict["internetAccess"] as? Bool {
            self.internetAccess = value
        }
        if let value = dict["layers"] as? [String] {
            self.layers = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
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
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["sessionAffinity"] as? String {
            self.sessionAffinity = value
        }
        if let value = dict["sessionAffinityConfig"] as? String {
            self.sessionAffinityConfig = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["tracingConfig"] as? [String: Any?] {
            var model = TracingConfig()
            model.fromMap(value)
            self.tracingConfig = model
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = VPCConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class UpdateResidentResourcePoolInput : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["invocationRole"] as? String {
            self.invocationRole = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["triggerConfig"] as? String {
            self.triggerConfig = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["lastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enableWAF"] as? Bool {
            self.enableWAF = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["match"] as? String {
            self.match = value
        }
        if let value = dict["replacement"] as? String {
            self.replacement = value
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var body: ChangeResourceGroupInput?

    public override init() {
        super.init()
    }

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
            var model = ChangeResourceGroupInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupOutput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupOutput()
            model.fromMap(value)
            self.body = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAliasInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Alias()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomain()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFunctionInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Function()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLayerVersionInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Layer()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTriggerInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Trigger()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVpcBindingInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["abortOngoingRequest"] as? Bool {
            self.abortOngoingRequest = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableFunctionInvocationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableFunctionInvocationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Alias()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AsyncConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AsyncTask()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConcurrencyConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomain()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Function()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OutputFuncCode()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Layer()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Layer()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProvisionConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Trigger()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["x-fc-async-task-id"] as? String {
            self.xFcAsyncTaskId = value
        }
        if let value = dict["x-fc-invocation-type"] as? String {
            self.xFcInvocationType = value
        }
        if let value = dict["x-fc-log-type"] as? String {
            self.xFcLogType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? InputStream {
            self.body = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? InputStream {
            self.body = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAliasesOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAsyncInvokeConfigOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["includePayload"] as? Bool {
            self.includePayload = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["sortOrderByTime"] as? String {
            self.sortOrderByTime = value
        }
        if let value = dict["startedTimeBegin"] as? Int64 {
            self.startedTimeBegin = value
        }
        if let value = dict["startedTimeEnd"] as? Int64 {
            self.startedTimeEnd = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAsyncTaskOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListConcurrencyConfigsOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCustomDomainOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVersionsOutput()
            model.fromMap(value)
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

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["fcVersion"] as? String {
            self.fcVersion = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["gpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
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

public class ListFunctionsShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fcVersion: String?

    public var functionName: String?

    public var gpuType: String?

    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["fcVersion"] as? String {
            self.fcVersion = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["gpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFunctionsOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTimeMs"] as? Int64 {
            self.endTimeMs = value
        }
        if let value = dict["instanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["instanceStatus"] as? [String] {
            self.instanceStatus = value
        }
        if let value = dict["limit"] as? String {
            self.limit = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["startKey"] as? String {
            self.startKey = value
        }
        if let value = dict["startTimeMs"] as? Int64 {
            self.startTimeMs = value
        }
        if let value = dict["withAllActive"] as? Bool {
            self.withAllActive = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTimeMs"] as? Int64 {
            self.endTimeMs = value
        }
        if let value = dict["instanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["instanceStatus"] as? String {
            self.instanceStatusShrink = value
        }
        if let value = dict["limit"] as? String {
            self.limit = value
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["startKey"] as? String {
            self.startKey = value
        }
        if let value = dict["startTimeMs"] as? Int64 {
            self.startTimeMs = value
        }
        if let value = dict["withAllActive"] as? Bool {
            self.withAllActive = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancesOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["startVersion"] as? String {
            self.startVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLayerVersionOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["official"] as? String {
            self.official = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["public"] as? String {
            self.public_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLayersOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProvisionConfigsOutput()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTriggersOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVpcBindingsOutput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishVersionInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Version()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutAsyncInvokeConfigInput()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AsyncConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutConcurrencyInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConcurrencyConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["public"] as? String {
            self.public_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutProvisionConfigInput()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProvisionConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["qualifier"] as? String {
            self.qualifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAliasInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Alias()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomDomain()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFunctionInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Function()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTriggerInput()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Trigger()
            model.fromMap(value)
            self.body = model
        }
    }
}
