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

public class AsyncConfigMeta : Tea.TeaModel {
    public var functionName: String?

    public var qualifier: String?

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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
    }
}

public class AvailableAZ : Tea.TeaModel {
    public var availableAZs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAZs != nil {
            map["availableAZs"] = self.availableAZs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("availableAZs") && dict["availableAZs"] != nil {
            self.availableAZs = dict["availableAZs"] as! String
        }
    }
}

public class BatchWindow : Tea.TeaModel {
    public var countBasedWindow: Int64?

    public var timeBasedWindow: Int64?

    public override init() {
        super.init()
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
        if dict.keys.contains("CountBasedWindow") && dict["CountBasedWindow"] != nil {
            self.countBasedWindow = dict["CountBasedWindow"] as! Int64
        }
        if dict.keys.contains("TimeBasedWindow") && dict["TimeBasedWindow"] != nil {
            self.timeBasedWindow = dict["TimeBasedWindow"] as! Int64
        }
    }
}

public class CDNEventsTriggerConfig : Tea.TeaModel {
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
        if dict.keys.contains("eventName") && dict["eventName"] != nil {
            self.eventName = dict["eventName"] as! String
        }
        if dict.keys.contains("eventVersion") && dict["eventVersion"] != nil {
            self.eventVersion = dict["eventVersion"] as! String
        }
        if dict.keys.contains("filter") && dict["filter"] != nil {
            self.filter = dict["filter"] as! [String: [String]]
        }
        if dict.keys.contains("notes") && dict["notes"] != nil {
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

public class Code : Tea.TeaModel {
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

public class CustomContainerConfig : Tea.TeaModel {
    public var accelerationType: String?

    public var args: String?

    public var command: String?

    public var image: String?

    public var instanceID: String?

    public var webServerMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerationType != nil {
            map["accelerationType"] = self.accelerationType!
        }
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.instanceID != nil {
            map["instanceID"] = self.instanceID!
        }
        if self.webServerMode != nil {
            map["webServerMode"] = self.webServerMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accelerationType") && dict["accelerationType"] != nil {
            self.accelerationType = dict["accelerationType"] as! String
        }
        if dict.keys.contains("args") && dict["args"] != nil {
            self.args = dict["args"] as! String
        }
        if dict.keys.contains("command") && dict["command"] != nil {
            self.command = dict["command"] as! String
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("instanceID") && dict["instanceID"] != nil {
            self.instanceID = dict["instanceID"] as! String
        }
        if dict.keys.contains("webServerMode") && dict["webServerMode"] != nil {
            self.webServerMode = dict["webServerMode"] as! Bool
        }
    }
}

public class CustomContainerConfigInfo : Tea.TeaModel {
    public var accelerationInfo: AccelerationInfo?

    public var accelerationType: String?

    public var args: String?

    public var command: String?

    public var image: String?

    public var instanceID: String?

    public var webServerMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accelerationInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerationInfo != nil {
            map["accelerationInfo"] = self.accelerationInfo?.toMap()
        }
        if self.accelerationType != nil {
            map["accelerationType"] = self.accelerationType!
        }
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.instanceID != nil {
            map["instanceID"] = self.instanceID!
        }
        if self.webServerMode != nil {
            map["webServerMode"] = self.webServerMode!
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
        if dict.keys.contains("args") && dict["args"] != nil {
            self.args = dict["args"] as! String
        }
        if dict.keys.contains("command") && dict["command"] != nil {
            self.command = dict["command"] as! String
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("instanceID") && dict["instanceID"] != nil {
            self.instanceID = dict["instanceID"] as! String
        }
        if dict.keys.contains("webServerMode") && dict["webServerMode"] != nil {
            self.webServerMode = dict["webServerMode"] as! Bool
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("args") && dict["args"] != nil {
            self.args = dict["args"] as! [String]
        }
        if dict.keys.contains("command") && dict["command"] != nil {
            self.command = dict["command"] as! [String]
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
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
    }
}

public class DeliveryOption : Tea.TeaModel {
    public var concurrency: Int64?

    public var eventSchema: String?

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
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.eventSchema != nil {
            map["eventSchema"] = self.eventSchema!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("concurrency") && dict["concurrency"] != nil {
            self.concurrency = dict["concurrency"] as! Int64
        }
        if dict.keys.contains("eventSchema") && dict["eventSchema"] != nil {
            self.eventSchema = dict["eventSchema"] as! String
        }
        if dict.keys.contains("mode") && dict["mode"] != nil {
            self.mode = dict["mode"] as! String
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

public class Error : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
    }
}

public class ErrorInfo : Tea.TeaModel {
    public var errorMessage: String?

    public var stackTrace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.stackTrace != nil {
            map["stackTrace"] = self.stackTrace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("stackTrace") && dict["stackTrace"] != nil {
            self.stackTrace = dict["stackTrace"] as! String
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
        if dict.keys.contains("asyncInvocationType") && dict["asyncInvocationType"] != nil {
            self.asyncInvocationType = dict["asyncInvocationType"] as! Bool
        }
        if dict.keys.contains("eventRuleFilterPattern") && dict["eventRuleFilterPattern"] != nil {
            self.eventRuleFilterPattern = dict["eventRuleFilterPattern"] as! String
        }
        if dict.keys.contains("eventSinkConfig") && dict["eventSinkConfig"] != nil {
            var model = EventSinkConfig()
            model.fromMap(dict["eventSinkConfig"] as! [String: Any])
            self.eventSinkConfig = model
        }
        if dict.keys.contains("eventSourceConfig") && dict["eventSourceConfig"] != nil {
            var model = EventSourceConfig()
            model.fromMap(dict["eventSourceConfig"] as! [String: Any])
            self.eventSourceConfig = model
        }
        if dict.keys.contains("runOptions") && dict["runOptions"] != nil {
            var model = RunOptions()
            model.fromMap(dict["runOptions"] as! [String: Any])
            self.runOptions = model
        }
        if dict.keys.contains("triggerEnable") && dict["triggerEnable"] != nil {
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
        if dict.keys.contains("deliveryOption") && dict["deliveryOption"] != nil {
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
        if dict.keys.contains("eventSourceParameters") && dict["eventSourceParameters"] != nil {
            var model = EventSourceParameters()
            model.fromMap(dict["eventSourceParameters"] as! [String: Any])
            self.eventSourceParameters = model
        }
        if dict.keys.contains("eventSourceType") && dict["eventSourceType"] != nil {
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
        if dict.keys.contains("sourceDTSParameters") && dict["sourceDTSParameters"] != nil {
            var model = SourceDTSParameters()
            model.fromMap(dict["sourceDTSParameters"] as! [String: Any])
            self.sourceDTSParameters = model
        }
        if dict.keys.contains("sourceKafkaParameters") && dict["sourceKafkaParameters"] != nil {
            var model = SourceKafkaParameters()
            model.fromMap(dict["sourceKafkaParameters"] as! [String: Any])
            self.sourceKafkaParameters = model
        }
        if dict.keys.contains("sourceMNSParameters") && dict["sourceMNSParameters"] != nil {
            var model = SourceMNSParameters()
            model.fromMap(dict["sourceMNSParameters"] as! [String: Any])
            self.sourceMNSParameters = model
        }
        if dict.keys.contains("sourceMQTTParameters") && dict["sourceMQTTParameters"] != nil {
            var model = SourceMQTTParameters()
            model.fromMap(dict["sourceMQTTParameters"] as! [String: Any])
            self.sourceMQTTParameters = model
        }
        if dict.keys.contains("sourceRabbitMQParameters") && dict["sourceRabbitMQParameters"] != nil {
            var model = SourceRabbitMQParameters()
            model.fromMap(dict["sourceRabbitMQParameters"] as! [String: Any])
            self.sourceRabbitMQParameters = model
        }
        if dict.keys.contains("sourceRocketMQParameters") && dict["sourceRocketMQParameters"] != nil {
            var model = SourceRocketMQParameters()
            model.fromMap(dict["sourceRocketMQParameters"] as! [String: Any])
            self.sourceRocketMQParameters = model
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
        if dict.keys.contains("authConfig") && dict["authConfig"] != nil {
            self.authConfig = dict["authConfig"] as! String
        }
        if dict.keys.contains("authType") && dict["authType"] != nil {
            self.authType = dict["authType"] as! String
        }
        if dict.keys.contains("disableURLInternet") && dict["disableURLInternet"] != nil {
            self.disableURLInternet = dict["disableURLInternet"] as! Bool
        }
        if dict.keys.contains("methods") && dict["methods"] != nil {
            self.methods = dict["methods"] as! [String]
        }
    }
}

public class InstanceLifecycleConfig : Tea.TeaModel {
    public var preFreeze: LifecycleHook?

    public var preStop: LifecycleHook?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.preFreeze?.validate()
        try self.preStop?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preFreeze != nil {
            map["preFreeze"] = self.preFreeze?.toMap()
        }
        if self.preStop != nil {
            map["preStop"] = self.preStop?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("preFreeze") && dict["preFreeze"] != nil {
            var model = LifecycleHook()
            model.fromMap(dict["preFreeze"] as! [String: Any])
            self.preFreeze = model
        }
        if dict.keys.contains("preStop") && dict["preStop"] != nil {
            var model = LifecycleHook()
            model.fromMap(dict["preStop"] as! [String: Any])
            self.preStop = model
        }
    }
}

public class JWTAuthConfig : Tea.TeaModel {
    public var blackList: String?

    public var claimPassBy: [String]?

    public var jwks: String?

    public var tokenLookup: [String]?

    public var whiteList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackList != nil {
            map["blackList"] = self.blackList!
        }
        if self.claimPassBy != nil {
            map["claimPassBy"] = self.claimPassBy!
        }
        if self.jwks != nil {
            map["jwks"] = self.jwks!
        }
        if self.tokenLookup != nil {
            map["tokenLookup"] = self.tokenLookup!
        }
        if self.whiteList != nil {
            map["whiteList"] = self.whiteList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("blackList") && dict["blackList"] != nil {
            self.blackList = dict["blackList"] as! String
        }
        if dict.keys.contains("claimPassBy") && dict["claimPassBy"] != nil {
            self.claimPassBy = dict["claimPassBy"] as! [String]
        }
        if dict.keys.contains("jwks") && dict["jwks"] != nil {
            self.jwks = dict["jwks"] as! String
        }
        if dict.keys.contains("tokenLookup") && dict["tokenLookup"] != nil {
            self.tokenLookup = dict["tokenLookup"] as! [String]
        }
        if dict.keys.contains("whiteList") && dict["whiteList"] != nil {
            self.whiteList = dict["whiteList"] as! [String]
        }
    }
}

public class JaegerConfig : Tea.TeaModel {
    public var endpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
            self.endpoint = dict["endpoint"] as! String
        }
    }
}

public class JobConfig : Tea.TeaModel {
    public var maxRetryTime: Int64?

    public var triggerInterval: Int64?

    public override init() {
        super.init()
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
        if dict.keys.contains("maxRetryTime") && dict["maxRetryTime"] != nil {
            self.maxRetryTime = dict["maxRetryTime"] as! Int64
        }
        if dict.keys.contains("triggerInterval") && dict["triggerInterval"] != nil {
            self.triggerInterval = dict["triggerInterval"] as! Int64
        }
    }
}

public class JobLogConfig : Tea.TeaModel {
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
        if dict.keys.contains("logstore") && dict["logstore"] != nil {
            self.logstore = dict["logstore"] as! String
        }
        if dict.keys.contains("project") && dict["project"] != nil {
            self.project = dict["project"] as! String
        }
    }
}

public class Layer : Tea.TeaModel {
    public var acl: Int32?

    public var arn: String?

    public var arnV2: String?

    public var code: LayerCode?

    public var codeChecksum: String?

    public var codeSize: Int64?

    public var compatibleRuntime: [String]?

    public var createTime: String?

    public var description_: String?

    public var layerName: String?

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
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.arnV2 != nil {
            map["arnV2"] = self.arnV2!
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
            self.acl = dict["acl"] as! Int32
        }
        if dict.keys.contains("arn") && dict["arn"] != nil {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("arnV2") && dict["arnV2"] != nil {
            self.arnV2 = dict["arnV2"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = LayerCode()
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
        if dict.keys.contains("license") && dict["license"] != nil {
            self.license = dict["license"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! Int32
        }
    }
}

public class LayerCode : Tea.TeaModel {
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

public class LogTriggerConfig : Tea.TeaModel {
    public var enable: Bool?

    public var functionParameter: [String: String]?

    public var jobConfig: JobConfig?

    public var logConfig: JobLogConfig?

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
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("functionParameter") && dict["functionParameter"] != nil {
            self.functionParameter = dict["functionParameter"] as! [String: String]
        }
        if dict.keys.contains("jobConfig") && dict["jobConfig"] != nil {
            var model = JobConfig()
            model.fromMap(dict["jobConfig"] as! [String: Any])
            self.jobConfig = model
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = JobLogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("sourceConfig") && dict["sourceConfig"] != nil {
            var model = SourceConfig()
            model.fromMap(dict["sourceConfig"] as! [String: Any])
            self.sourceConfig = model
        }
    }
}

public class MeteringConfig : Tea.TeaModel {
    public var logConfig: LogConfig?

    public var payerId: String?

    public var role: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.payerId != nil {
            map["payerId"] = self.payerId!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("payerId") && dict["payerId"] != nil {
            self.payerId = dict["payerId"] as! String
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
    }
}

public class MnsTopicTriggerConfig : Tea.TeaModel {
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
        if dict.keys.contains("filterTag") && dict["filterTag"] != nil {
            self.filterTag = dict["filterTag"] as! String
        }
        if dict.keys.contains("notifyContentFormat") && dict["notifyContentFormat"] != nil {
            self.notifyContentFormat = dict["notifyContentFormat"] as! String
        }
        if dict.keys.contains("notifyStrategy") && dict["notifyStrategy"] != nil {
            self.notifyStrategy = dict["notifyStrategy"] as! String
        }
    }
}

public class NASConfig : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
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
    public var groupId: Int32?

    public var mountPoints: [NASConfig.MountPoints]?

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
            var tmp : [NASConfig.MountPoints] = []
            for v in dict["mountPoints"] as! [Any] {
                var model = NASConfig.MountPoints()
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

public class OSSMountConfig : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
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
    public var mountPoints: [OSSMountConfig.MountPoints]?

    public override init() {
        super.init()
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
            var tmp : [OSSMountConfig.MountPoints] = []
            for v in dict["mountPoints"] as! [Any] {
                var model = OSSMountConfig.MountPoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mountPoints = tmp
        }
    }
}

public class OSSTriggerConfig : Tea.TeaModel {
    public var events: [String]?

    public var filter: OSSTriggerFilter?

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
        if dict.keys.contains("events") && dict["events"] != nil {
            self.events = dict["events"] as! [String]
        }
        if dict.keys.contains("filter") && dict["filter"] != nil {
            var model = OSSTriggerFilter()
            model.fromMap(dict["filter"] as! [String: Any])
            self.filter = model
        }
    }
}

public class OSSTriggerFilter : Tea.TeaModel {
    public var key: OSSTriggerKey?

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
        if dict.keys.contains("key") && dict["key"] != nil {
            var model = OSSTriggerKey()
            model.fromMap(dict["key"] as! [String: Any])
            self.key = model
        }
    }
}

public class OSSTriggerKey : Tea.TeaModel {
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
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("suffix") && dict["suffix"] != nil {
            self.suffix = dict["suffix"] as! String
        }
    }
}

public class OnDemandConfig : Tea.TeaModel {
    public var maximumInstanceCount: Int64?

    public var resource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maximumInstanceCount != nil {
            map["maximumInstanceCount"] = self.maximumInstanceCount!
        }
        if self.resource != nil {
            map["resource"] = self.resource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maximumInstanceCount") && dict["maximumInstanceCount"] != nil {
            self.maximumInstanceCount = dict["maximumInstanceCount"] as! Int64
        }
        if dict.keys.contains("resource") && dict["resource"] != nil {
            self.resource = dict["resource"] as! String
        }
    }
}

public class OpenReservedCapacity : Tea.TeaModel {
    public var createdTime: String?

    public var cu: Int64?

    public var deadline: String?

    public var instanceId: String?

    public var isRefunded: String?

    public var lastModifiedTime: String?

    public override init() {
        super.init()
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
        if self.cu != nil {
            map["cu"] = self.cu!
        }
        if self.deadline != nil {
            map["deadline"] = self.deadline!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.isRefunded != nil {
            map["isRefunded"] = self.isRefunded!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("cu") && dict["cu"] != nil {
            self.cu = dict["cu"] as! Int64
        }
        if dict.keys.contains("deadline") && dict["deadline"] != nil {
            self.deadline = dict["deadline"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("isRefunded") && dict["isRefunded"] != nil {
            self.isRefunded = dict["isRefunded"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
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

public class PathConfig : Tea.TeaModel {
    public var functionName: String?

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
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
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

public class PreFreeze : Tea.TeaModel {
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

public class PreStop : Tea.TeaModel {
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

public class RdsTriggerConfig : Tea.TeaModel {
    public var concurrency: Int64?

    public var eventFormat: String?

    public var retry: Int64?

    public var subscriptionObjects: [String]?

    public override init() {
        super.init()
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
        if self.eventFormat != nil {
            map["eventFormat"] = self.eventFormat!
        }
        if self.retry != nil {
            map["retry"] = self.retry!
        }
        if self.subscriptionObjects != nil {
            map["subscriptionObjects"] = self.subscriptionObjects!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("concurrency") && dict["concurrency"] != nil {
            self.concurrency = dict["concurrency"] as! Int64
        }
        if dict.keys.contains("eventFormat") && dict["eventFormat"] != nil {
            self.eventFormat = dict["eventFormat"] as! String
        }
        if dict.keys.contains("retry") && dict["retry"] != nil {
            self.retry = dict["retry"] as! Int64
        }
        if dict.keys.contains("subscriptionObjects") && dict["subscriptionObjects"] != nil {
            self.subscriptionObjects = dict["subscriptionObjects"] as! [String]
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

public class RetryStrategy : Tea.TeaModel {
    public var maximumEventAgeInSeconds: Int64?

    public var maximumRetryAttempts: Int64?

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
        if self.maximumEventAgeInSeconds != nil {
            map["MaximumEventAgeInSeconds"] = self.maximumEventAgeInSeconds!
        }
        if self.maximumRetryAttempts != nil {
            map["MaximumRetryAttempts"] = self.maximumRetryAttempts!
        }
        if self.pushRetryStrategy != nil {
            map["PushRetryStrategy"] = self.pushRetryStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaximumEventAgeInSeconds") && dict["MaximumEventAgeInSeconds"] != nil {
            self.maximumEventAgeInSeconds = dict["MaximumEventAgeInSeconds"] as! Int64
        }
        if dict.keys.contains("MaximumRetryAttempts") && dict["MaximumRetryAttempts"] != nil {
            self.maximumRetryAttempts = dict["MaximumRetryAttempts"] as! Int64
        }
        if dict.keys.contains("PushRetryStrategy") && dict["PushRetryStrategy"] != nil {
            self.pushRetryStrategy = dict["PushRetryStrategy"] as! String
        }
    }
}

public class RewriteConfig : Tea.TeaModel {
    public class EqualRules : Tea.TeaModel {
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
    public class RegexRules : Tea.TeaModel {
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
    public class WildcardRules : Tea.TeaModel {
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
    public var equalRules: [RewriteConfig.EqualRules]?

    public var regexRules: [RewriteConfig.RegexRules]?

    public var wildcardRules: [RewriteConfig.WildcardRules]?

    public override init() {
        super.init()
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
            var tmp : [RewriteConfig.EqualRules] = []
            for v in dict["equalRules"] as! [Any] {
                var model = RewriteConfig.EqualRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.equalRules = tmp
        }
        if dict.keys.contains("regexRules") && dict["regexRules"] != nil {
            var tmp : [RewriteConfig.RegexRules] = []
            for v in dict["regexRules"] as! [Any] {
                var model = RewriteConfig.RegexRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regexRules = tmp
        }
        if dict.keys.contains("wildcardRules") && dict["wildcardRules"] != nil {
            var tmp : [RewriteConfig.WildcardRules] = []
            for v in dict["wildcardRules"] as! [Any] {
                var model = RewriteConfig.WildcardRules()
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

public class RunOptions : Tea.TeaModel {
    public var batchWindow: BatchWindow?

    public var deadLetterQueue: DeadLetterQueue?

    public var errorsTolerance: String?

    public var maximumTasks: Int64?

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
        if self.maximumTasks != nil {
            map["maximumTasks"] = self.maximumTasks!
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
        if dict.keys.contains("batchWindow") && dict["batchWindow"] != nil {
            var model = BatchWindow()
            model.fromMap(dict["batchWindow"] as! [String: Any])
            self.batchWindow = model
        }
        if dict.keys.contains("deadLetterQueue") && dict["deadLetterQueue"] != nil {
            var model = DeadLetterQueue()
            model.fromMap(dict["deadLetterQueue"] as! [String: Any])
            self.deadLetterQueue = model
        }
        if dict.keys.contains("errorsTolerance") && dict["errorsTolerance"] != nil {
            self.errorsTolerance = dict["errorsTolerance"] as! String
        }
        if dict.keys.contains("maximumTasks") && dict["maximumTasks"] != nil {
            self.maximumTasks = dict["maximumTasks"] as! Int64
        }
        if dict.keys.contains("mode") && dict["mode"] != nil {
            self.mode = dict["mode"] as! String
        }
        if dict.keys.contains("retryStrategy") && dict["retryStrategy"] != nil {
            var model = RetryStrategy()
            model.fromMap(dict["retryStrategy"] as! [String: Any])
            self.retryStrategy = model
        }
    }
}

public class ScheduledActions : Tea.TeaModel {
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

public class SourceConfig : Tea.TeaModel {
    public var logstore: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logstore") && dict["logstore"] != nil {
            self.logstore = dict["logstore"] as! String
        }
    }
}

public class SourceDTSParameters : Tea.TeaModel {
    public var brokerUrl: String?

    public var initCheckPoint: Int64?

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
        if dict.keys.contains("BrokerUrl") && dict["BrokerUrl"] != nil {
            self.brokerUrl = dict["BrokerUrl"] as! String
        }
        if dict.keys.contains("InitCheckPoint") && dict["InitCheckPoint"] != nil {
            self.initCheckPoint = dict["InitCheckPoint"] as! Int64
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sid") && dict["Sid"] != nil {
            self.sid = dict["Sid"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
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
        if dict.keys.contains("ConsumerGroup") && dict["ConsumerGroup"] != nil {
            self.consumerGroup = dict["ConsumerGroup"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Network") && dict["Network"] != nil {
            self.network = dict["Network"] as! String
        }
        if dict.keys.contains("OffsetReset") && dict["OffsetReset"] != nil {
            self.offsetReset = dict["OffsetReset"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIds = dict["VSwitchIds"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
        if dict.keys.contains("IsBase64Decode") && dict["IsBase64Decode"] != nil {
            self.isBase64Decode = dict["IsBase64Decode"] as! Bool
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualHostName") && dict["VirtualHostName"] != nil {
            self.virtualHostName = dict["VirtualHostName"] as! String
        }
    }
}

public class SourceRocketMQParameters : Tea.TeaModel {
    public var authType: String?

    public var filterSql: String?

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

    public var timestamp: Int64?

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
        if self.filterSql != nil {
            map["FilterSql"] = self.filterSql!
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
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("FilterSql") && dict["FilterSql"] != nil {
            self.filterSql = dict["FilterSql"] as! String
        }
        if dict.keys.contains("FilterType") && dict["FilterType"] != nil {
            self.filterType = dict["FilterType"] as! String
        }
        if dict.keys.contains("GroupID") && dict["GroupID"] != nil {
            self.groupID = dict["GroupID"] as! String
        }
        if dict.keys.contains("InstanceEndpoint") && dict["InstanceEndpoint"] != nil {
            self.instanceEndpoint = dict["InstanceEndpoint"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceNetwork") && dict["InstanceNetwork"] != nil {
            self.instanceNetwork = dict["InstanceNetwork"] as! String
        }
        if dict.keys.contains("InstancePassword") && dict["InstancePassword"] != nil {
            self.instancePassword = dict["InstancePassword"] as! String
        }
        if dict.keys.contains("InstanceSecurityGroupId") && dict["InstanceSecurityGroupId"] != nil {
            self.instanceSecurityGroupId = dict["InstanceSecurityGroupId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InstanceUsername") && dict["InstanceUsername"] != nil {
            self.instanceUsername = dict["InstanceUsername"] as! String
        }
        if dict.keys.contains("InstanceVSwitchIds") && dict["InstanceVSwitchIds"] != nil {
            self.instanceVSwitchIds = dict["InstanceVSwitchIds"] as! String
        }
        if dict.keys.contains("InstanceVpcId") && dict["InstanceVpcId"] != nil {
            self.instanceVpcId = dict["InstanceVpcId"] as! String
        }
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
            self.timestamp = dict["Timestamp"] as! Int64
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class StatefulAsyncInvocation : Tea.TeaModel {
    public var alreadyRetriedTimes: Int64?

    public var destinationStatus: String?

    public var endTime: Int64?

    public var events: [StatefulAsyncInvocationEvent]?

    public var functionName: String?

    public var instanceId: String?

    public var invocationErrorMessage: String?

    public var invocationId: String?

    public var invocationPayload: String?

    public var qualifier: String?

    public var requestId: String?

    public var serviceName: String?

    public var startedTime: Int64?

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
        if self.alreadyRetriedTimes != nil {
            map["alreadyRetriedTimes"] = self.alreadyRetriedTimes!
        }
        if self.destinationStatus != nil {
            map["destinationStatus"] = self.destinationStatus!
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
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.invocationErrorMessage != nil {
            map["invocationErrorMessage"] = self.invocationErrorMessage!
        }
        if self.invocationId != nil {
            map["invocationId"] = self.invocationId!
        }
        if self.invocationPayload != nil {
            map["invocationPayload"] = self.invocationPayload!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        if self.startedTime != nil {
            map["startedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alreadyRetriedTimes") && dict["alreadyRetriedTimes"] != nil {
            self.alreadyRetriedTimes = dict["alreadyRetriedTimes"] as! Int64
        }
        if dict.keys.contains("destinationStatus") && dict["destinationStatus"] != nil {
            self.destinationStatus = dict["destinationStatus"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("events") && dict["events"] != nil {
            var tmp : [StatefulAsyncInvocationEvent] = []
            for v in dict["events"] as! [Any] {
                var model = StatefulAsyncInvocationEvent()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("invocationErrorMessage") && dict["invocationErrorMessage"] != nil {
            self.invocationErrorMessage = dict["invocationErrorMessage"] as! String
        }
        if dict.keys.contains("invocationId") && dict["invocationId"] != nil {
            self.invocationId = dict["invocationId"] as! String
        }
        if dict.keys.contains("invocationPayload") && dict["invocationPayload"] != nil {
            self.invocationPayload = dict["invocationPayload"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("startedTime") && dict["startedTime"] != nil {
            self.startedTime = dict["startedTime"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class StatefulAsyncInvocationEvent : Tea.TeaModel {
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
        if dict.keys.contains("eventDetail") && dict["eventDetail"] != nil {
            self.eventDetail = dict["eventDetail"] as! String
        }
        if dict.keys.contains("eventId") && dict["eventId"] != nil {
            self.eventId = dict["eventId"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("timestamp") && dict["timestamp"] != nil {
            self.timestamp = dict["timestamp"] as! Int64
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

public class TargetTrackingPolicies : Tea.TeaModel {
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

public class TimeTriggerConfig : Tea.TeaModel {
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
        if dict.keys.contains("cronExpression") && dict["cronExpression"] != nil {
            self.cronExpression = dict["cronExpression"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("payload") && dict["payload"] != nil {
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

    public var domainName: String?

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
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
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
        if self.urlInternet != nil {
            map["urlInternet"] = self.urlInternet!
        }
        if self.urlIntranet != nil {
            map["urlIntranet"] = self.urlIntranet!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
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
        if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
            self.urlIntranet = dict["urlIntranet"] as! String
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
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
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

public class VendorConfig : Tea.TeaModel {
    public var meteringConfig: MeteringConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.meteringConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meteringConfig != nil {
            map["meteringConfig"] = self.meteringConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("meteringConfig") && dict["meteringConfig"] != nil {
            var model = MeteringConfig()
            model.fromMap(dict["meteringConfig"] as! [String: Any])
            self.meteringConfig = model
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

public class ClaimGPUInstanceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ClaimGPUInstanceRequest : Tea.TeaModel {
    public var diskPerformanceLevel: String?

    public var diskSizeGigabytes: String?

    public var imageId: String?

    public var instanceType: String?

    public var internetBandwidthOut: String?

    public var password: String?

    public var role: String?

    public var sgId: String?

    public var sourceCidrIp: String?

    public var tcpPortRange: [String]?

    public var udpPortRange: [String]?

    public var vpcId: String?

    public var vswId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskPerformanceLevel != nil {
            map["diskPerformanceLevel"] = self.diskPerformanceLevel!
        }
        if self.diskSizeGigabytes != nil {
            map["diskSizeGigabytes"] = self.diskSizeGigabytes!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.internetBandwidthOut != nil {
            map["internetBandwidthOut"] = self.internetBandwidthOut!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.sgId != nil {
            map["sgId"] = self.sgId!
        }
        if self.sourceCidrIp != nil {
            map["sourceCidrIp"] = self.sourceCidrIp!
        }
        if self.tcpPortRange != nil {
            map["tcpPortRange"] = self.tcpPortRange!
        }
        if self.udpPortRange != nil {
            map["udpPortRange"] = self.udpPortRange!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.vswId != nil {
            map["vswId"] = self.vswId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("diskPerformanceLevel") && dict["diskPerformanceLevel"] != nil {
            self.diskPerformanceLevel = dict["diskPerformanceLevel"] as! String
        }
        if dict.keys.contains("diskSizeGigabytes") && dict["diskSizeGigabytes"] != nil {
            self.diskSizeGigabytes = dict["diskSizeGigabytes"] as! String
        }
        if dict.keys.contains("imageId") && dict["imageId"] != nil {
            self.imageId = dict["imageId"] as! String
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("internetBandwidthOut") && dict["internetBandwidthOut"] != nil {
            self.internetBandwidthOut = dict["internetBandwidthOut"] as! String
        }
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("sgId") && dict["sgId"] != nil {
            self.sgId = dict["sgId"] as! String
        }
        if dict.keys.contains("sourceCidrIp") && dict["sourceCidrIp"] != nil {
            self.sourceCidrIp = dict["sourceCidrIp"] as! String
        }
        if dict.keys.contains("tcpPortRange") && dict["tcpPortRange"] != nil {
            self.tcpPortRange = dict["tcpPortRange"] as! [String]
        }
        if dict.keys.contains("udpPortRange") && dict["udpPortRange"] != nil {
            self.udpPortRange = dict["udpPortRange"] as! [String]
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
        }
        if dict.keys.contains("vswId") && dict["vswId"] != nil {
            self.vswId = dict["vswId"] as! String
        }
    }
}

public class ClaimGPUInstanceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var instanceId: String?

    public var publicIp: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.publicIp != nil {
            map["publicIp"] = self.publicIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("publicIp") && dict["publicIp"] != nil {
            self.publicIp = dict["publicIp"] as! String
        }
    }
}

public class ClaimGPUInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClaimGPUInstanceResponseBody?

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
            var model = ClaimGPUInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAliasHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateAliasRequest : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var aliasName: String?

    public var description_: String?

    public var resolvePolicy: String?

    public var routePolicy: RoutePolicy?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routePolicy?.validate()
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
        if self.resolvePolicy != nil {
            map["resolvePolicy"] = self.resolvePolicy!
        }
        if self.routePolicy != nil {
            map["routePolicy"] = self.routePolicy?.toMap()
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
        if dict.keys.contains("resolvePolicy") && dict["resolvePolicy"] != nil {
            self.resolvePolicy = dict["resolvePolicy"] as! String
        }
        if dict.keys.contains("routePolicy") && dict["routePolicy"] != nil {
            var model = RoutePolicy()
            model.fromMap(dict["routePolicy"] as! [String: Any])
            self.routePolicy = model
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class CreateAliasResponseBody : Tea.TeaModel {
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

public class CreateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAliasResponseBody?

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
            var model = CreateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomDomainHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateCustomDomainRequest : Tea.TeaModel {
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

public class CreateCustomDomainResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var apiVersion: String?

    public var certConfig: CertConfig?

    public var createdTime: String?

    public var domainName: String?

    public var lastModifiedTime: String?

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

public class CreateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomDomainResponseBody?

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
            var model = CreateCustomDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcCodeChecksum: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcCodeChecksum != nil {
            map["X-Fc-Code-Checksum"] = self.xFcCodeChecksum!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Code-Checksum") && dict["X-Fc-Code-Checksum"] != nil {
            self.xFcCodeChecksum = dict["X-Fc-Code-Checksum"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateFunctionRequest : Tea.TeaModel {
    public var caPort: Int32?

    public var code: Code?

    public var cpu: Double?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customHealthCheckConfig: CustomHealthCheckConfig?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionName: String?

    public var gpuMemorySize: Int32?

    public var handler: String?

    public var initializationTimeout: Int32?

    public var initializer: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var instanceSoftConcurrency: Int32?

    public var instanceType: String?

    public var layers: [String]?

    public var memorySize: Int32?

    public var runtime: String?

    public var timeout: Int32?

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
        try self.customHealthCheckConfig?.validate()
        try self.customRuntimeConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caPort != nil {
            map["caPort"] = self.caPort!
        }
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
        if self.customHealthCheckConfig != nil {
            map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.initializationTimeout != nil {
            map["initializationTimeout"] = self.initializationTimeout!
        }
        if self.initializer != nil {
            map["initializer"] = self.initializer!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.instanceSoftConcurrency != nil {
            map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caPort") && dict["caPort"] != nil {
            self.caPort = dict["caPort"] as! Int32
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = Code()
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
        if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
            self.customHealthCheckConfig = model
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
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
            self.initializationTimeout = dict["initializationTimeout"] as! Int32
        }
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            self.initializer = dict["initializer"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
            self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class CreateFunctionResponseBody : Tea.TeaModel {
    public var caPort: Int32?

    public var codeChecksum: String?

    public var codeSize: Int64?

    public var cpu: Double?

    public var createdTime: String?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customHealthCheckConfig: CustomHealthCheckConfig?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionId: String?

    public var functionName: String?

    public var gpuMemorySize: Int32?

    public var handler: String?

    public var initializationTimeout: Int32?

    public var initializer: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var instanceSoftConcurrency: Int32?

    public var instanceType: String?

    public var lastModifiedTime: String?

    public var layers: [String]?

    public var layersArnV2: [String]?

    public var memorySize: Int32?

    public var runtime: String?

    public var timeout: Int32?

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
        try self.customHealthCheckConfig?.validate()
        try self.customRuntimeConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caPort != nil {
            map["caPort"] = self.caPort!
        }
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
        if self.customHealthCheckConfig != nil {
            map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
        if self.functionId != nil {
            map["functionId"] = self.functionId!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.initializationTimeout != nil {
            map["initializationTimeout"] = self.initializationTimeout!
        }
        if self.initializer != nil {
            map["initializer"] = self.initializer!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.instanceSoftConcurrency != nil {
            map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.layersArnV2 != nil {
            map["layersArnV2"] = self.layersArnV2!
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caPort") && dict["caPort"] != nil {
            self.caPort = dict["caPort"] as! Int32
        }
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
        if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
            self.customHealthCheckConfig = model
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
        if dict.keys.contains("functionId") && dict["functionId"] != nil {
            self.functionId = dict["functionId"] as! String
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
            self.initializationTimeout = dict["initializationTimeout"] as! Int32
        }
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            self.initializer = dict["initializer"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
            self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("layersArnV2") && dict["layersArnV2"] != nil {
            self.layersArnV2 = dict["layersArnV2"] as! [String]
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class CreateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionResponseBody?

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
            var model = CreateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLayerVersionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateLayerVersionRequest : Tea.TeaModel {
    public var code: Code?

    public var compatibleRuntime: [String]?

    public var description_: String?

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
            map["Code"] = self.code?.toMap()
        }
        if self.compatibleRuntime != nil {
            map["compatibleRuntime"] = self.compatibleRuntime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            var model = Code()
            model.fromMap(dict["Code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("compatibleRuntime") && dict["compatibleRuntime"] != nil {
            self.compatibleRuntime = dict["compatibleRuntime"] as! [String]
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
    }
}

public class CreateLayerVersionResponseBody : Tea.TeaModel {
    public var acl: Int32?

    public var arn: String?

    public var code: OutputCodeLocation?

    public var codeChecksum: String?

    public var codesize: Int64?

    public var compatibleRuntime: [String]?

    public var createTime: String?

    public var description_: String?

    public var layerName: String?

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
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.code != nil {
            map["code"] = self.code?.toMap()
        }
        if self.codeChecksum != nil {
            map["codeChecksum"] = self.codeChecksum!
        }
        if self.codesize != nil {
            map["codesize"] = self.codesize!
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
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acl") && dict["acl"] != nil {
            self.acl = dict["acl"] as! Int32
        }
        if dict.keys.contains("arn") && dict["arn"] != nil {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = OutputCodeLocation()
            model.fromMap(dict["code"] as! [String: Any])
            self.code = model
        }
        if dict.keys.contains("codeChecksum") && dict["codeChecksum"] != nil {
            self.codeChecksum = dict["codeChecksum"] as! String
        }
        if dict.keys.contains("codesize") && dict["codesize"] != nil {
            self.codesize = dict["codesize"] as! Int64
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
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! Int32
        }
    }
}

public class CreateLayerVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLayerVersionResponseBody?

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
            var model = CreateLayerVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public var description_: String?

    public var internetAccess: Bool?

    public var logConfig: LogConfig?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var serviceName: String?

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
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
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
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
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
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
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
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var internetAccess: Bool?

    public var lastModifiedTime: String?

    public var logConfig: LogConfig?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var serviceId: String?

    public var serviceName: String?

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
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
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
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
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
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
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
        if dict.keys.contains("serviceId") && dict["serviceId"] != nil {
            self.serviceId = dict["serviceId"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

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
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTriggerHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateTriggerRequest : Tea.TeaModel {
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

public class CreateTriggerResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var domainName: String?

    public var invocationRole: String?

    public var lastModifiedTime: String?

    public var qualifier: String?

    public var sourceArn: String?

    public var triggerConfig: String?

    public var triggerId: String?

    public var triggerName: String?

    public var triggerType: String?

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
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
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
        if self.urlInternet != nil {
            map["urlInternet"] = self.urlInternet!
        }
        if self.urlIntranet != nil {
            map["urlIntranet"] = self.urlIntranet!
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
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
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
        if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
            self.urlIntranet = dict["urlIntranet"] as! String
        }
    }
}

public class CreateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTriggerResponseBody?

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
            var model = CreateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpcBindingHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class CreateVpcBindingRequest : Tea.TeaModel {
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
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
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

public class DeleteAliasHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeleteCustomDomainHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeleteFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeleteFunctionAsyncInvokeConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class DeleteFunctionAsyncInvokeConfigRequest : Tea.TeaModel {
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

public class DeleteFunctionAsyncInvokeConfigResponse : Tea.TeaModel {
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

public class DeleteFunctionOnDemandConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class DeleteFunctionOnDemandConfigRequest : Tea.TeaModel {
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

public class DeleteFunctionOnDemandConfigResponse : Tea.TeaModel {
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

public class DeleteLayerVersionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeleteServiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class DeleteServiceResponse : Tea.TeaModel {
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

public class DeleteServiceVersionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class DeleteServiceVersionResponse : Tea.TeaModel {
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

public class DeleteTriggerHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeleteVpcBindingHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class DeregisterEventSourceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class DeregisterEventSourceRequest : Tea.TeaModel {
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

public class DeregisterEventSourceResponse : Tea.TeaModel {
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

public class GetAccountSettingsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetAccountSettingsResponseBody : Tea.TeaModel {
    public var availableAZs: [String]?

    public var defaultRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableAZs != nil {
            map["availableAZs"] = self.availableAZs!
        }
        if self.defaultRole != nil {
            map["defaultRole"] = self.defaultRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("availableAZs") && dict["availableAZs"] != nil {
            self.availableAZs = dict["availableAZs"] as! [String]
        }
        if dict.keys.contains("defaultRole") && dict["defaultRole"] != nil {
            self.defaultRole = dict["defaultRole"] as! String
        }
    }
}

public class GetAccountSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountSettingsResponseBody?

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
            var model = GetAccountSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAliasHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetAliasResponseBody : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var aliasName: String?

    public var createdTime: String?

    public var description_: String?

    public var lastModifiedTime: String?

    public var resolvePolicy: String?

    public var routePolicy: RoutePolicy?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routePolicy?.validate()
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
        if self.resolvePolicy != nil {
            map["resolvePolicy"] = self.resolvePolicy!
        }
        if self.routePolicy != nil {
            map["routePolicy"] = self.routePolicy?.toMap()
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
        if dict.keys.contains("resolvePolicy") && dict["resolvePolicy"] != nil {
            self.resolvePolicy = dict["resolvePolicy"] as! String
        }
        if dict.keys.contains("routePolicy") && dict["routePolicy"] != nil {
            var model = RoutePolicy()
            model.fromMap(dict["routePolicy"] as! [String: Any])
            self.routePolicy = model
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class GetAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAliasResponseBody?

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
            var model = GetAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomDomainHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetCustomDomainResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var apiVersion: String?

    public var certConfig: CertConfig?

    public var createdTime: String?

    public var domainName: String?

    public var lastModifiedTime: String?

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

public class GetCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomDomainResponseBody?

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
            var model = GetCustomDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class GetFunctionResponseBody : Tea.TeaModel {
    public var caPort: Int32?

    public var codeChecksum: String?

    public var codeSize: Int64?

    public var cpu: Double?

    public var createdTime: String?

    public var customContainerConfig: CustomContainerConfigInfo?

    public var customDNS: CustomDNS?

    public var customHealthCheckConfig: CustomHealthCheckConfig?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionId: String?

    public var functionName: String?

    public var gpuMemorySize: Int32?

    public var handler: String?

    public var initializationTimeout: Int32?

    public var initializer: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var instanceSoftConcurrency: Int32?

    public var instanceType: String?

    public var lastModifiedTime: String?

    public var layers: [String]?

    public var layersArnV2: [String]?

    public var memorySize: Int32?

    public var runtime: String?

    public var timeout: Int32?

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
        try self.customHealthCheckConfig?.validate()
        try self.customRuntimeConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caPort != nil {
            map["caPort"] = self.caPort!
        }
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
        if self.customHealthCheckConfig != nil {
            map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
        if self.functionId != nil {
            map["functionId"] = self.functionId!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.initializationTimeout != nil {
            map["initializationTimeout"] = self.initializationTimeout!
        }
        if self.initializer != nil {
            map["initializer"] = self.initializer!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.instanceSoftConcurrency != nil {
            map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.layersArnV2 != nil {
            map["layersArnV2"] = self.layersArnV2!
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caPort") && dict["caPort"] != nil {
            self.caPort = dict["caPort"] as! Int32
        }
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
            var model = CustomContainerConfigInfo()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("customDNS") && dict["customDNS"] != nil {
            var model = CustomDNS()
            model.fromMap(dict["customDNS"] as! [String: Any])
            self.customDNS = model
        }
        if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
            self.customHealthCheckConfig = model
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
        if dict.keys.contains("functionId") && dict["functionId"] != nil {
            self.functionId = dict["functionId"] as! String
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
            self.initializationTimeout = dict["initializationTimeout"] as! Int32
        }
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            self.initializer = dict["initializer"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
            self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("layersArnV2") && dict["layersArnV2"] != nil {
            self.layersArnV2 = dict["layersArnV2"] as! [String]
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class GetFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionResponseBody?

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
            var model = GetFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionAsyncInvokeConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetFunctionAsyncInvokeConfigRequest : Tea.TeaModel {
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

public class GetFunctionAsyncInvokeConfigResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var destinationConfig: DestinationConfig?

    public var function: String?

    public var lastModifiedTime: String?

    public var maxAsyncEventAgeInSeconds: Int64?

    public var maxAsyncRetryAttempts: Int64?

    public var qualifier: String?

    public var service: String?

    public var statefulInvocation: Bool?

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
        if self.function != nil {
            map["function"] = self.function!
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
        if self.service != nil {
            map["service"] = self.service!
        }
        if self.statefulInvocation != nil {
            map["statefulInvocation"] = self.statefulInvocation!
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
        if dict.keys.contains("function") && dict["function"] != nil {
            self.function = dict["function"] as! String
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
        if dict.keys.contains("service") && dict["service"] != nil {
            self.service = dict["service"] as! String
        }
        if dict.keys.contains("statefulInvocation") && dict["statefulInvocation"] != nil {
            self.statefulInvocation = dict["statefulInvocation"] as! Bool
        }
    }
}

public class GetFunctionAsyncInvokeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionAsyncInvokeConfigResponseBody?

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
            var model = GetFunctionAsyncInvokeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionCodeHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class GetFunctionCodeResponseBody : Tea.TeaModel {
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

public class GetFunctionCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionCodeResponseBody?

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
            var model = GetFunctionCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionOnDemandConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetFunctionOnDemandConfigRequest : Tea.TeaModel {
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

public class GetFunctionOnDemandConfigResponseBody : Tea.TeaModel {
    public var maximumInstanceCount: Int64?

    public var resource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maximumInstanceCount != nil {
            map["maximumInstanceCount"] = self.maximumInstanceCount!
        }
        if self.resource != nil {
            map["resource"] = self.resource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maximumInstanceCount") && dict["maximumInstanceCount"] != nil {
            self.maximumInstanceCount = dict["maximumInstanceCount"] as! Int64
        }
        if dict.keys.contains("resource") && dict["resource"] != nil {
            self.resource = dict["resource"] as! String
        }
    }
}

public class GetFunctionOnDemandConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionOnDemandConfigResponseBody?

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
            var model = GetFunctionOnDemandConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLayerVersionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class GetProvisionConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class GetProvisionConfigResponseBody : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var current: Int64?

    public var currentError: String?

    public var resource: String?

    public var scheduledActions: [ScheduledActions]?

    public var target: Int64?

    public var targetTrackingPolicies: [TargetTrackingPolicies]?

    public override init() {
        super.init()
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
        if self.resource != nil {
            map["resource"] = self.resource!
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
        if dict.keys.contains("resource") && dict["resource"] != nil {
            self.resource = dict["resource"] as! String
        }
        if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
            var tmp : [ScheduledActions] = []
            for v in dict["scheduledActions"] as! [Any] {
                var model = ScheduledActions()
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
            var tmp : [TargetTrackingPolicies] = []
            for v in dict["targetTrackingPolicies"] as! [Any] {
                var model = TargetTrackingPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetTrackingPolicies = tmp
        }
    }
}

public class GetProvisionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProvisionConfigResponseBody?

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
            var model = GetProvisionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceTagsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetResourceTagsRequest : Tea.TeaModel {
    public var resourceArn: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceArn") && dict["resourceArn"] != nil {
            self.resourceArn = dict["resourceArn"] as! String
        }
    }
}

public class GetResourceTagsResponseBody : Tea.TeaModel {
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

public class GetResourceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTagsResponseBody?

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
            var model = GetResourceTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetServiceRequest : Tea.TeaModel {
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

public class GetServiceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var internetAccess: Bool?

    public var lastModifiedTime: String?

    public var logConfig: LogConfig?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var serviceId: String?

    public var serviceName: String?

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
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
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
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
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
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
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
        if dict.keys.contains("serviceId") && dict["serviceId"] != nil {
            self.serviceId = dict["serviceId"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceResponseBody?

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
            var model = GetServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStatefulAsyncInvocationHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcCodeChecksum: String?

    public var xFcDate: String?

    public var xFcInvocationType: String?

    public var xFcLogType: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcCodeChecksum != nil {
            map["X-Fc-Code-Checksum"] = self.xFcCodeChecksum!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcInvocationType != nil {
            map["X-Fc-Invocation-Type"] = self.xFcInvocationType!
        }
        if self.xFcLogType != nil {
            map["X-Fc-Log-Type"] = self.xFcLogType!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Code-Checksum") && dict["X-Fc-Code-Checksum"] != nil {
            self.xFcCodeChecksum = dict["X-Fc-Code-Checksum"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Invocation-Type") && dict["X-Fc-Invocation-Type"] != nil {
            self.xFcInvocationType = dict["X-Fc-Invocation-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Log-Type") && dict["X-Fc-Log-Type"] != nil {
            self.xFcLogType = dict["X-Fc-Log-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetStatefulAsyncInvocationRequest : Tea.TeaModel {
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

public class GetStatefulAsyncInvocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StatefulAsyncInvocation?

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
            var model = StatefulAsyncInvocation()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTriggerHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class GetTriggerResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var domainName: String?

    public var invocationRole: String?

    public var lastModifiedTime: String?

    public var qualifier: String?

    public var sourceArn: String?

    public var triggerConfig: String?

    public var triggerId: String?

    public var triggerName: String?

    public var triggerType: String?

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
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
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
        if self.urlInternet != nil {
            map["urlInternet"] = self.urlInternet!
        }
        if self.urlIntranet != nil {
            map["urlIntranet"] = self.urlIntranet!
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
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
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
        if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
            self.urlIntranet = dict["urlIntranet"] as! String
        }
    }
}

public class GetTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTriggerResponseBody?

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
            var model = GetTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcInvocationType: String?

    public var xFcLogType: String?

    public var xFcStatefulAsyncInvocationEnable: String?

    public var xFcStatefulAsyncInvocationId: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcInvocationType != nil {
            map["X-Fc-Invocation-Type"] = self.xFcInvocationType!
        }
        if self.xFcLogType != nil {
            map["X-Fc-Log-Type"] = self.xFcLogType!
        }
        if self.xFcStatefulAsyncInvocationEnable != nil {
            map["X-Fc-Stateful-Async-Invocation-Enable"] = self.xFcStatefulAsyncInvocationEnable!
        }
        if self.xFcStatefulAsyncInvocationId != nil {
            map["X-Fc-Stateful-Async-Invocation-Id"] = self.xFcStatefulAsyncInvocationId!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Invocation-Type") && dict["X-Fc-Invocation-Type"] != nil {
            self.xFcInvocationType = dict["X-Fc-Invocation-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Log-Type") && dict["X-Fc-Log-Type"] != nil {
            self.xFcLogType = dict["X-Fc-Log-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Stateful-Async-Invocation-Enable") && dict["X-Fc-Stateful-Async-Invocation-Enable"] != nil {
            self.xFcStatefulAsyncInvocationEnable = dict["X-Fc-Stateful-Async-Invocation-Enable"] as! String
        }
        if dict.keys.contains("X-Fc-Stateful-Async-Invocation-Id") && dict["X-Fc-Stateful-Async-Invocation-Id"] != nil {
            self.xFcStatefulAsyncInvocationId = dict["X-Fc-Stateful-Async-Invocation-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class InvokeFunctionRequest : Tea.TeaModel {
    public var body: [UInt8]?

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
            self.body = dict["body"] as! [UInt8]
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class InvokeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [UInt8]?

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
            self.body = dict["body"] as! [UInt8]
        }
    }
}

public class ListAliasesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListAliasesRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListAliasesResponseBody : Tea.TeaModel {
    public class Aliases : Tea.TeaModel {
        public var additionalVersionWeight: [String: Double]?

        public var aliasName: String?

        public var createdTime: String?

        public var description_: String?

        public var lastModifiedTime: String?

        public var resolvePolicy: String?

        public var routePolicy: RoutePolicy?

        public var versionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.routePolicy?.validate()
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
            if self.resolvePolicy != nil {
                map["resolvePolicy"] = self.resolvePolicy!
            }
            if self.routePolicy != nil {
                map["routePolicy"] = self.routePolicy?.toMap()
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
            if dict.keys.contains("resolvePolicy") && dict["resolvePolicy"] != nil {
                self.resolvePolicy = dict["resolvePolicy"] as! String
            }
            if dict.keys.contains("routePolicy") && dict["routePolicy"] != nil {
                var model = RoutePolicy()
                model.fromMap(dict["routePolicy"] as! [String: Any])
                self.routePolicy = model
            }
            if dict.keys.contains("versionId") && dict["versionId"] != nil {
                self.versionId = dict["versionId"] as! String
            }
        }
    }
    public var aliases: [ListAliasesResponseBody.Aliases]?

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
            var tmp : [ListAliasesResponseBody.Aliases] = []
            for v in dict["aliases"] as! [Any] {
                var model = ListAliasesResponseBody.Aliases()
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

public class ListAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAliasesResponseBody?

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
            var model = ListAliasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomDomainsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListCustomDomainsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListCustomDomainsResponseBody : Tea.TeaModel {
    public class CustomDomains : Tea.TeaModel {
        public var accountId: String?

        public var apiVersion: String?

        public var certConfig: CertConfig?

        public var createdTime: String?

        public var domainName: String?

        public var lastModifiedTime: String?

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
    public var customDomains: [ListCustomDomainsResponseBody.CustomDomains]?

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
            var tmp : [ListCustomDomainsResponseBody.CustomDomains] = []
            for v in dict["customDomains"] as! [Any] {
                var model = ListCustomDomainsResponseBody.CustomDomains()
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

public class ListCustomDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomDomainsResponseBody?

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
            var model = ListCustomDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventSourcesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListEventSourcesRequest : Tea.TeaModel {
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

public class ListEventSourcesResponseBody : Tea.TeaModel {
    public class EventSources : Tea.TeaModel {
        public var createdTime: String?

        public var sourceArn: String?

        public override init() {
            super.init()
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
            if self.sourceArn != nil {
                map["sourceArn"] = self.sourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
                self.createdTime = dict["createdTime"] as! String
            }
            if dict.keys.contains("sourceArn") && dict["sourceArn"] != nil {
                self.sourceArn = dict["sourceArn"] as! String
            }
        }
    }
    public var eventSources: [ListEventSourcesResponseBody.EventSources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventSources != nil {
            var tmp : [Any] = []
            for k in self.eventSources! {
                tmp.append(k.toMap())
            }
            map["eventSources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventSources") && dict["eventSources"] != nil {
            var tmp : [ListEventSourcesResponseBody.EventSources] = []
            for v in dict["eventSources"] as! [Any] {
                var model = ListEventSourcesResponseBody.EventSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventSources = tmp
        }
    }
}

public class ListEventSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventSourcesResponseBody?

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
            var model = ListEventSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionAsyncInvokeConfigsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcCodeChecksum: String?

    public var xFcDate: String?

    public var xFcInvocationType: String?

    public var xFcLogType: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcCodeChecksum != nil {
            map["X-Fc-Code-Checksum"] = self.xFcCodeChecksum!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcInvocationType != nil {
            map["X-Fc-Invocation-Type"] = self.xFcInvocationType!
        }
        if self.xFcLogType != nil {
            map["X-Fc-Log-Type"] = self.xFcLogType!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Code-Checksum") && dict["X-Fc-Code-Checksum"] != nil {
            self.xFcCodeChecksum = dict["X-Fc-Code-Checksum"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Invocation-Type") && dict["X-Fc-Invocation-Type"] != nil {
            self.xFcInvocationType = dict["X-Fc-Invocation-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Log-Type") && dict["X-Fc-Log-Type"] != nil {
            self.xFcLogType = dict["X-Fc-Log-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListFunctionAsyncInvokeConfigsRequest : Tea.TeaModel {
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

public class ListFunctionAsyncInvokeConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var createdTime: String?

        public var destinationConfig: DestinationConfig?

        public var function: String?

        public var lastModifiedTime: String?

        public var maxAsyncEventAgeInSeconds: Int64?

        public var maxAsyncRetryAttempts: Int64?

        public var qualifier: String?

        public var service: String?

        public var statefulInvocation: Bool?

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
            if self.function != nil {
                map["function"] = self.function!
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
            if self.service != nil {
                map["service"] = self.service!
            }
            if self.statefulInvocation != nil {
                map["statefulInvocation"] = self.statefulInvocation!
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
            if dict.keys.contains("function") && dict["function"] != nil {
                self.function = dict["function"] as! String
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
            if dict.keys.contains("service") && dict["service"] != nil {
                self.service = dict["service"] as! String
            }
            if dict.keys.contains("statefulInvocation") && dict["statefulInvocation"] != nil {
                self.statefulInvocation = dict["statefulInvocation"] as! Bool
            }
        }
    }
    public var configs: [ListFunctionAsyncInvokeConfigsResponseBody.Configs]?

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
            var tmp : [ListFunctionAsyncInvokeConfigsResponseBody.Configs] = []
            for v in dict["configs"] as! [Any] {
                var model = ListFunctionAsyncInvokeConfigsResponseBody.Configs()
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

public class ListFunctionAsyncInvokeConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionAsyncInvokeConfigsResponseBody?

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
            var model = ListFunctionAsyncInvokeConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var qualifier: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListFunctionsResponseBody : Tea.TeaModel {
    public class Functions : Tea.TeaModel {
        public var caPort: Int32?

        public var codeChecksum: String?

        public var codeSize: Int64?

        public var cpu: Double?

        public var createdTime: String?

        public var customContainerConfig: CustomContainerConfig?

        public var customDNS: CustomDNS?

        public var customHealthCheckConfig: CustomHealthCheckConfig?

        public var customRuntimeConfig: CustomRuntimeConfig?

        public var description_: String?

        public var diskSize: Int32?

        public var environmentVariables: [String: String]?

        public var functionId: String?

        public var functionName: String?

        public var gpuMemorySize: Int32?

        public var handler: String?

        public var initializationTimeout: Int32?

        public var initializer: String?

        public var instanceConcurrency: Int32?

        public var instanceLifecycleConfig: InstanceLifecycleConfig?

        public var instanceSoftConcurrency: Int32?

        public var instanceType: String?

        public var lastModifiedTime: String?

        public var layers: [String]?

        public var layersArnV2: [String]?

        public var memorySize: Int32?

        public var runtime: String?

        public var timeout: Int32?

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
            try self.customHealthCheckConfig?.validate()
            try self.customRuntimeConfig?.validate()
            try self.instanceLifecycleConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caPort != nil {
                map["caPort"] = self.caPort!
            }
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
            if self.customHealthCheckConfig != nil {
                map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
            if self.functionId != nil {
                map["functionId"] = self.functionId!
            }
            if self.functionName != nil {
                map["functionName"] = self.functionName!
            }
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.handler != nil {
                map["handler"] = self.handler!
            }
            if self.initializationTimeout != nil {
                map["initializationTimeout"] = self.initializationTimeout!
            }
            if self.initializer != nil {
                map["initializer"] = self.initializer!
            }
            if self.instanceConcurrency != nil {
                map["instanceConcurrency"] = self.instanceConcurrency!
            }
            if self.instanceLifecycleConfig != nil {
                map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
            }
            if self.instanceSoftConcurrency != nil {
                map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.lastModifiedTime != nil {
                map["lastModifiedTime"] = self.lastModifiedTime!
            }
            if self.layers != nil {
                map["layers"] = self.layers!
            }
            if self.layersArnV2 != nil {
                map["layersArnV2"] = self.layersArnV2!
            }
            if self.memorySize != nil {
                map["memorySize"] = self.memorySize!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("caPort") && dict["caPort"] != nil {
                self.caPort = dict["caPort"] as! Int32
            }
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
            if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
                var model = CustomHealthCheckConfig()
                model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
                self.customHealthCheckConfig = model
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
            if dict.keys.contains("functionId") && dict["functionId"] != nil {
                self.functionId = dict["functionId"] as! String
            }
            if dict.keys.contains("functionName") && dict["functionName"] != nil {
                self.functionName = dict["functionName"] as! String
            }
            if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("handler") && dict["handler"] != nil {
                self.handler = dict["handler"] as! String
            }
            if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
                self.initializationTimeout = dict["initializationTimeout"] as! Int32
            }
            if dict.keys.contains("initializer") && dict["initializer"] != nil {
                self.initializer = dict["initializer"] as! String
            }
            if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
                self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
            }
            if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
                var model = InstanceLifecycleConfig()
                model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
                self.instanceLifecycleConfig = model
            }
            if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
                self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
            }
            if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
                self.instanceType = dict["instanceType"] as! String
            }
            if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
                self.lastModifiedTime = dict["lastModifiedTime"] as! String
            }
            if dict.keys.contains("layers") && dict["layers"] != nil {
                self.layers = dict["layers"] as! [String]
            }
            if dict.keys.contains("layersArnV2") && dict["layersArnV2"] != nil {
                self.layersArnV2 = dict["layersArnV2"] as! [String]
            }
            if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
                self.memorySize = dict["memorySize"] as! Int32
            }
            if dict.keys.contains("runtime") && dict["runtime"] != nil {
                self.runtime = dict["runtime"] as! String
            }
            if dict.keys.contains("timeout") && dict["timeout"] != nil {
                self.timeout = dict["timeout"] as! Int32
            }
        }
    }
    public var functions: [ListFunctionsResponseBody.Functions]?

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
            var tmp : [ListFunctionsResponseBody.Functions] = []
            for v in dict["functions"] as! [Any] {
                var model = ListFunctionsResponseBody.Functions()
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

public class ListFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionsResponseBody?

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
            var model = ListFunctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var limit: Int32?

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
        if self.instanceIds != nil {
            map["instanceIds"] = self.instanceIds!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceIds") && dict["instanceIds"] != nil {
            self.instanceIds = dict["instanceIds"] as! [String]
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
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
    public var instances: [ListInstancesResponseBody.Instances]?

    public override init() {
        super.init()
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
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLayerVersionsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListLayerVersionsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var startVersion: Int32?

    public override init() {
        super.init()
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
            self.startVersion = dict["startVersion"] as! Int32
        }
    }
}

public class ListLayerVersionsResponseBody : Tea.TeaModel {
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

public class ListLayerVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLayerVersionsResponseBody?

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
            var model = ListLayerVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLayersHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListLayersRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var official: Bool?

    public var prefix_: String?

    public var public_: Bool?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
            self.official = dict["official"] as! Bool
        }
        if dict.keys.contains("prefix") && dict["prefix"] != nil {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! Bool
        }
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListLayersResponseBody : Tea.TeaModel {
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

public class ListLayersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLayersResponseBody?

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
            var model = ListLayersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOnDemandConfigsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListOnDemandConfigsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListOnDemandConfigsResponseBody : Tea.TeaModel {
    public var configs: [OnDemandConfig]?

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
            var tmp : [OnDemandConfig] = []
            for v in dict["configs"] as! [Any] {
                var model = OnDemandConfig()
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

public class ListOnDemandConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOnDemandConfigsResponseBody?

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
            var model = ListOnDemandConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProvisionConfigsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListProvisionConfigsRequest : Tea.TeaModel {
    public var limit: Int64?

    public var nextToken: String?

    public var qualifier: String?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int64
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
    }
}

public class ListProvisionConfigsResponseBody : Tea.TeaModel {
    public class ProvisionConfigs : Tea.TeaModel {
        public var alwaysAllocateCPU: Bool?

        public var current: Int64?

        public var currentError: String?

        public var resource: String?

        public var scheduledActions: [ScheduledActions]?

        public var target: Int64?

        public var targetTrackingPolicies: [TargetTrackingPolicies]?

        public override init() {
            super.init()
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
            if self.resource != nil {
                map["resource"] = self.resource!
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
            if dict.keys.contains("resource") && dict["resource"] != nil {
                self.resource = dict["resource"] as! String
            }
            if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
                var tmp : [ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = ScheduledActions()
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
                var tmp : [TargetTrackingPolicies] = []
                for v in dict["targetTrackingPolicies"] as! [Any] {
                    var model = TargetTrackingPolicies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targetTrackingPolicies = tmp
            }
        }
    }
    public var nextToken: String?

    public var provisionConfigs: [ListProvisionConfigsResponseBody.ProvisionConfigs]?

    public override init() {
        super.init()
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
            var tmp : [ListProvisionConfigsResponseBody.ProvisionConfigs] = []
            for v in dict["provisionConfigs"] as! [Any] {
                var model = ListProvisionConfigsResponseBody.ProvisionConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.provisionConfigs = tmp
        }
    }
}

public class ListProvisionConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvisionConfigsResponseBody?

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
            var model = ListProvisionConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListReservedCapacitiesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListReservedCapacitiesRequest : Tea.TeaModel {
    public var limit: String?

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
            self.limit = dict["limit"] as! String
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListReservedCapacitiesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var reservedCapacities: [OpenReservedCapacity]?

    public override init() {
        super.init()
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
        if self.reservedCapacities != nil {
            var tmp : [Any] = []
            for k in self.reservedCapacities! {
                tmp.append(k.toMap())
            }
            map["reservedCapacities"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("reservedCapacities") && dict["reservedCapacities"] != nil {
            var tmp : [OpenReservedCapacity] = []
            for v in dict["reservedCapacities"] as! [Any] {
                var model = OpenReservedCapacity()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.reservedCapacities = tmp
        }
    }
}

public class ListReservedCapacitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReservedCapacitiesResponseBody?

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
            var model = ListReservedCapacitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceVersionsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListServiceVersionsRequest : Tea.TeaModel {
    public var direction: String?

    public var limit: Int32?

    public var nextToken: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListServiceVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
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
    public var direction: String?

    public var nextToken: String?

    public var versions: [ListServiceVersionsResponseBody.Versions]?

    public override init() {
        super.init()
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
            var tmp : [ListServiceVersionsResponseBody.Versions] = []
            for v in dict["versions"] as! [Any] {
                var model = ListServiceVersionsResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class ListServiceVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceVersionsResponseBody?

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
            var model = ListServiceVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServicesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var internetAccess: Bool?

        public var lastModifiedTime: String?

        public var logConfig: LogConfig?

        public var nasConfig: NASConfig?

        public var ossMountConfig: OSSMountConfig?

        public var role: String?

        public var serviceId: String?

        public var serviceName: String?

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
            try self.logConfig?.validate()
            try self.nasConfig?.validate()
            try self.ossMountConfig?.validate()
            try self.tracingConfig?.validate()
            try self.vpcConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["createdTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.internetAccess != nil {
                map["internetAccess"] = self.internetAccess!
            }
            if self.lastModifiedTime != nil {
                map["lastModifiedTime"] = self.lastModifiedTime!
            }
            if self.logConfig != nil {
                map["logConfig"] = self.logConfig?.toMap()
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
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
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
            if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
                self.createdTime = dict["createdTime"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
                self.internetAccess = dict["internetAccess"] as! Bool
            }
            if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
                self.lastModifiedTime = dict["lastModifiedTime"] as! String
            }
            if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
                var model = LogConfig()
                model.fromMap(dict["logConfig"] as! [String: Any])
                self.logConfig = model
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
            if dict.keys.contains("serviceId") && dict["serviceId"] != nil {
                self.serviceId = dict["serviceId"] as! String
            }
            if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
                var model = TracingConfig()
                model.fromMap(dict["tracingConfig"] as! [String: Any])
                self.tracingConfig = model
            }
            if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
                var model = VPCConfig()
                model.fromMap(dict["vpcConfig"] as! [String: Any])
                self.vpcConfig = model
            }
        }
    }
    public var nextToken: String?

    public var services: [ListServicesResponseBody.Services]?

    public override init() {
        super.init()
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
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("services") && dict["services"] != nil {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in dict["services"] as! [Any] {
                var model = ListServicesResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStatefulAsyncInvocationFunctionsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListStatefulAsyncInvocationFunctionsRequest : Tea.TeaModel {
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

public class ListStatefulAsyncInvocationFunctionsResponseBody : Tea.TeaModel {
    public var data: [AsyncConfigMeta]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [AsyncConfigMeta] = []
            for v in dict["data"] as! [Any] {
                var model = AsyncConfigMeta()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListStatefulAsyncInvocationFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStatefulAsyncInvocationFunctionsResponseBody?

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
            var model = ListStatefulAsyncInvocationFunctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStatefulAsyncInvocationsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcCodeChecksum: String?

    public var xFcDate: String?

    public var xFcInvocationType: String?

    public var xFcLogType: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcCodeChecksum != nil {
            map["X-Fc-Code-Checksum"] = self.xFcCodeChecksum!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcInvocationType != nil {
            map["X-Fc-Invocation-Type"] = self.xFcInvocationType!
        }
        if self.xFcLogType != nil {
            map["X-Fc-Log-Type"] = self.xFcLogType!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Code-Checksum") && dict["X-Fc-Code-Checksum"] != nil {
            self.xFcCodeChecksum = dict["X-Fc-Code-Checksum"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Invocation-Type") && dict["X-Fc-Invocation-Type"] != nil {
            self.xFcInvocationType = dict["X-Fc-Invocation-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Log-Type") && dict["X-Fc-Log-Type"] != nil {
            self.xFcLogType = dict["X-Fc-Log-Type"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListStatefulAsyncInvocationsRequest : Tea.TeaModel {
    public var includePayload: Bool?

    public var invocationIdPrefix: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.invocationIdPrefix != nil {
            map["invocationIdPrefix"] = self.invocationIdPrefix!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
        if dict.keys.contains("includePayload") && dict["includePayload"] != nil {
            self.includePayload = dict["includePayload"] as! Bool
        }
        if dict.keys.contains("invocationIdPrefix") && dict["invocationIdPrefix"] != nil {
            self.invocationIdPrefix = dict["invocationIdPrefix"] as! String
        }
        if dict.keys.contains("limit") && dict["limit"] != nil {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
        if dict.keys.contains("sortOrderByTime") && dict["sortOrderByTime"] != nil {
            self.sortOrderByTime = dict["sortOrderByTime"] as! String
        }
        if dict.keys.contains("startedTimeBegin") && dict["startedTimeBegin"] != nil {
            self.startedTimeBegin = dict["startedTimeBegin"] as! Int64
        }
        if dict.keys.contains("startedTimeEnd") && dict["startedTimeEnd"] != nil {
            self.startedTimeEnd = dict["startedTimeEnd"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class ListStatefulAsyncInvocationsResponseBody : Tea.TeaModel {
    public var invocations: [StatefulAsyncInvocation]?

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
        if self.invocations != nil {
            var tmp : [Any] = []
            for k in self.invocations! {
                tmp.append(k.toMap())
            }
            map["invocations"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("invocations") && dict["invocations"] != nil {
            var tmp : [StatefulAsyncInvocation] = []
            for v in dict["invocations"] as! [Any] {
                var model = StatefulAsyncInvocation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.invocations = tmp
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListStatefulAsyncInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStatefulAsyncInvocationsResponseBody?

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
            var model = ListStatefulAsyncInvocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaggedResourcesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
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

public class ListTaggedResourcesResponseBody : Tea.TeaModel {
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

public class ListTaggedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaggedResourcesResponseBody?

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
            var model = ListTaggedResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTriggersHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListTriggersRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var prefix_: String?

    public var startKey: String?

    public override init() {
        super.init()
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
        if self.startKey != nil {
            map["startKey"] = self.startKey!
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
        if dict.keys.contains("startKey") && dict["startKey"] != nil {
            self.startKey = dict["startKey"] as! String
        }
    }
}

public class ListTriggersResponseBody : Tea.TeaModel {
    public class Triggers : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var domainName: String?

        public var invocationRole: String?

        public var lastModifiedTime: String?

        public var qualifier: String?

        public var sourceArn: String?

        public var triggerConfig: String?

        public var triggerId: String?

        public var triggerName: String?

        public var triggerType: String?

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
            if self.createdTime != nil {
                map["createdTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domainName != nil {
                map["domainName"] = self.domainName!
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
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
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
            if dict.keys.contains("domainName") && dict["domainName"] != nil {
                self.domainName = dict["domainName"] as! String
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
            if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
                self.urlIntranet = dict["urlIntranet"] as! String
            }
        }
    }
    public var nextToken: String?

    public var triggers: [ListTriggersResponseBody.Triggers]?

    public override init() {
        super.init()
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
            var tmp : [ListTriggersResponseBody.Triggers] = []
            for v in dict["triggers"] as! [Any] {
                var model = ListTriggersResponseBody.Triggers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.triggers = tmp
        }
    }
}

public class ListTriggersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTriggersResponseBody?

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
            var model = ListTriggersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVpcBindingsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ListVpcBindingsResponseBody : Tea.TeaModel {
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

public class ListVpcBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcBindingsResponseBody?

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
            var model = ListVpcBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishServiceVersionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class PublishServiceVersionRequest : Tea.TeaModel {
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

public class PublishServiceVersionResponseBody : Tea.TeaModel {
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

public class PublishServiceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishServiceVersionResponseBody?

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
            var model = PublishServiceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutFunctionAsyncInvokeConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class PutFunctionAsyncInvokeConfigRequest : Tea.TeaModel {
    public var destinationConfig: DestinationConfig?

    public var maxAsyncEventAgeInSeconds: Int64?

    public var maxAsyncRetryAttempts: Int64?

    public var statefulInvocation: Bool?

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
        if self.destinationConfig != nil {
            map["destinationConfig"] = self.destinationConfig?.toMap()
        }
        if self.maxAsyncEventAgeInSeconds != nil {
            map["maxAsyncEventAgeInSeconds"] = self.maxAsyncEventAgeInSeconds!
        }
        if self.maxAsyncRetryAttempts != nil {
            map["maxAsyncRetryAttempts"] = self.maxAsyncRetryAttempts!
        }
        if self.statefulInvocation != nil {
            map["statefulInvocation"] = self.statefulInvocation!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
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
        if dict.keys.contains("statefulInvocation") && dict["statefulInvocation"] != nil {
            self.statefulInvocation = dict["statefulInvocation"] as! Bool
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class PutFunctionAsyncInvokeConfigResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var destinationConfig: DestinationConfig?

    public var function: String?

    public var lastModifiedTime: String?

    public var maxAsyncEventAgeInSeconds: Int64?

    public var maxAsyncRetryAttempts: Int64?

    public var qualifier: String?

    public var service: String?

    public var statefulInvocation: Bool?

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
        if self.function != nil {
            map["function"] = self.function!
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
        if self.service != nil {
            map["service"] = self.service!
        }
        if self.statefulInvocation != nil {
            map["statefulInvocation"] = self.statefulInvocation!
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
        if dict.keys.contains("function") && dict["function"] != nil {
            self.function = dict["function"] as! String
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
        if dict.keys.contains("service") && dict["service"] != nil {
            self.service = dict["service"] as! String
        }
        if dict.keys.contains("statefulInvocation") && dict["statefulInvocation"] != nil {
            self.statefulInvocation = dict["statefulInvocation"] as! Bool
        }
    }
}

public class PutFunctionAsyncInvokeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutFunctionAsyncInvokeConfigResponseBody?

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
            var model = PutFunctionAsyncInvokeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutFunctionOnDemandConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class PutFunctionOnDemandConfigRequest : Tea.TeaModel {
    public var maximumInstanceCount: Int64?

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
        if self.maximumInstanceCount != nil {
            map["maximumInstanceCount"] = self.maximumInstanceCount!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maximumInstanceCount") && dict["maximumInstanceCount"] != nil {
            self.maximumInstanceCount = dict["maximumInstanceCount"] as! Int64
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class PutFunctionOnDemandConfigResponseBody : Tea.TeaModel {
    public var maximumInstanceCount: Int64?

    public var resource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maximumInstanceCount != nil {
            map["maximumInstanceCount"] = self.maximumInstanceCount!
        }
        if self.resource != nil {
            map["resource"] = self.resource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maximumInstanceCount") && dict["maximumInstanceCount"] != nil {
            self.maximumInstanceCount = dict["maximumInstanceCount"] as! Int64
        }
        if dict.keys.contains("resource") && dict["resource"] != nil {
            self.resource = dict["resource"] as! String
        }
    }
}

public class PutFunctionOnDemandConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutFunctionOnDemandConfigResponseBody?

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
            var model = PutFunctionOnDemandConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutLayerACLHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class PutLayerACLRequest : Tea.TeaModel {
    public var public_: Bool?

    public override init() {
        super.init()
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
            self.public_ = dict["public"] as! Bool
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

public class PutProvisionConfigHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class PutProvisionConfigRequest : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var scheduledActions: [ScheduledActions]?

    public var target: Int64?

    public var targetTrackingPolicies: [TargetTrackingPolicies]?

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
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alwaysAllocateCPU") && dict["alwaysAllocateCPU"] != nil {
            self.alwaysAllocateCPU = dict["alwaysAllocateCPU"] as! Bool
        }
        if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
            var tmp : [ScheduledActions] = []
            for v in dict["scheduledActions"] as! [Any] {
                var model = ScheduledActions()
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
            var tmp : [TargetTrackingPolicies] = []
            for v in dict["targetTrackingPolicies"] as! [Any] {
                var model = TargetTrackingPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetTrackingPolicies = tmp
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class PutProvisionConfigResponseBody : Tea.TeaModel {
    public var alwaysAllocateCPU: Bool?

    public var current: Int64?

    public var resource: String?

    public var scheduledActions: [ScheduledActions]?

    public var target: Int64?

    public var targetTrackingPolicies: [TargetTrackingPolicies]?

    public override init() {
        super.init()
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
        if self.resource != nil {
            map["resource"] = self.resource!
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
        if dict.keys.contains("resource") && dict["resource"] != nil {
            self.resource = dict["resource"] as! String
        }
        if dict.keys.contains("scheduledActions") && dict["scheduledActions"] != nil {
            var tmp : [ScheduledActions] = []
            for v in dict["scheduledActions"] as! [Any] {
                var model = ScheduledActions()
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
            var tmp : [TargetTrackingPolicies] = []
            for v in dict["targetTrackingPolicies"] as! [Any] {
                var model = TargetTrackingPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetTrackingPolicies = tmp
        }
    }
}

public class PutProvisionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutProvisionConfigResponseBody?

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
            var model = PutProvisionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterEventSourceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class RegisterEventSourceRequest : Tea.TeaModel {
    public var sourceArn: String?

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
        if self.sourceArn != nil {
            map["sourceArn"] = self.sourceArn!
        }
        if self.qualifier != nil {
            map["qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sourceArn") && dict["sourceArn"] != nil {
            self.sourceArn = dict["sourceArn"] as! String
        }
        if dict.keys.contains("qualifier") && dict["qualifier"] != nil {
            self.qualifier = dict["qualifier"] as! String
        }
    }
}

public class RegisterEventSourceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var sourceArn: String?

    public override init() {
        super.init()
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
        if self.sourceArn != nil {
            map["sourceArn"] = self.sourceArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("sourceArn") && dict["sourceArn"] != nil {
            self.sourceArn = dict["sourceArn"] as! String
        }
    }
}

public class RegisterEventSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterEventSourceResponseBody?

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
            var model = RegisterEventSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseGPUInstanceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class ReleaseGPUInstanceResponse : Tea.TeaModel {
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

public class StopStatefulAsyncInvocationHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class StopStatefulAsyncInvocationRequest : Tea.TeaModel {
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

public class StopStatefulAsyncInvocationResponse : Tea.TeaModel {
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

public class TagResourceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class TagResourceRequest : Tea.TeaModel {
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

public class TagResourceResponse : Tea.TeaModel {
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

public class UntagResourceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UntagResourceRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceArn: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
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
        if self.resourceArn != nil {
            map["resourceArn"] = self.resourceArn!
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
        if dict.keys.contains("resourceArn") && dict["resourceArn"] != nil {
            self.resourceArn = dict["resourceArn"] as! String
        }
        if dict.keys.contains("tagKeys") && dict["tagKeys"] != nil {
            self.tagKeys = dict["tagKeys"] as! [String]
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

public class UpdateAliasHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UpdateAliasRequest : Tea.TeaModel {
    public var additionalVersionWeight: [String: Double]?

    public var description_: String?

    public var resolvePolicy: String?

    public var routePolicy: RoutePolicy?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routePolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalVersionWeight != nil {
            map["additionalVersionWeight"] = self.additionalVersionWeight!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.resolvePolicy != nil {
            map["resolvePolicy"] = self.resolvePolicy!
        }
        if self.routePolicy != nil {
            map["routePolicy"] = self.routePolicy?.toMap()
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
        if dict.keys.contains("resolvePolicy") && dict["resolvePolicy"] != nil {
            self.resolvePolicy = dict["resolvePolicy"] as! String
        }
        if dict.keys.contains("routePolicy") && dict["routePolicy"] != nil {
            var model = RoutePolicy()
            model.fromMap(dict["routePolicy"] as! [String: Any])
            self.routePolicy = model
        }
        if dict.keys.contains("versionId") && dict["versionId"] != nil {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class UpdateAliasResponseBody : Tea.TeaModel {
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

public class UpdateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAliasResponseBody?

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
            var model = UpdateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomDomainHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UpdateCustomDomainRequest : Tea.TeaModel {
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

public class UpdateCustomDomainResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var apiVersion: String?

    public var certConfig: CertConfig?

    public var createdTime: String?

    public var domainName: String?

    public var lastModifiedTime: String?

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

public class UpdateCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomDomainResponseBody?

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
            var model = UpdateCustomDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFunctionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcCodeChecksum: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcCodeChecksum != nil {
            map["X-Fc-Code-Checksum"] = self.xFcCodeChecksum!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Code-Checksum") && dict["X-Fc-Code-Checksum"] != nil {
            self.xFcCodeChecksum = dict["X-Fc-Code-Checksum"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UpdateFunctionRequest : Tea.TeaModel {
    public var instanceConcurrency: Int32?

    public var caPort: Int32?

    public var code: Code?

    public var cpu: Double?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customHealthCheckConfig: CustomHealthCheckConfig?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var gpuMemorySize: Int32?

    public var handler: String?

    public var initializationTimeout: Int32?

    public var initializer: String?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var instanceSoftConcurrency: Int32?

    public var instanceType: String?

    public var layers: [String]?

    public var memorySize: Int32?

    public var runtime: String?

    public var timeout: Int32?

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
        try self.customHealthCheckConfig?.validate()
        try self.customRuntimeConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceConcurrency != nil {
            map["InstanceConcurrency"] = self.instanceConcurrency!
        }
        if self.caPort != nil {
            map["caPort"] = self.caPort!
        }
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
        if self.customHealthCheckConfig != nil {
            map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.initializationTimeout != nil {
            map["initializationTimeout"] = self.initializationTimeout!
        }
        if self.initializer != nil {
            map["initializer"] = self.initializer!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.instanceSoftConcurrency != nil {
            map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
            self.instanceConcurrency = dict["InstanceConcurrency"] as! Int32
        }
        if dict.keys.contains("caPort") && dict["caPort"] != nil {
            self.caPort = dict["caPort"] as! Int32
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            var model = Code()
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
        if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
            self.customHealthCheckConfig = model
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
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
            self.initializationTimeout = dict["initializationTimeout"] as! Int32
        }
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            self.initializer = dict["initializer"] as! String
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
            self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class UpdateFunctionResponseBody : Tea.TeaModel {
    public var caPort: Int32?

    public var codeChecksum: String?

    public var codeSize: Int64?

    public var cpu: Double?

    public var createdTime: String?

    public var customContainerConfig: CustomContainerConfig?

    public var customDNS: CustomDNS?

    public var customHealthCheckConfig: CustomHealthCheckConfig?

    public var customRuntimeConfig: CustomRuntimeConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var environmentVariables: [String: String]?

    public var functionId: String?

    public var functionName: String?

    public var gpuMemorySize: Int32?

    public var handler: String?

    public var initializationTimeout: Int32?

    public var initializer: String?

    public var instanceConcurrency: Int32?

    public var instanceLifecycleConfig: InstanceLifecycleConfig?

    public var instanceSoftConcurrency: Int32?

    public var instanceType: String?

    public var lastModifiedTime: String?

    public var layers: [String]?

    public var layersArnV2: [String]?

    public var memorySize: Int32?

    public var runtime: String?

    public var timeout: Int32?

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
        try self.customHealthCheckConfig?.validate()
        try self.customRuntimeConfig?.validate()
        try self.instanceLifecycleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caPort != nil {
            map["caPort"] = self.caPort!
        }
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
        if self.customHealthCheckConfig != nil {
            map["customHealthCheckConfig"] = self.customHealthCheckConfig?.toMap()
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
        if self.functionId != nil {
            map["functionId"] = self.functionId!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.gpuMemorySize != nil {
            map["gpuMemorySize"] = self.gpuMemorySize!
        }
        if self.handler != nil {
            map["handler"] = self.handler!
        }
        if self.initializationTimeout != nil {
            map["initializationTimeout"] = self.initializationTimeout!
        }
        if self.initializer != nil {
            map["initializer"] = self.initializer!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.instanceLifecycleConfig != nil {
            map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
        }
        if self.instanceSoftConcurrency != nil {
            map["instanceSoftConcurrency"] = self.instanceSoftConcurrency!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.layers != nil {
            map["layers"] = self.layers!
        }
        if self.layersArnV2 != nil {
            map["layersArnV2"] = self.layersArnV2!
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caPort") && dict["caPort"] != nil {
            self.caPort = dict["caPort"] as! Int32
        }
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
        if dict.keys.contains("customHealthCheckConfig") && dict["customHealthCheckConfig"] != nil {
            var model = CustomHealthCheckConfig()
            model.fromMap(dict["customHealthCheckConfig"] as! [String: Any])
            self.customHealthCheckConfig = model
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
        if dict.keys.contains("functionId") && dict["functionId"] != nil {
            self.functionId = dict["functionId"] as! String
        }
        if dict.keys.contains("functionName") && dict["functionName"] != nil {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("gpuMemorySize") && dict["gpuMemorySize"] != nil {
            self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
        }
        if dict.keys.contains("handler") && dict["handler"] != nil {
            self.handler = dict["handler"] as! String
        }
        if dict.keys.contains("initializationTimeout") && dict["initializationTimeout"] != nil {
            self.initializationTimeout = dict["initializationTimeout"] as! Int32
        }
        if dict.keys.contains("initializer") && dict["initializer"] != nil {
            self.initializer = dict["initializer"] as! String
        }
        if dict.keys.contains("instanceConcurrency") && dict["instanceConcurrency"] != nil {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceLifecycleConfig") && dict["instanceLifecycleConfig"] != nil {
            var model = InstanceLifecycleConfig()
            model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
            self.instanceLifecycleConfig = model
        }
        if dict.keys.contains("instanceSoftConcurrency") && dict["instanceSoftConcurrency"] != nil {
            self.instanceSoftConcurrency = dict["instanceSoftConcurrency"] as! Int32
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("layers") && dict["layers"] != nil {
            self.layers = dict["layers"] as! [String]
        }
        if dict.keys.contains("layersArnV2") && dict["layersArnV2"] != nil {
            self.layersArnV2 = dict["layersArnV2"] as! [String]
        }
        if dict.keys.contains("memorySize") && dict["memorySize"] != nil {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class UpdateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionResponseBody?

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
            var model = UpdateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
    public var description_: String?

    public var internetAccess: Bool?

    public var logConfig: LogConfig?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

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
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
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
        if self.tracingConfig != nil {
            map["tracingConfig"] = self.tracingConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
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
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class UpdateServiceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var internetAccess: Bool?

    public var lastModifiedTime: String?

    public var logConfig: LogConfig?

    public var nasConfig: NASConfig?

    public var ossMountConfig: OSSMountConfig?

    public var role: String?

    public var serviceId: String?

    public var serviceName: String?

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
        try self.logConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.tracingConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.lastModifiedTime != nil {
            map["lastModifiedTime"] = self.lastModifiedTime!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
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
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
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
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("internetAccess") && dict["internetAccess"] != nil {
            self.internetAccess = dict["internetAccess"] as! Bool
        }
        if dict.keys.contains("lastModifiedTime") && dict["lastModifiedTime"] != nil {
            self.lastModifiedTime = dict["lastModifiedTime"] as! String
        }
        if dict.keys.contains("logConfig") && dict["logConfig"] != nil {
            var model = LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
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
        if dict.keys.contains("serviceId") && dict["serviceId"] != nil {
            self.serviceId = dict["serviceId"] as! String
        }
        if dict.keys.contains("serviceName") && dict["serviceName"] != nil {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("tracingConfig") && dict["tracingConfig"] != nil {
            var model = TracingConfig()
            model.fromMap(dict["tracingConfig"] as! [String: Any])
            self.tracingConfig = model
        }
        if dict.keys.contains("vpcConfig") && dict["vpcConfig"] != nil {
            var model = VPCConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
            self.vpcConfig = model
        }
    }
}

public class UpdateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceResponseBody?

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
            var model = UpdateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTriggerHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var ifMatch: String?

    public var xFcAccountId: String?

    public var xFcDate: String?

    public var xFcTraceId: String?

    public override init() {
        super.init()
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
        if self.ifMatch != nil {
            map["If-Match"] = self.ifMatch!
        }
        if self.xFcAccountId != nil {
            map["X-Fc-Account-Id"] = self.xFcAccountId!
        }
        if self.xFcDate != nil {
            map["X-Fc-Date"] = self.xFcDate!
        }
        if self.xFcTraceId != nil {
            map["X-Fc-Trace-Id"] = self.xFcTraceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("If-Match") && dict["If-Match"] != nil {
            self.ifMatch = dict["If-Match"] as! String
        }
        if dict.keys.contains("X-Fc-Account-Id") && dict["X-Fc-Account-Id"] != nil {
            self.xFcAccountId = dict["X-Fc-Account-Id"] as! String
        }
        if dict.keys.contains("X-Fc-Date") && dict["X-Fc-Date"] != nil {
            self.xFcDate = dict["X-Fc-Date"] as! String
        }
        if dict.keys.contains("X-Fc-Trace-Id") && dict["X-Fc-Trace-Id"] != nil {
            self.xFcTraceId = dict["X-Fc-Trace-Id"] as! String
        }
    }
}

public class UpdateTriggerRequest : Tea.TeaModel {
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

public class UpdateTriggerResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var domainName: String?

    public var invocationRole: String?

    public var lastModifiedTime: String?

    public var qualifier: String?

    public var sourceArn: String?

    public var triggerConfig: String?

    public var triggerId: String?

    public var triggerName: String?

    public var triggerType: String?

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
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
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
        if self.urlInternet != nil {
            map["urlInternet"] = self.urlInternet!
        }
        if self.urlIntranet != nil {
            map["urlIntranet"] = self.urlIntranet!
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
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
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
        if dict.keys.contains("urlInternet") && dict["urlInternet"] != nil {
            self.urlInternet = dict["urlInternet"] as! String
        }
        if dict.keys.contains("urlIntranet") && dict["urlIntranet"] != nil {
            self.urlIntranet = dict["urlIntranet"] as! String
        }
    }
}

public class UpdateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTriggerResponseBody?

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
            var model = UpdateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
