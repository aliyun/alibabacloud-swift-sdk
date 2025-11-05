import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EventMatchRule : Tea.TeaModel {
    public var matchState: Bool?

    public var name: String?

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
        if self.matchState != nil {
            map["MatchState"] = self.matchState!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.suffix != nil {
            map["Suffix"] = self.suffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MatchState"] as? Bool {
            self.matchState = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Suffix"] as? String {
            self.suffix = value
        }
    }
}

public class AuthorizeEndpointAclRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrList: [String]?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrList != nil {
            map["CidrList"] = self.cidrList!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclStrategy"] as? String {
            self.aclStrategy = value
        }
        if let value = dict["CidrList"] as? [String] {
            self.cidrList = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class AuthorizeEndpointAclShrinkRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrListShrink: String?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrListShrink != nil {
            map["CidrList"] = self.cidrListShrink!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclStrategy"] as? String {
            self.aclStrategy = value
        }
        if let value = dict["CidrList"] as? String {
            self.cidrListShrink = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class AuthorizeEndpointAclResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AuthorizeEndpointAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeEndpointAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AuthorizeEndpointAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEventRuleRequest : Tea.TeaModel {
    public class Endpoint : Tea.TeaModel {
        public var endpointType: String?

        public var endpointValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.endpointValue != nil {
                map["EndpointValue"] = self.endpointValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["EndpointValue"] as? String {
                self.endpointValue = value
            }
        }
    }
    public class Endpoints : Tea.TeaModel {
        public var endpointType: String?

        public var endpointValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.endpointValue != nil {
                map["EndpointValue"] = self.endpointValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["EndpointValue"] as? String {
                self.endpointValue = value
            }
        }
    }
    public var clientToken: String?

    public var deliveryMode: String?

    public var endpoint: CreateEventRuleRequest.Endpoint?

    public var endpoints: [CreateEventRuleRequest.Endpoints]?

    public var eventTypes: [String]?

    public var matchRules: [[EventMatchRule]]?

    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.endpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deliveryMode != nil {
            map["DeliveryMode"] = self.deliveryMode!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint?.toMap()
        }
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.eventTypes != nil {
            map["EventTypes"] = self.eventTypes!
        }
        if self.matchRules != nil {
            var tmp : [Any] = []
            for k in self.matchRules! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["MatchRules"] = tmp
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeliveryMode"] as? String {
            self.deliveryMode = value
        }
        if let value = dict["Endpoint"] as? [String: Any?] {
            var model = CreateEventRuleRequest.Endpoint()
            model.fromMap(value)
            self.endpoint = model
        }
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [CreateEventRuleRequest.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = CreateEventRuleRequest.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
        }
        if let value = dict["EventTypes"] as? [String] {
            self.eventTypes = value
        }
        if let value = dict["MatchRules"] as? [Any?] {
            var tmp : [[EventMatchRule]] = []
            for v in value {
                if v != nil {
                    var l1 : [EventMatchRule] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = EventMatchRule()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp.append(l1)
                }
            }
            self.matchRules = tmp
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class CreateEventRuleShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var deliveryMode: String?

    public var endpointShrink: String?

    public var endpointsShrink: String?

    public var eventTypesShrink: String?

    public var matchRulesShrink: String?

    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deliveryMode != nil {
            map["DeliveryMode"] = self.deliveryMode!
        }
        if self.endpointShrink != nil {
            map["Endpoint"] = self.endpointShrink!
        }
        if self.endpointsShrink != nil {
            map["Endpoints"] = self.endpointsShrink!
        }
        if self.eventTypesShrink != nil {
            map["EventTypes"] = self.eventTypesShrink!
        }
        if self.matchRulesShrink != nil {
            map["MatchRules"] = self.matchRulesShrink!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeliveryMode"] as? String {
            self.deliveryMode = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpointShrink = value
        }
        if let value = dict["Endpoints"] as? String {
            self.endpointsShrink = value
        }
        if let value = dict["EventTypes"] as? String {
            self.eventTypesShrink = value
        }
        if let value = dict["MatchRules"] as? String {
            self.matchRulesShrink = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class CreateEventRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateEventRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQueueRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public var maxReceiveCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.maxReceiveCount != nil {
                map["MaxReceiveCount"] = self.maxReceiveCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadLetterTargetQueue"] as? String {
                self.deadLetterTargetQueue = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceiveCount"] as? Int32 {
                self.maxReceiveCount = value
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
    public class TenantRateLimitPolicy : Tea.TeaModel {
        public var enabled: Bool?

        public var maxReceivesPerSecond: Int32?

        public override init() {
            super.init()
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
            if self.maxReceivesPerSecond != nil {
                map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                self.maxReceivesPerSecond = value
            }
        }
    }
    public var delaySeconds: Int64?

    public var dlqPolicy: CreateQueueRequest.DlqPolicy?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var queueType: String?

    public var tag: [CreateQueueRequest.Tag]?

    public var tenantRateLimitPolicy: CreateQueueRequest.TenantRateLimitPolicy?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
        try self.tenantRateLimitPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueType != nil {
            map["QueueType"] = self.queueType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tenantRateLimitPolicy != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DelaySeconds"] as? Int64 {
            self.delaySeconds = value
        }
        if let value = dict["DlqPolicy"] as? [String: Any?] {
            var model = CreateQueueRequest.DlqPolicy()
            model.fromMap(value)
            self.dlqPolicy = model
        }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaximumMessageSize"] as? Int64 {
            self.maximumMessageSize = value
        }
        if let value = dict["MessageRetentionPeriod"] as? Int64 {
            self.messageRetentionPeriod = value
        }
        if let value = dict["PollingWaitSeconds"] as? Int64 {
            self.pollingWaitSeconds = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueType"] as? String {
            self.queueType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateQueueRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateQueueRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
            var model = CreateQueueRequest.TenantRateLimitPolicy()
            model.fromMap(value)
            self.tenantRateLimitPolicy = model
        }
        if let value = dict["VisibilityTimeout"] as? Int64 {
            self.visibilityTimeout = value
        }
    }
}

public class CreateQueueShrinkRequest : Tea.TeaModel {
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
    public var delaySeconds: Int64?

    public var dlqPolicyShrink: String?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var queueType: String?

    public var tag: [CreateQueueShrinkRequest.Tag]?

    public var tenantRateLimitPolicyShrink: String?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueType != nil {
            map["QueueType"] = self.queueType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tenantRateLimitPolicyShrink != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicyShrink!
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DelaySeconds"] as? Int64 {
            self.delaySeconds = value
        }
        if let value = dict["DlqPolicy"] as? String {
            self.dlqPolicyShrink = value
        }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaximumMessageSize"] as? Int64 {
            self.maximumMessageSize = value
        }
        if let value = dict["MessageRetentionPeriod"] as? Int64 {
            self.messageRetentionPeriod = value
        }
        if let value = dict["PollingWaitSeconds"] as? Int64 {
            self.pollingWaitSeconds = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueType"] as? String {
            self.queueType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateQueueShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateQueueShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TenantRateLimitPolicy"] as? String {
            self.tenantRateLimitPolicyShrink = value
        }
        if let value = dict["VisibilityTimeout"] as? Int64 {
            self.visibilityTimeout = value
        }
    }
}

public class CreateQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: CreateQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateQueueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
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
    public var enableLogging: Bool?

    public var maxMessageSize: Int64?

    public var tag: [CreateTopicRequest.Tag]?

    public var topicName: String?

    public var topicType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maxMessageSize != nil {
            map["MaxMessageSize"] = self.maxMessageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.topicType != nil {
            map["TopicType"] = self.topicType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaxMessageSize"] as? Int64 {
            self.maxMessageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateTopicRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateTopicRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["TopicType"] as? String {
            self.topicType = value
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: CreateTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTopicResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEventRuleRequest : Tea.TeaModel {
    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class DeleteEventRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteEventRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQueueRequest : Tea.TeaModel {
    public var queueName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
    }
}

public class DeleteQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: DeleteQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteQueueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTopicRequest : Tea.TeaModel {
    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class DeleteTopicResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableEndpointRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class DisableEndpointResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableEndpointRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class EnableEndpointResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEndpointAttributeRequest : Tea.TeaModel {
    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class GetEndpointAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CidrList : Tea.TeaModel {
            public var aclStrategy: String?

            public var cidr: String?

            public var createTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclStrategy != nil {
                    map["AclStrategy"] = self.aclStrategy!
                }
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclStrategy"] as? String {
                    self.aclStrategy = value
                }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
            }
        }
        public var cidrList: [GetEndpointAttributeResponseBody.Data.CidrList]?

        public var endpointEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrList != nil {
                var tmp : [Any] = []
                for k in self.cidrList! {
                    tmp.append(k.toMap())
                }
                map["CidrList"] = tmp
            }
            if self.endpointEnabled != nil {
                map["EndpointEnabled"] = self.endpointEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CidrList"] as? [Any?] {
                var tmp : [GetEndpointAttributeResponseBody.Data.CidrList] = []
                for v in value {
                    if v != nil {
                        var model = GetEndpointAttributeResponseBody.Data.CidrList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cidrList = tmp
            }
            if let value = dict["EndpointEnabled"] as? Bool {
                self.endpointEnabled = value
            }
        }
    }
    public var code: Int64?

    public var data: GetEndpointAttributeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetEndpointAttributeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetEndpointAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEndpointAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetEndpointAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEventRuleRequest : Tea.TeaModel {
    public var productName: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class GetEventRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Endpoint : Tea.TeaModel {
            public var endpointType: String?

            public var endpointValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.endpointValue != nil {
                    map["EndpointValue"] = self.endpointValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndpointType"] as? String {
                    self.endpointType = value
                }
                if let value = dict["EndpointValue"] as? String {
                    self.endpointValue = value
                }
            }
        }
        public class Subscriptions : Tea.TeaModel {
            public var endpointType: String?

            public var endpointValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.endpointValue != nil {
                    map["EndpointValue"] = self.endpointValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndpointType"] as? String {
                    self.endpointType = value
                }
                if let value = dict["EndpointValue"] as? String {
                    self.endpointValue = value
                }
            }
        }
        public var deliveryMode: String?

        public var endpoint: GetEventRuleResponseBody.Data.Endpoint?

        public var eventTypes: [String]?

        public var matchRules: [[EventMatchRule]]?

        public var ruleName: String?

        public var subscriptions: [GetEventRuleResponseBody.Data.Subscriptions]?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endpoint?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryMode != nil {
                map["DeliveryMode"] = self.deliveryMode!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint?.toMap()
            }
            if self.eventTypes != nil {
                map["EventTypes"] = self.eventTypes!
            }
            if self.matchRules != nil {
                var tmp : [Any] = []
                for k in self.matchRules! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["MatchRules"] = tmp
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.subscriptions != nil {
                var tmp : [Any] = []
                for k in self.subscriptions! {
                    tmp.append(k.toMap())
                }
                map["Subscriptions"] = tmp
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryMode"] as? String {
                self.deliveryMode = value
            }
            if let value = dict["Endpoint"] as? [String: Any?] {
                var model = GetEventRuleResponseBody.Data.Endpoint()
                model.fromMap(value)
                self.endpoint = model
            }
            if let value = dict["EventTypes"] as? [String] {
                self.eventTypes = value
            }
            if let value = dict["MatchRules"] as? [Any?] {
                var tmp : [[EventMatchRule]] = []
                for v in value {
                    if v != nil {
                        var l1 : [EventMatchRule] = []
                        for v1 in v as! [Any?] {
                            if v1 != nil {
                                var model = EventMatchRule()
                                if v1 != nil {
                                    model.fromMap(v1 as? [String: Any?])
                                }
                                l1.append(model)
                            }
                        }
                        tmp.append(l1)
                    }
                }
                self.matchRules = tmp
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Subscriptions"] as? [Any?] {
                var tmp : [GetEventRuleResponseBody.Data.Subscriptions] = []
                for v in value {
                    if v != nil {
                        var model = GetEventRuleResponseBody.Data.Subscriptions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subscriptions = tmp
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var code: Int64?

    public var data: GetEventRuleResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetEventRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetEventRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueueAttributesRequest : Tea.TeaModel {
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
    public var queueName: String?

    public var tag: [GetQueueAttributesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
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
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetQueueAttributesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetQueueAttributesRequest.Tag()
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

public class GetQueueAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DlqPolicy : Tea.TeaModel {
            public var deadLetterTargetQueue: String?

            public var enabled: Bool?

            public var maxReceiveCount: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deadLetterTargetQueue != nil {
                    map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.maxReceiveCount != nil {
                    map["MaxReceiveCount"] = self.maxReceiveCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeadLetterTargetQueue"] as? String {
                    self.deadLetterTargetQueue = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["MaxReceiveCount"] as? String {
                    self.maxReceiveCount = value
                }
            }
        }
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
        public class TenantRateLimitPolicy : Tea.TeaModel {
            public var enabled: Bool?

            public var maxReceivesPerSecond: Int32?

            public override init() {
                super.init()
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
                if self.maxReceivesPerSecond != nil {
                    map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                    self.maxReceivesPerSecond = value
                }
            }
        }
        public var activeMessages: Int64?

        public var createTime: Int64?

        public var delayMessages: Int64?

        public var delaySeconds: Int64?

        public var dlqPolicy: GetQueueAttributesResponseBody.Data.DlqPolicy?

        public var inactiveMessages: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maximumMessageSize: Int64?

        public var messageRetentionPeriod: Int64?

        public var pollingWaitSeconds: Int64?

        public var queueName: String?

        public var queueType: String?

        public var tags: [GetQueueAttributesResponseBody.Data.Tags]?

        public var tenantRateLimitPolicy: GetQueueAttributesResponseBody.Data.TenantRateLimitPolicy?

        public var visibilityTimeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dlqPolicy?.validate()
            try self.tenantRateLimitPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeMessages != nil {
                map["ActiveMessages"] = self.activeMessages!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.delayMessages != nil {
                map["DelayMessages"] = self.delayMessages!
            }
            if self.delaySeconds != nil {
                map["DelaySeconds"] = self.delaySeconds!
            }
            if self.dlqPolicy != nil {
                map["DlqPolicy"] = self.dlqPolicy?.toMap()
            }
            if self.inactiveMessages != nil {
                map["InactiveMessages"] = self.inactiveMessages!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.loggingEnabled != nil {
                map["LoggingEnabled"] = self.loggingEnabled!
            }
            if self.maximumMessageSize != nil {
                map["MaximumMessageSize"] = self.maximumMessageSize!
            }
            if self.messageRetentionPeriod != nil {
                map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
            }
            if self.pollingWaitSeconds != nil {
                map["PollingWaitSeconds"] = self.pollingWaitSeconds!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.queueType != nil {
                map["QueueType"] = self.queueType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantRateLimitPolicy != nil {
                map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
            }
            if self.visibilityTimeout != nil {
                map["VisibilityTimeout"] = self.visibilityTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveMessages"] as? Int64 {
                self.activeMessages = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DelayMessages"] as? Int64 {
                self.delayMessages = value
            }
            if let value = dict["DelaySeconds"] as? Int64 {
                self.delaySeconds = value
            }
            if let value = dict["DlqPolicy"] as? [String: Any?] {
                var model = GetQueueAttributesResponseBody.Data.DlqPolicy()
                model.fromMap(value)
                self.dlqPolicy = model
            }
            if let value = dict["InactiveMessages"] as? Int64 {
                self.inactiveMessages = value
            }
            if let value = dict["LastModifyTime"] as? Int64 {
                self.lastModifyTime = value
            }
            if let value = dict["LoggingEnabled"] as? Bool {
                self.loggingEnabled = value
            }
            if let value = dict["MaximumMessageSize"] as? Int64 {
                self.maximumMessageSize = value
            }
            if let value = dict["MessageRetentionPeriod"] as? Int64 {
                self.messageRetentionPeriod = value
            }
            if let value = dict["PollingWaitSeconds"] as? Int64 {
                self.pollingWaitSeconds = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["QueueType"] as? String {
                self.queueType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetQueueAttributesResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetQueueAttributesResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
                var model = GetQueueAttributesResponseBody.Data.TenantRateLimitPolicy()
                model.fromMap(value)
                self.tenantRateLimitPolicy = model
            }
            if let value = dict["VisibilityTimeout"] as? Int64 {
                self.visibilityTimeout = value
            }
        }
    }
    public var code: Int64?

    public var data: GetQueueAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetQueueAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetQueueAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueueAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionAttributesRequest : Tea.TeaModel {
    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetSubscriptionAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DlqPolicy : Tea.TeaModel {
            public var deadLetterTargetQueue: String?

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
                if self.deadLetterTargetQueue != nil {
                    map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeadLetterTargetQueue"] as? String {
                    self.deadLetterTargetQueue = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
            }
        }
        public class TenantRateLimitPolicy : Tea.TeaModel {
            public var enabled: Bool?

            public var maxReceivesPerSecond: Int32?

            public override init() {
                super.init()
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
                if self.maxReceivesPerSecond != nil {
                    map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                    self.maxReceivesPerSecond = value
                }
            }
        }
        public var createTime: Int64?

        public var dlqPolicy: GetSubscriptionAttributesResponseBody.Data.DlqPolicy?

        public var endpoint: String?

        public var filterTag: String?

        public var lastModifyTime: Int64?

        public var notifyContentFormat: String?

        public var notifyStrategy: String?

        public var subscriptionName: String?

        public var tenantRateLimitPolicy: GetSubscriptionAttributesResponseBody.Data.TenantRateLimitPolicy?

        public var topicName: String?

        public var topicOwner: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dlqPolicy?.validate()
            try self.tenantRateLimitPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dlqPolicy != nil {
                map["DlqPolicy"] = self.dlqPolicy?.toMap()
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.filterTag != nil {
                map["FilterTag"] = self.filterTag!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.notifyContentFormat != nil {
                map["NotifyContentFormat"] = self.notifyContentFormat!
            }
            if self.notifyStrategy != nil {
                map["NotifyStrategy"] = self.notifyStrategy!
            }
            if self.subscriptionName != nil {
                map["SubscriptionName"] = self.subscriptionName!
            }
            if self.tenantRateLimitPolicy != nil {
                map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            if self.topicOwner != nil {
                map["TopicOwner"] = self.topicOwner!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DlqPolicy"] as? [String: Any?] {
                var model = GetSubscriptionAttributesResponseBody.Data.DlqPolicy()
                model.fromMap(value)
                self.dlqPolicy = model
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["FilterTag"] as? String {
                self.filterTag = value
            }
            if let value = dict["LastModifyTime"] as? Int64 {
                self.lastModifyTime = value
            }
            if let value = dict["NotifyContentFormat"] as? String {
                self.notifyContentFormat = value
            }
            if let value = dict["NotifyStrategy"] as? String {
                self.notifyStrategy = value
            }
            if let value = dict["SubscriptionName"] as? String {
                self.subscriptionName = value
            }
            if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
                var model = GetSubscriptionAttributesResponseBody.Data.TenantRateLimitPolicy()
                model.fromMap(value)
                self.tenantRateLimitPolicy = model
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
            if let value = dict["TopicOwner"] as? String {
                self.topicOwner = value
            }
        }
    }
    public var code: Int64?

    public var data: GetSubscriptionAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSubscriptionAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSubscriptionAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubscriptionAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicAttributesRequest : Tea.TeaModel {
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
    public var tag: [GetTopicAttributesRequest.Tag]?

    public var topicName: String?

    public override init() {
        super.init()
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
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetTopicAttributesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetTopicAttributesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetTopicAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
        public var createTime: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maxMessageSize: Int64?

        public var messageCount: Int64?

        public var messageRetentionPeriod: Int64?

        public var tags: [GetTopicAttributesResponseBody.Data.Tags]?

        public var topicInnerUrl: String?

        public var topicName: String?

        public var topicType: String?

        public var topicUrl: String?

        public override init() {
            super.init()
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
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.loggingEnabled != nil {
                map["LoggingEnabled"] = self.loggingEnabled!
            }
            if self.maxMessageSize != nil {
                map["MaxMessageSize"] = self.maxMessageSize!
            }
            if self.messageCount != nil {
                map["MessageCount"] = self.messageCount!
            }
            if self.messageRetentionPeriod != nil {
                map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.topicInnerUrl != nil {
                map["TopicInnerUrl"] = self.topicInnerUrl!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            if self.topicType != nil {
                map["TopicType"] = self.topicType!
            }
            if self.topicUrl != nil {
                map["TopicUrl"] = self.topicUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["LastModifyTime"] as? Int64 {
                self.lastModifyTime = value
            }
            if let value = dict["LoggingEnabled"] as? Bool {
                self.loggingEnabled = value
            }
            if let value = dict["MaxMessageSize"] as? Int64 {
                self.maxMessageSize = value
            }
            if let value = dict["MessageCount"] as? Int64 {
                self.messageCount = value
            }
            if let value = dict["MessageRetentionPeriod"] as? Int64 {
                self.messageRetentionPeriod = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetTopicAttributesResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetTopicAttributesResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TopicInnerUrl"] as? String {
                self.topicInnerUrl = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
            if let value = dict["TopicType"] as? String {
                self.topicType = value
            }
            if let value = dict["TopicUrl"] as? String {
                self.topicUrl = value
            }
        }
    }
    public var code: Int64?

    public var data: GetTopicAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTopicAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTopicAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTopicAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEventRulesRequest : Tea.TeaModel {
    public class Subscription : Tea.TeaModel {
        public var endpointType: String?

        public var endpointValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.endpointValue != nil {
                map["EndpointValue"] = self.endpointValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["EndpointValue"] as? String {
                self.endpointValue = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var productName: String?

    public var resourceName: String?

    public var ruleName: String?

    public var subscription: ListEventRulesRequest.Subscription?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subscription?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.subscription != nil {
            map["Subscription"] = self.subscription?.toMap()
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Subscription"] as? [String: Any?] {
            var model = ListEventRulesRequest.Subscription()
            model.fromMap(value)
            self.subscription = model
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListEventRulesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var productName: String?

    public var resourceName: String?

    public var ruleName: String?

    public var subscriptionShrink: String?

    public var topicName: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.subscriptionShrink != nil {
            map["Subscription"] = self.subscriptionShrink!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Subscription"] as? String {
            self.subscriptionShrink = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListEventRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class Endpoint : Tea.TeaModel {
                public var endpointType: String?

                public var endpointValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endpointType != nil {
                        map["EndpointType"] = self.endpointType!
                    }
                    if self.endpointValue != nil {
                        map["EndpointValue"] = self.endpointValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndpointType"] as? String {
                        self.endpointType = value
                    }
                    if let value = dict["EndpointValue"] as? String {
                        self.endpointValue = value
                    }
                }
            }
            public class Subscriptions : Tea.TeaModel {
                public var endpointType: String?

                public var endpointValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endpointType != nil {
                        map["EndpointType"] = self.endpointType!
                    }
                    if self.endpointValue != nil {
                        map["EndpointValue"] = self.endpointValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndpointType"] as? String {
                        self.endpointType = value
                    }
                    if let value = dict["EndpointValue"] as? String {
                        self.endpointValue = value
                    }
                }
            }
            public var deliveryMode: String?

            public var endpoint: ListEventRulesResponseBody.Data.PageData.Endpoint?

            public var eventTypes: [String]?

            public var matchRules: [[EventMatchRule]]?

            public var ruleName: String?

            public var subscriptions: [ListEventRulesResponseBody.Data.PageData.Subscriptions]?

            public var topicName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.endpoint?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deliveryMode != nil {
                    map["DeliveryMode"] = self.deliveryMode!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint?.toMap()
                }
                if self.eventTypes != nil {
                    map["EventTypes"] = self.eventTypes!
                }
                if self.matchRules != nil {
                    var tmp : [Any] = []
                    for k in self.matchRules! {
                        var l1 : [Any] = []
                        for k1 in k {
                            l1.append(k1.toMap())
                        }
                        tmp.append(l1)
                    }
                    map["MatchRules"] = tmp
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.subscriptions != nil {
                    var tmp : [Any] = []
                    for k in self.subscriptions! {
                        tmp.append(k.toMap())
                    }
                    map["Subscriptions"] = tmp
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeliveryMode"] as? String {
                    self.deliveryMode = value
                }
                if let value = dict["Endpoint"] as? [String: Any?] {
                    var model = ListEventRulesResponseBody.Data.PageData.Endpoint()
                    model.fromMap(value)
                    self.endpoint = model
                }
                if let value = dict["EventTypes"] as? [String] {
                    self.eventTypes = value
                }
                if let value = dict["MatchRules"] as? [Any?] {
                    var tmp : [[EventMatchRule]] = []
                    for v in value {
                        if v != nil {
                            var l1 : [EventMatchRule] = []
                            for v1 in v as! [Any?] {
                                if v1 != nil {
                                    var model = EventMatchRule()
                                    if v1 != nil {
                                        model.fromMap(v1 as? [String: Any?])
                                    }
                                    l1.append(model)
                                }
                            }
                            tmp.append(l1)
                        }
                    }
                    self.matchRules = tmp
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Subscriptions"] as? [Any?] {
                    var tmp : [ListEventRulesResponseBody.Data.PageData.Subscriptions] = []
                    for v in value {
                        if v != nil {
                            var model = ListEventRulesResponseBody.Data.PageData.Subscriptions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subscriptions = tmp
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var pageData: [ListEventRulesResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var pages: Int64?

        public var size: Int64?

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
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [ListEventRulesResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = ListEventRulesResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageNum"] as? Int64 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: ListEventRulesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListEventRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListEventRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEventRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueueRequest : Tea.TeaModel {
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
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var queueName: String?

    public var queueType: String?

    public var tag: [ListQueueRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueType != nil {
            map["QueueType"] = self.queueType!
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
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueType"] as? String {
            self.queueType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListQueueRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListQueueRequest.Tag()
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

public class ListQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class DlqPolicy : Tea.TeaModel {
                public var deadLetterTargetQueue: String?

                public var enabled: Bool?

                public var maxReceiveCount: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deadLetterTargetQueue != nil {
                        map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.maxReceiveCount != nil {
                        map["MaxReceiveCount"] = self.maxReceiveCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DeadLetterTargetQueue"] as? String {
                        self.deadLetterTargetQueue = value
                    }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["MaxReceiveCount"] as? String {
                        self.maxReceiveCount = value
                    }
                }
            }
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
            public var activeMessages: Int64?

            public var createTime: Int64?

            public var delayMessages: Int64?

            public var delaySeconds: Int64?

            public var dlqPolicy: ListQueueResponseBody.Data.PageData.DlqPolicy?

            public var inactiveMessages: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maximumMessageSize: Int64?

            public var messageRetentionPeriod: Int64?

            public var pollingWaitSeconds: Int64?

            public var queueName: String?

            public var queueType: String?

            public var tags: [ListQueueResponseBody.Data.PageData.Tags]?

            public var visibilityTimeout: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dlqPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeMessages != nil {
                    map["ActiveMessages"] = self.activeMessages!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.delayMessages != nil {
                    map["DelayMessages"] = self.delayMessages!
                }
                if self.delaySeconds != nil {
                    map["DelaySeconds"] = self.delaySeconds!
                }
                if self.dlqPolicy != nil {
                    map["DlqPolicy"] = self.dlqPolicy?.toMap()
                }
                if self.inactiveMessages != nil {
                    map["InactiveMessages"] = self.inactiveMessages!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.loggingEnabled != nil {
                    map["LoggingEnabled"] = self.loggingEnabled!
                }
                if self.maximumMessageSize != nil {
                    map["MaximumMessageSize"] = self.maximumMessageSize!
                }
                if self.messageRetentionPeriod != nil {
                    map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
                }
                if self.pollingWaitSeconds != nil {
                    map["PollingWaitSeconds"] = self.pollingWaitSeconds!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.queueType != nil {
                    map["QueueType"] = self.queueType!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.visibilityTimeout != nil {
                    map["VisibilityTimeout"] = self.visibilityTimeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActiveMessages"] as? Int64 {
                    self.activeMessages = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DelayMessages"] as? Int64 {
                    self.delayMessages = value
                }
                if let value = dict["DelaySeconds"] as? Int64 {
                    self.delaySeconds = value
                }
                if let value = dict["DlqPolicy"] as? [String: Any?] {
                    var model = ListQueueResponseBody.Data.PageData.DlqPolicy()
                    model.fromMap(value)
                    self.dlqPolicy = model
                }
                if let value = dict["InactiveMessages"] as? Int64 {
                    self.inactiveMessages = value
                }
                if let value = dict["LastModifyTime"] as? Int64 {
                    self.lastModifyTime = value
                }
                if let value = dict["LoggingEnabled"] as? Bool {
                    self.loggingEnabled = value
                }
                if let value = dict["MaximumMessageSize"] as? Int64 {
                    self.maximumMessageSize = value
                }
                if let value = dict["MessageRetentionPeriod"] as? Int64 {
                    self.messageRetentionPeriod = value
                }
                if let value = dict["PollingWaitSeconds"] as? Int64 {
                    self.pollingWaitSeconds = value
                }
                if let value = dict["QueueName"] as? String {
                    self.queueName = value
                }
                if let value = dict["QueueType"] as? String {
                    self.queueType = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListQueueResponseBody.Data.PageData.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListQueueResponseBody.Data.PageData.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["VisibilityTimeout"] as? Int64 {
                    self.visibilityTimeout = value
                }
            }
        }
        public var pageData: [ListQueueResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var pages: Int64?

        public var size: Int64?

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
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [ListQueueResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = ListQueueResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageNum"] as? Int64 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: ListQueueResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListQueueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubscriptionByTopicRequest : Tea.TeaModel {
    public var endpointType: String?

    public var endpointValue: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.endpointValue != nil {
            map["EndpointValue"] = self.endpointValue!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["EndpointValue"] as? String {
            self.endpointValue = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListSubscriptionByTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class DlqPolicy : Tea.TeaModel {
                public var deadLetterTargetQueue: String?

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
                    if self.deadLetterTargetQueue != nil {
                        map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DeadLetterTargetQueue"] as? String {
                        self.deadLetterTargetQueue = value
                    }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var createTime: Int64?

            public var dlqPolicy: ListSubscriptionByTopicResponseBody.Data.PageData.DlqPolicy?

            public var endpoint: String?

            public var filterTag: String?

            public var lastModifyTime: Int64?

            public var notifyContentFormat: String?

            public var notifyStrategy: String?

            public var subscriptionName: String?

            public var topicName: String?

            public var topicOwner: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dlqPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dlqPolicy != nil {
                    map["DlqPolicy"] = self.dlqPolicy?.toMap()
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.filterTag != nil {
                    map["FilterTag"] = self.filterTag!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.notifyContentFormat != nil {
                    map["NotifyContentFormat"] = self.notifyContentFormat!
                }
                if self.notifyStrategy != nil {
                    map["NotifyStrategy"] = self.notifyStrategy!
                }
                if self.subscriptionName != nil {
                    map["SubscriptionName"] = self.subscriptionName!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.topicOwner != nil {
                    map["TopicOwner"] = self.topicOwner!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DlqPolicy"] as? [String: Any?] {
                    var model = ListSubscriptionByTopicResponseBody.Data.PageData.DlqPolicy()
                    model.fromMap(value)
                    self.dlqPolicy = model
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["FilterTag"] as? String {
                    self.filterTag = value
                }
                if let value = dict["LastModifyTime"] as? Int64 {
                    self.lastModifyTime = value
                }
                if let value = dict["NotifyContentFormat"] as? String {
                    self.notifyContentFormat = value
                }
                if let value = dict["NotifyStrategy"] as? String {
                    self.notifyStrategy = value
                }
                if let value = dict["SubscriptionName"] as? String {
                    self.subscriptionName = value
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["TopicOwner"] as? String {
                    self.topicOwner = value
                }
            }
        }
        public var pageData: [ListSubscriptionByTopicResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var pages: Int64?

        public var size: Int64?

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
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [ListSubscriptionByTopicResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = ListSubscriptionByTopicResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageNum"] as? Int64 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: ListSubscriptionByTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListSubscriptionByTopicResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSubscriptionByTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubscriptionByTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubscriptionByTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTopicRequest : Tea.TeaModel {
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
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var tag: [ListTopicRequest.Tag]?

    public var topicName: String?

    public var topicType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.topicType != nil {
            map["TopicType"] = self.topicType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTopicRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTopicRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["TopicType"] as? String {
            self.topicType = value
        }
    }
}

public class ListTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
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
            public var createTime: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maxMessageSize: Int64?

            public var messageCount: Int64?

            public var messageRetentionPeriod: Int64?

            public var tags: [ListTopicResponseBody.Data.PageData.Tags]?

            public var topicInnerUrl: String?

            public var topicName: String?

            public var topicType: String?

            public var topicUrl: String?

            public override init() {
                super.init()
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
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.loggingEnabled != nil {
                    map["LoggingEnabled"] = self.loggingEnabled!
                }
                if self.maxMessageSize != nil {
                    map["MaxMessageSize"] = self.maxMessageSize!
                }
                if self.messageCount != nil {
                    map["MessageCount"] = self.messageCount!
                }
                if self.messageRetentionPeriod != nil {
                    map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.topicInnerUrl != nil {
                    map["TopicInnerUrl"] = self.topicInnerUrl!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                if self.topicUrl != nil {
                    map["TopicUrl"] = self.topicUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["LastModifyTime"] as? Int64 {
                    self.lastModifyTime = value
                }
                if let value = dict["LoggingEnabled"] as? Bool {
                    self.loggingEnabled = value
                }
                if let value = dict["MaxMessageSize"] as? Int64 {
                    self.maxMessageSize = value
                }
                if let value = dict["MessageCount"] as? Int64 {
                    self.messageCount = value
                }
                if let value = dict["MessageRetentionPeriod"] as? Int64 {
                    self.messageRetentionPeriod = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListTopicResponseBody.Data.PageData.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListTopicResponseBody.Data.PageData.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TopicInnerUrl"] as? String {
                    self.topicInnerUrl = value
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["TopicType"] as? String {
                    self.topicType = value
                }
                if let value = dict["TopicUrl"] as? String {
                    self.topicUrl = value
                }
            }
        }
        public var pageData: [ListTopicResponseBody.Data.PageData]?

        public var pageNum: Int64?

        public var pageSize: Int64?

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
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageData"] as? [Any?] {
                var tmp : [ListTopicResponseBody.Data.PageData] = []
                for v in value {
                    if v != nil {
                        var model = ListTopicResponseBody.Data.PageData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageData = tmp
            }
            if let value = dict["PageNum"] as? Int64 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: ListTopicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListTopicResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeEndpointAclRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrList: [String]?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrList != nil {
            map["CidrList"] = self.cidrList!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclStrategy"] as? String {
            self.aclStrategy = value
        }
        if let value = dict["CidrList"] as? [String] {
            self.cidrList = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class RevokeEndpointAclShrinkRequest : Tea.TeaModel {
    public var aclStrategy: String?

    public var cidrListShrink: String?

    public var endpointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclStrategy != nil {
            map["AclStrategy"] = self.aclStrategy!
        }
        if self.cidrListShrink != nil {
            map["CidrList"] = self.cidrListShrink!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclStrategy"] as? String {
            self.aclStrategy = value
        }
        if let value = dict["CidrList"] as? String {
            self.cidrListShrink = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
    }
}

public class RevokeEndpointAclResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RevokeEndpointAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeEndpointAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeEndpointAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetQueueAttributesRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

        public var enabled: Bool?

        public var maxReceiveCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.maxReceiveCount != nil {
                map["MaxReceiveCount"] = self.maxReceiveCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadLetterTargetQueue"] as? String {
                self.deadLetterTargetQueue = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceiveCount"] as? Int32 {
                self.maxReceiveCount = value
            }
        }
    }
    public class TenantRateLimitPolicy : Tea.TeaModel {
        public var enabled: Bool?

        public var maxReceivesPerSecond: Int32?

        public override init() {
            super.init()
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
            if self.maxReceivesPerSecond != nil {
                map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                self.maxReceivesPerSecond = value
            }
        }
    }
    public var delaySeconds: Int64?

    public var dlqPolicy: SetQueueAttributesRequest.DlqPolicy?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var tenantRateLimitPolicy: SetQueueAttributesRequest.TenantRateLimitPolicy?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
        try self.tenantRateLimitPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tenantRateLimitPolicy != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DelaySeconds"] as? Int64 {
            self.delaySeconds = value
        }
        if let value = dict["DlqPolicy"] as? [String: Any?] {
            var model = SetQueueAttributesRequest.DlqPolicy()
            model.fromMap(value)
            self.dlqPolicy = model
        }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaximumMessageSize"] as? Int64 {
            self.maximumMessageSize = value
        }
        if let value = dict["MessageRetentionPeriod"] as? Int64 {
            self.messageRetentionPeriod = value
        }
        if let value = dict["PollingWaitSeconds"] as? Int64 {
            self.pollingWaitSeconds = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
            var model = SetQueueAttributesRequest.TenantRateLimitPolicy()
            model.fromMap(value)
            self.tenantRateLimitPolicy = model
        }
        if let value = dict["VisibilityTimeout"] as? Int64 {
            self.visibilityTimeout = value
        }
    }
}

public class SetQueueAttributesShrinkRequest : Tea.TeaModel {
    public var delaySeconds: Int64?

    public var dlqPolicyShrink: String?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

    public var tenantRateLimitPolicyShrink: String?

    public var visibilityTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delaySeconds != nil {
            map["DelaySeconds"] = self.delaySeconds!
        }
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maximumMessageSize != nil {
            map["MaximumMessageSize"] = self.maximumMessageSize!
        }
        if self.messageRetentionPeriod != nil {
            map["MessageRetentionPeriod"] = self.messageRetentionPeriod!
        }
        if self.pollingWaitSeconds != nil {
            map["PollingWaitSeconds"] = self.pollingWaitSeconds!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.tenantRateLimitPolicyShrink != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicyShrink!
        }
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DelaySeconds"] as? Int64 {
            self.delaySeconds = value
        }
        if let value = dict["DlqPolicy"] as? String {
            self.dlqPolicyShrink = value
        }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaximumMessageSize"] as? Int64 {
            self.maximumMessageSize = value
        }
        if let value = dict["MessageRetentionPeriod"] as? Int64 {
            self.messageRetentionPeriod = value
        }
        if let value = dict["PollingWaitSeconds"] as? Int64 {
            self.pollingWaitSeconds = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? String {
            self.tenantRateLimitPolicyShrink = value
        }
        if let value = dict["VisibilityTimeout"] as? Int64 {
            self.visibilityTimeout = value
        }
    }
}

public class SetQueueAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: SetQueueAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SetQueueAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetQueueAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetQueueAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetQueueAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSubscriptionAttributesRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

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
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadLetterTargetQueue"] as? String {
                self.deadLetterTargetQueue = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
        }
    }
    public class TenantRateLimitPolicy : Tea.TeaModel {
        public var enabled: Bool?

        public var maxReceivesPerSecond: Int32?

        public override init() {
            super.init()
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
            if self.maxReceivesPerSecond != nil {
                map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                self.maxReceivesPerSecond = value
            }
        }
    }
    public var dlqPolicy: SetSubscriptionAttributesRequest.DlqPolicy?

    public var notifyStrategy: String?

    public var stsRoleArn: String?

    public var subscriptionName: String?

    public var tenantRateLimitPolicy: SetSubscriptionAttributesRequest.TenantRateLimitPolicy?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
        try self.tenantRateLimitPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.stsRoleArn != nil {
            map["StsRoleArn"] = self.stsRoleArn!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.tenantRateLimitPolicy != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DlqPolicy"] as? [String: Any?] {
            var model = SetSubscriptionAttributesRequest.DlqPolicy()
            model.fromMap(value)
            self.dlqPolicy = model
        }
        if let value = dict["NotifyStrategy"] as? String {
            self.notifyStrategy = value
        }
        if let value = dict["StsRoleArn"] as? String {
            self.stsRoleArn = value
        }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
            var model = SetSubscriptionAttributesRequest.TenantRateLimitPolicy()
            model.fromMap(value)
            self.tenantRateLimitPolicy = model
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class SetSubscriptionAttributesShrinkRequest : Tea.TeaModel {
    public var dlqPolicyShrink: String?

    public var notifyStrategy: String?

    public var stsRoleArn: String?

    public var subscriptionName: String?

    public var tenantRateLimitPolicyShrink: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.stsRoleArn != nil {
            map["StsRoleArn"] = self.stsRoleArn!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.tenantRateLimitPolicyShrink != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicyShrink!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DlqPolicy"] as? String {
            self.dlqPolicyShrink = value
        }
        if let value = dict["NotifyStrategy"] as? String {
            self.notifyStrategy = value
        }
        if let value = dict["StsRoleArn"] as? String {
            self.stsRoleArn = value
        }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? String {
            self.tenantRateLimitPolicyShrink = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class SetSubscriptionAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: SetSubscriptionAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SetSubscriptionAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetSubscriptionAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSubscriptionAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetSubscriptionAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetTopicAttributesRequest : Tea.TeaModel {
    public var enableLogging: Bool?

    public var maxMessageSize: Int64?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableLogging != nil {
            map["EnableLogging"] = self.enableLogging!
        }
        if self.maxMessageSize != nil {
            map["MaxMessageSize"] = self.maxMessageSize!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableLogging"] as? Bool {
            self.enableLogging = value
        }
        if let value = dict["MaxMessageSize"] as? Int64 {
            self.maxMessageSize = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class SetTopicAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: SetTopicAttributesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SetTopicAttributesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetTopicAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTopicAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetTopicAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubscribeRequest : Tea.TeaModel {
    public class DlqPolicy : Tea.TeaModel {
        public var deadLetterTargetQueue: String?

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
            if self.deadLetterTargetQueue != nil {
                map["DeadLetterTargetQueue"] = self.deadLetterTargetQueue!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadLetterTargetQueue"] as? String {
                self.deadLetterTargetQueue = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
        }
    }
    public class DmAttributes : Tea.TeaModel {
        public var accountName: String?

        public var subject: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
        }
    }
    public class DysmsAttributes : Tea.TeaModel {
        public var signName: String?

        public var templateCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.signName != nil {
                map["SignName"] = self.signName!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SignName"] as? String {
                self.signName = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
        }
    }
    public class KafkaAttributes : Tea.TeaModel {
        public var businessMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessMode != nil {
                map["BusinessMode"] = self.businessMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessMode"] as? String {
                self.businessMode = value
            }
        }
    }
    public class TenantRateLimitPolicy : Tea.TeaModel {
        public var enabled: Bool?

        public var maxReceivesPerSecond: Int32?

        public override init() {
            super.init()
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
            if self.maxReceivesPerSecond != nil {
                map["MaxReceivesPerSecond"] = self.maxReceivesPerSecond!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["MaxReceivesPerSecond"] as? Int32 {
                self.maxReceivesPerSecond = value
            }
        }
    }
    public var dlqPolicy: SubscribeRequest.DlqPolicy?

    public var dmAttributes: SubscribeRequest.DmAttributes?

    public var dysmsAttributes: SubscribeRequest.DysmsAttributes?

    public var endpoint: String?

    public var kafkaAttributes: SubscribeRequest.KafkaAttributes?

    public var messageTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public var pushType: String?

    public var stsRoleArn: String?

    public var subscriptionName: String?

    public var tenantRateLimitPolicy: SubscribeRequest.TenantRateLimitPolicy?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlqPolicy?.validate()
        try self.dmAttributes?.validate()
        try self.dysmsAttributes?.validate()
        try self.kafkaAttributes?.validate()
        try self.tenantRateLimitPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicy != nil {
            map["DlqPolicy"] = self.dlqPolicy?.toMap()
        }
        if self.dmAttributes != nil {
            map["DmAttributes"] = self.dmAttributes?.toMap()
        }
        if self.dysmsAttributes != nil {
            map["DysmsAttributes"] = self.dysmsAttributes?.toMap()
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.kafkaAttributes != nil {
            map["KafkaAttributes"] = self.kafkaAttributes?.toMap()
        }
        if self.messageTag != nil {
            map["MessageTag"] = self.messageTag!
        }
        if self.notifyContentFormat != nil {
            map["NotifyContentFormat"] = self.notifyContentFormat!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.stsRoleArn != nil {
            map["StsRoleArn"] = self.stsRoleArn!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.tenantRateLimitPolicy != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicy?.toMap()
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DlqPolicy"] as? [String: Any?] {
            var model = SubscribeRequest.DlqPolicy()
            model.fromMap(value)
            self.dlqPolicy = model
        }
        if let value = dict["DmAttributes"] as? [String: Any?] {
            var model = SubscribeRequest.DmAttributes()
            model.fromMap(value)
            self.dmAttributes = model
        }
        if let value = dict["DysmsAttributes"] as? [String: Any?] {
            var model = SubscribeRequest.DysmsAttributes()
            model.fromMap(value)
            self.dysmsAttributes = model
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["KafkaAttributes"] as? [String: Any?] {
            var model = SubscribeRequest.KafkaAttributes()
            model.fromMap(value)
            self.kafkaAttributes = model
        }
        if let value = dict["MessageTag"] as? String {
            self.messageTag = value
        }
        if let value = dict["NotifyContentFormat"] as? String {
            self.notifyContentFormat = value
        }
        if let value = dict["NotifyStrategy"] as? String {
            self.notifyStrategy = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["StsRoleArn"] as? String {
            self.stsRoleArn = value
        }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? [String: Any?] {
            var model = SubscribeRequest.TenantRateLimitPolicy()
            model.fromMap(value)
            self.tenantRateLimitPolicy = model
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class SubscribeShrinkRequest : Tea.TeaModel {
    public var dlqPolicyShrink: String?

    public var dmAttributesShrink: String?

    public var dysmsAttributesShrink: String?

    public var endpoint: String?

    public var kafkaAttributesShrink: String?

    public var messageTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public var pushType: String?

    public var stsRoleArn: String?

    public var subscriptionName: String?

    public var tenantRateLimitPolicyShrink: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlqPolicyShrink != nil {
            map["DlqPolicy"] = self.dlqPolicyShrink!
        }
        if self.dmAttributesShrink != nil {
            map["DmAttributes"] = self.dmAttributesShrink!
        }
        if self.dysmsAttributesShrink != nil {
            map["DysmsAttributes"] = self.dysmsAttributesShrink!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.kafkaAttributesShrink != nil {
            map["KafkaAttributes"] = self.kafkaAttributesShrink!
        }
        if self.messageTag != nil {
            map["MessageTag"] = self.messageTag!
        }
        if self.notifyContentFormat != nil {
            map["NotifyContentFormat"] = self.notifyContentFormat!
        }
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.stsRoleArn != nil {
            map["StsRoleArn"] = self.stsRoleArn!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.tenantRateLimitPolicyShrink != nil {
            map["TenantRateLimitPolicy"] = self.tenantRateLimitPolicyShrink!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DlqPolicy"] as? String {
            self.dlqPolicyShrink = value
        }
        if let value = dict["DmAttributes"] as? String {
            self.dmAttributesShrink = value
        }
        if let value = dict["DysmsAttributes"] as? String {
            self.dysmsAttributesShrink = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["KafkaAttributes"] as? String {
            self.kafkaAttributesShrink = value
        }
        if let value = dict["MessageTag"] as? String {
            self.messageTag = value
        }
        if let value = dict["NotifyContentFormat"] as? String {
            self.notifyContentFormat = value
        }
        if let value = dict["NotifyStrategy"] as? String {
            self.notifyStrategy = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["StsRoleArn"] as? String {
            self.stsRoleArn = value
        }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TenantRateLimitPolicy"] as? String {
            self.tenantRateLimitPolicyShrink = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class SubscribeResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubscribeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnsubscribeRequest : Tea.TeaModel {
    public var subscriptionName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SubscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class UnsubscribeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: Int64?

    public var data: UnsubscribeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UnsubscribeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UnsubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnsubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnsubscribeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
