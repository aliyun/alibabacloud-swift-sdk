import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataLiteTopicLagMapValue : Tea.TeaModel {
    public var readyCount: Int64?

    public var deliveryDuration: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.readyCount != nil {
            map["readyCount"] = self.readyCount!
        }
        if self.deliveryDuration != nil {
            map["deliveryDuration"] = self.deliveryDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["readyCount"] as? Int64 {
            self.readyCount = value
        }
        if let value = dict["deliveryDuration"] as? Int64 {
            self.deliveryDuration = value
        }
    }
}

public class DataTopicLagMapValue : Tea.TeaModel {
    public var readyCount: Int64?

    public var inflightCount: Int64?

    public var deliveryDuration: Int64?

    public var lastConsumeTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.readyCount != nil {
            map["readyCount"] = self.readyCount!
        }
        if self.inflightCount != nil {
            map["inflightCount"] = self.inflightCount!
        }
        if self.deliveryDuration != nil {
            map["deliveryDuration"] = self.deliveryDuration!
        }
        if self.lastConsumeTimestamp != nil {
            map["lastConsumeTimestamp"] = self.lastConsumeTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["readyCount"] as? Int64 {
            self.readyCount = value
        }
        if let value = dict["inflightCount"] as? Int64 {
            self.inflightCount = value
        }
        if let value = dict["deliveryDuration"] as? Int64 {
            self.deliveryDuration = value
        }
        if let value = dict["lastConsumeTimestamp"] as? Int64 {
            self.lastConsumeTimestamp = value
        }
    }
}

public class AddDisasterRecoveryItemRequest : Tea.TeaModel {
    public class Topics : Tea.TeaModel {
        public var consumerGroupId: String?

        public var deliveryOrderType: String?

        public var instanceId: String?

        public var instanceType: String?

        public var regionId: String?

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
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.deliveryOrderType != nil {
                map["deliveryOrderType"] = self.deliveryOrderType!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["deliveryOrderType"] as? String {
                self.deliveryOrderType = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var topics: [AddDisasterRecoveryItemRequest.Topics]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.topics != nil {
            var tmp : [Any] = []
            for k in self.topics! {
                tmp.append(k.toMap())
            }
            map["topics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["topics"] as? [Any?] {
            var tmp : [AddDisasterRecoveryItemRequest.Topics] = []
            for v in value {
                if v != nil {
                    var model = AddDisasterRecoveryItemRequest.Topics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topics = tmp
        }
    }
}

public class AddDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Int64?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
        public var deadLetterTargetTopic: String?

        public var fixedIntervalRetryTime: Int32?

        public var maxRetryTimes: Int32?

        public var retryPolicy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetTopic != nil {
                map["deadLetterTargetTopic"] = self.deadLetterTargetTopic!
            }
            if self.fixedIntervalRetryTime != nil {
                map["fixedIntervalRetryTime"] = self.fixedIntervalRetryTime!
            }
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deadLetterTargetTopic"] as? String {
                self.deadLetterTargetTopic = value
            }
            if let value = dict["fixedIntervalRetryTime"] as? Int32 {
                self.fixedIntervalRetryTime = value
            }
            if let value = dict["maxRetryTimes"] as? Int32 {
                self.maxRetryTimes = value
            }
            if let value = dict["retryPolicy"] as? String {
                self.retryPolicy = value
            }
        }
    }
    public var consumeRetryPolicy: CreateConsumerGroupRequest.ConsumeRetryPolicy?

    public var deliveryOrderType: String?

    public var maxReceiveTps: Int64?

    public var messageModel: String?

    public var remark: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.consumeRetryPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumeRetryPolicy != nil {
            map["consumeRetryPolicy"] = self.consumeRetryPolicy?.toMap()
        }
        if self.deliveryOrderType != nil {
            map["deliveryOrderType"] = self.deliveryOrderType!
        }
        if self.maxReceiveTps != nil {
            map["maxReceiveTps"] = self.maxReceiveTps!
        }
        if self.messageModel != nil {
            map["messageModel"] = self.messageModel!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.topicName != nil {
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumeRetryPolicy"] as? [String: Any?] {
            var model = CreateConsumerGroupRequest.ConsumeRetryPolicy()
            model.fromMap(value)
            self.consumeRetryPolicy = model
        }
        if let value = dict["deliveryOrderType"] as? String {
            self.deliveryOrderType = value
        }
        if let value = dict["maxReceiveTps"] as? Int64 {
            self.maxReceiveTps = value
        }
        if let value = dict["messageModel"] as? String {
            self.messageModel = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class CreateConsumerGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDisasterRecoveryPlanRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class MessageProperty : Tea.TeaModel {
            public var propertyKey: String?

            public var propertyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.propertyKey != nil {
                    map["propertyKey"] = self.propertyKey!
                }
                if self.propertyValue != nil {
                    map["propertyValue"] = self.propertyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["propertyKey"] as? String {
                    self.propertyKey = value
                }
                if let value = dict["propertyValue"] as? String {
                    self.propertyValue = value
                }
            }
        }
        public var authType: String?

        public var consumerGroupId: String?

        public var endpointUrl: String?

        public var instanceId: String?

        public var instanceRole: String?

        public var instanceType: String?

        public var messageProperty: CreateDisasterRecoveryPlanRequest.Instances.MessageProperty?

        public var networkType: String?

        public var password: String?

        public var regionId: String?

        public var securityGroupId: String?

        public var username: String?

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
            try self.messageProperty?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authType != nil {
                map["authType"] = self.authType!
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.endpointUrl != nil {
                map["endpointUrl"] = self.endpointUrl!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceRole != nil {
                map["instanceRole"] = self.instanceRole!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.messageProperty != nil {
                map["messageProperty"] = self.messageProperty?.toMap()
            }
            if self.networkType != nil {
                map["networkType"] = self.networkType!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.username != nil {
                map["username"] = self.username!
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
            if let value = dict["authType"] as? String {
                self.authType = value
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["endpointUrl"] as? String {
                self.endpointUrl = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceRole"] as? String {
                self.instanceRole = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["messageProperty"] as? [String: Any?] {
                var model = CreateDisasterRecoveryPlanRequest.Instances.MessageProperty()
                model.fromMap(value)
                self.messageProperty = model
            }
            if let value = dict["networkType"] as? String {
                self.networkType = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
            if let value = dict["vSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var autoSyncCheckpoint: Bool?

    public var instances: [CreateDisasterRecoveryPlanRequest.Instances]?

    public var planDesc: String?

    public var planName: String?

    public var planType: String?

    public var syncCheckpointEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSyncCheckpoint != nil {
            map["autoSyncCheckpoint"] = self.autoSyncCheckpoint!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        if self.planDesc != nil {
            map["planDesc"] = self.planDesc!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.planType != nil {
            map["planType"] = self.planType!
        }
        if self.syncCheckpointEnabled != nil {
            map["syncCheckpointEnabled"] = self.syncCheckpointEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSyncCheckpoint"] as? Bool {
            self.autoSyncCheckpoint = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [CreateDisasterRecoveryPlanRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = CreateDisasterRecoveryPlanRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["planDesc"] as? String {
            self.planDesc = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["planType"] as? String {
            self.planType = value
        }
        if let value = dict["syncCheckpointEnabled"] as? Bool {
            self.syncCheckpointEnabled = value
        }
    }
}

public class CreateDisasterRecoveryPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Int64?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDisasterRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDisasterRecoveryPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDisasterRecoveryPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class AclInfo : Tea.TeaModel {
        public var defaultVpcAuthFree: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultVpcAuthFree != nil {
                map["defaultVpcAuthFree"] = self.defaultVpcAuthFree!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["defaultVpcAuthFree"] as? Bool {
                self.defaultVpcAuthFree = value
            }
        }
    }
    public class NetworkInfo : Tea.TeaModel {
        public class InternetInfo : Tea.TeaModel {
            public var flowOutBandwidth: Int32?

            public var flowOutType: String?

            public var internetSpec: String?

            public var ipWhitelist: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flowOutBandwidth != nil {
                    map["flowOutBandwidth"] = self.flowOutBandwidth!
                }
                if self.flowOutType != nil {
                    map["flowOutType"] = self.flowOutType!
                }
                if self.internetSpec != nil {
                    map["internetSpec"] = self.internetSpec!
                }
                if self.ipWhitelist != nil {
                    map["ipWhitelist"] = self.ipWhitelist!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["flowOutBandwidth"] as? Int32 {
                    self.flowOutBandwidth = value
                }
                if let value = dict["flowOutType"] as? String {
                    self.flowOutType = value
                }
                if let value = dict["internetSpec"] as? String {
                    self.internetSpec = value
                }
                if let value = dict["ipWhitelist"] as? [String] {
                    self.ipWhitelist = value
                }
            }
        }
        public class VpcInfo : Tea.TeaModel {
            public class VSwitches : Tea.TeaModel {
                public var vSwitchId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vSwitchId != nil {
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["vSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                }
            }
            public var securityGroupIds: String?

            public var vSwitchId: String?

            public var vSwitches: [CreateInstanceRequest.NetworkInfo.VpcInfo.VSwitches]?

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
                if self.securityGroupIds != nil {
                    map["securityGroupIds"] = self.securityGroupIds!
                }
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                if self.vSwitches != nil {
                    var tmp : [Any] = []
                    for k in self.vSwitches! {
                        tmp.append(k.toMap())
                    }
                    map["vSwitches"] = tmp
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["securityGroupIds"] as? String {
                    self.securityGroupIds = value
                }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["vSwitches"] as? [Any?] {
                    var tmp : [CreateInstanceRequest.NetworkInfo.VpcInfo.VSwitches] = []
                    for v in value {
                        if v != nil {
                            var model = CreateInstanceRequest.NetworkInfo.VpcInfo.VSwitches()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vSwitches = tmp
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var internetInfo: CreateInstanceRequest.NetworkInfo.InternetInfo?

        public var vpcInfo: CreateInstanceRequest.NetworkInfo.VpcInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.internetInfo?.validate()
            try self.vpcInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.internetInfo != nil {
                map["internetInfo"] = self.internetInfo?.toMap()
            }
            if self.vpcInfo != nil {
                map["vpcInfo"] = self.vpcInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["internetInfo"] as? [String: Any?] {
                var model = CreateInstanceRequest.NetworkInfo.InternetInfo()
                model.fromMap(value)
                self.internetInfo = model
            }
            if let value = dict["vpcInfo"] as? [String: Any?] {
                var model = CreateInstanceRequest.NetworkInfo.VpcInfo()
                model.fromMap(value)
                self.vpcInfo = model
            }
        }
    }
    public class ProductInfo : Tea.TeaModel {
        public var autoScaling: Bool?

        public var capacityType: String?

        public var messageRetentionTime: Int32?

        public var msgProcessSpec: String?

        public var provisionedCapacity: Int64?

        public var sendReceiveRatio: Double?

        public var storageEncryption: Bool?

        public var storageSecretKey: String?

        public var traceOn: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoScaling != nil {
                map["autoScaling"] = self.autoScaling!
            }
            if self.capacityType != nil {
                map["capacityType"] = self.capacityType!
            }
            if self.messageRetentionTime != nil {
                map["messageRetentionTime"] = self.messageRetentionTime!
            }
            if self.msgProcessSpec != nil {
                map["msgProcessSpec"] = self.msgProcessSpec!
            }
            if self.provisionedCapacity != nil {
                map["provisionedCapacity"] = self.provisionedCapacity!
            }
            if self.sendReceiveRatio != nil {
                map["sendReceiveRatio"] = self.sendReceiveRatio!
            }
            if self.storageEncryption != nil {
                map["storageEncryption"] = self.storageEncryption!
            }
            if self.storageSecretKey != nil {
                map["storageSecretKey"] = self.storageSecretKey!
            }
            if self.traceOn != nil {
                map["traceOn"] = self.traceOn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoScaling"] as? Bool {
                self.autoScaling = value
            }
            if let value = dict["capacityType"] as? String {
                self.capacityType = value
            }
            if let value = dict["messageRetentionTime"] as? Int32 {
                self.messageRetentionTime = value
            }
            if let value = dict["msgProcessSpec"] as? String {
                self.msgProcessSpec = value
            }
            if let value = dict["provisionedCapacity"] as? Int64 {
                self.provisionedCapacity = value
            }
            if let value = dict["sendReceiveRatio"] as? Double {
                self.sendReceiveRatio = value
            }
            if let value = dict["storageEncryption"] as? Bool {
                self.storageEncryption = value
            }
            if let value = dict["storageSecretKey"] as? String {
                self.storageSecretKey = value
            }
            if let value = dict["traceOn"] as? Bool {
                self.traceOn = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var aclInfo: CreateInstanceRequest.AclInfo?

    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var commodityCode: String?

    public var instanceName: String?

    public var networkInfo: CreateInstanceRequest.NetworkInfo?

    public var paymentType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var productInfo: CreateInstanceRequest.ProductInfo?

    public var remark: String?

    public var resourceGroupId: String?

    public var seriesCode: String?

    public var serviceCode: String?

    public var subSeriesCode: String?

    public var tags: [CreateInstanceRequest.Tags]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aclInfo?.validate()
        try self.networkInfo?.validate()
        try self.productInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclInfo != nil {
            map["aclInfo"] = self.aclInfo?.toMap()
        }
        if self.autoRenew != nil {
            map["autoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["autoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.commodityCode != nil {
            map["commodityCode"] = self.commodityCode!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.networkInfo != nil {
            map["networkInfo"] = self.networkInfo?.toMap()
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        if self.periodUnit != nil {
            map["periodUnit"] = self.periodUnit!
        }
        if self.productInfo != nil {
            map["productInfo"] = self.productInfo?.toMap()
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.seriesCode != nil {
            map["seriesCode"] = self.seriesCode!
        }
        if self.serviceCode != nil {
            map["serviceCode"] = self.serviceCode!
        }
        if self.subSeriesCode != nil {
            map["subSeriesCode"] = self.subSeriesCode!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aclInfo"] as? [String: Any?] {
            var model = CreateInstanceRequest.AclInfo()
            model.fromMap(value)
            self.aclInfo = model
        }
        if let value = dict["autoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["autoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["commodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["networkInfo"] as? [String: Any?] {
            var model = CreateInstanceRequest.NetworkInfo()
            model.fromMap(value)
            self.networkInfo = model
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["period"] as? Int32 {
            self.period = value
        }
        if let value = dict["periodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["productInfo"] as? [String: Any?] {
            var model = CreateInstanceRequest.ProductInfo()
            model.fromMap(value)
            self.productInfo = model
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["seriesCode"] as? String {
            self.seriesCode = value
        }
        if let value = dict["serviceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["subSeriesCode"] as? String {
            self.subSeriesCode = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceAccountRequest : Tea.TeaModel {
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

public class CreateInstanceAccountResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceAclRequest : Tea.TeaModel {
    public var actions: [String]?

    public var decision: String?

    public var ipWhitelists: [String]?

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
        if self.actions != nil {
            map["actions"] = self.actions!
        }
        if self.decision != nil {
            map["decision"] = self.decision!
        }
        if self.ipWhitelists != nil {
            map["ipWhitelists"] = self.ipWhitelists!
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
        if let value = dict["actions"] as? [String] {
            self.actions = value
        }
        if let value = dict["decision"] as? String {
            self.decision = value
        }
        if let value = dict["ipWhitelists"] as? [String] {
            self.ipWhitelists = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class CreateInstanceAclResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceIpWhitelistRequest : Tea.TeaModel {
    public var ipWhitelists: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhitelists != nil {
            map["ipWhitelists"] = self.ipWhitelists!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ipWhitelists"] as? [String] {
            self.ipWhitelists = value
        }
    }
}

public class CreateInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
    public var liteTopicExpiration: Int64?

    public var maxSendTps: Int64?

    public var messageType: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liteTopicExpiration != nil {
            map["liteTopicExpiration"] = self.liteTopicExpiration!
        }
        if self.maxSendTps != nil {
            map["maxSendTps"] = self.maxSendTps!
        }
        if self.messageType != nil {
            map["messageType"] = self.messageType!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["liteTopicExpiration"] as? Int64 {
            self.liteTopicExpiration = value
        }
        if let value = dict["maxSendTps"] as? Int64 {
            self.maxSendTps = value
        }
        if let value = dict["messageType"] as? String {
            self.messageType = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
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

public class DeleteConsumerGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConsumerGroupSubscriptionRequest : Tea.TeaModel {
    public var filterExpression: String?

    public var filterType: String?

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
        if self.filterExpression != nil {
            map["filterExpression"] = self.filterExpression!
        }
        if self.filterType != nil {
            map["filterType"] = self.filterType!
        }
        if self.topicName != nil {
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filterExpression"] as? String {
            self.filterExpression = value
        }
        if let value = dict["filterType"] as? String {
            self.filterType = value
        }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class DeleteConsumerGroupSubscriptionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteConsumerGroupSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConsumerGroupSubscriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteConsumerGroupSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDisasterRecoveryPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDisasterRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDisasterRecoveryPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDisasterRecoveryPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceAccountResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceAclRequest : Tea.TeaModel {
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
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DeleteInstanceAclResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInstanceAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceIpWhitelistRequest : Tea.TeaModel {
    public var ipWhitelist: String?

    public var ipWhitelists: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhitelist != nil {
            map["ipWhitelist"] = self.ipWhitelist!
        }
        if self.ipWhitelists != nil {
            map["ipWhitelists"] = self.ipWhitelists!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ipWhitelist"] as? String {
            self.ipWhitelist = value
        }
        if let value = dict["ipWhitelists"] as? [String] {
            self.ipWhitelists = value
        }
    }
}

public class DeleteInstanceIpWhitelistShrinkRequest : Tea.TeaModel {
    public var ipWhitelist: String?

    public var ipWhitelistsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhitelist != nil {
            map["ipWhitelist"] = self.ipWhitelist!
        }
        if self.ipWhitelistsShrink != nil {
            map["ipWhitelists"] = self.ipWhitelistsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ipWhitelist"] as? String {
            self.ipWhitelist = value
        }
        if let value = dict["ipWhitelists"] as? String {
            self.ipWhitelistsShrink = value
        }
    }
}

public class DeleteInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTopicResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
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

public class ExecuteMigrationOperationRequest : Tea.TeaModel {
    public class OperationParam : Tea.TeaModel {
        public var paramData: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramData != nil {
                map["paramData"] = self.paramData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["paramData"] as? Any {
                self.paramData = value
            }
        }
    }
    public var operationParam: ExecuteMigrationOperationRequest.OperationParam?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationParam != nil {
            map["operationParam"] = self.operationParam?.toMap()
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operationParam"] as? [String: Any?] {
            var model = ExecuteMigrationOperationRequest.OperationParam()
            model.fromMap(value)
            self.operationParam = model
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ExecuteMigrationOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OperationParam : Tea.TeaModel {
            public var paramData: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.paramData != nil {
                    map["paramData"] = self.paramData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["paramData"] as? Any {
                    self.paramData = value
                }
            }
        }
        public class OperationResult : Tea.TeaModel {
            public var resultData: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultData != nil {
                    map["resultData"] = self.resultData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["resultData"] as? Any {
                    self.resultData = value
                }
            }
        }
        public var businessStatus: String?

        public var createTime: String?

        public var migrationId: Int64?

        public var operationId: Int64?

        public var operationKey: String?

        public var operationParam: ExecuteMigrationOperationResponseBody.Data.OperationParam?

        public var operationResult: ExecuteMigrationOperationResponseBody.Data.OperationResult?

        public var operationStatus: String?

        public var operationType: String?

        public var stageType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operationParam?.validate()
            try self.operationResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessStatus != nil {
                map["businessStatus"] = self.businessStatus!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.migrationId != nil {
                map["migrationId"] = self.migrationId!
            }
            if self.operationId != nil {
                map["operationId"] = self.operationId!
            }
            if self.operationKey != nil {
                map["operationKey"] = self.operationKey!
            }
            if self.operationParam != nil {
                map["operationParam"] = self.operationParam?.toMap()
            }
            if self.operationResult != nil {
                map["operationResult"] = self.operationResult?.toMap()
            }
            if self.operationStatus != nil {
                map["operationStatus"] = self.operationStatus!
            }
            if self.operationType != nil {
                map["operationType"] = self.operationType!
            }
            if self.stageType != nil {
                map["stageType"] = self.stageType!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["businessStatus"] as? String {
                self.businessStatus = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["migrationId"] as? Int64 {
                self.migrationId = value
            }
            if let value = dict["operationId"] as? Int64 {
                self.operationId = value
            }
            if let value = dict["operationKey"] as? String {
                self.operationKey = value
            }
            if let value = dict["operationParam"] as? [String: Any?] {
                var model = ExecuteMigrationOperationResponseBody.Data.OperationParam()
                model.fromMap(value)
                self.operationParam = model
            }
            if let value = dict["operationResult"] as? [String: Any?] {
                var model = ExecuteMigrationOperationResponseBody.Data.OperationResult()
                model.fromMap(value)
                self.operationResult = model
            }
            if let value = dict["operationStatus"] as? String {
                self.operationStatus = value
            }
            if let value = dict["operationType"] as? String {
                self.operationType = value
            }
            if let value = dict["stageType"] as? String {
                self.stageType = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: ExecuteMigrationOperationResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteMigrationOperationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteMigrationOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteMigrationOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecuteMigrationOperationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FinishMigrationStageRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class FinishMigrationStageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class FinishMigrationStageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FinishMigrationStageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FinishMigrationStageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumeTimespanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consumeTimestamp: Int64?

        public var consumerGroupId: String?

        public var instanceId: String?

        public var maxTimestamp: Int64?

        public var minTimestamp: Int64?

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
            if self.consumeTimestamp != nil {
                map["consumeTimestamp"] = self.consumeTimestamp!
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.maxTimestamp != nil {
                map["maxTimestamp"] = self.maxTimestamp!
            }
            if self.minTimestamp != nil {
                map["minTimestamp"] = self.minTimestamp!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumeTimestamp"] as? Int64 {
                self.consumeTimestamp = value
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["maxTimestamp"] as? Int64 {
                self.maxTimestamp = value
            }
            if let value = dict["minTimestamp"] as? Int64 {
                self.minTimestamp = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var code: String?

    public var data: GetConsumeTimespanResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetConsumeTimespanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumeTimespanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumeTimespanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumeTimespanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConsumeRetryPolicy : Tea.TeaModel {
            public var deadLetterTargetTopic: String?

            public var fixedIntervalRetryTime: Int32?

            public var maxRetryTimes: Int32?

            public var retryPolicy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deadLetterTargetTopic != nil {
                    map["deadLetterTargetTopic"] = self.deadLetterTargetTopic!
                }
                if self.fixedIntervalRetryTime != nil {
                    map["fixedIntervalRetryTime"] = self.fixedIntervalRetryTime!
                }
                if self.maxRetryTimes != nil {
                    map["maxRetryTimes"] = self.maxRetryTimes!
                }
                if self.retryPolicy != nil {
                    map["retryPolicy"] = self.retryPolicy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["deadLetterTargetTopic"] as? String {
                    self.deadLetterTargetTopic = value
                }
                if let value = dict["fixedIntervalRetryTime"] as? Int32 {
                    self.fixedIntervalRetryTime = value
                }
                if let value = dict["maxRetryTimes"] as? Int32 {
                    self.maxRetryTimes = value
                }
                if let value = dict["retryPolicy"] as? String {
                    self.retryPolicy = value
                }
            }
        }
        public var consumeRetryPolicy: GetConsumerGroupResponseBody.Data.ConsumeRetryPolicy?

        public var consumerGroupId: String?

        public var createTime: String?

        public var deliveryOrderType: String?

        public var instanceId: String?

        public var maxReceiveTps: Int64?

        public var messageModel: String?

        public var regionId: String?

        public var remark: String?

        public var status: String?

        public var topicName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.consumeRetryPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumeRetryPolicy != nil {
                map["consumeRetryPolicy"] = self.consumeRetryPolicy?.toMap()
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.deliveryOrderType != nil {
                map["deliveryOrderType"] = self.deliveryOrderType!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.maxReceiveTps != nil {
                map["maxReceiveTps"] = self.maxReceiveTps!
            }
            if self.messageModel != nil {
                map["messageModel"] = self.messageModel!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumeRetryPolicy"] as? [String: Any?] {
                var model = GetConsumerGroupResponseBody.Data.ConsumeRetryPolicy()
                model.fromMap(value)
                self.consumeRetryPolicy = model
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["deliveryOrderType"] as? String {
                self.deliveryOrderType = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["maxReceiveTps"] as? Int64 {
                self.maxReceiveTps = value
            }
            if let value = dict["messageModel"] as? String {
                self.messageModel = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: GetConsumerGroupResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetConsumerGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerGroupLagRequest : Tea.TeaModel {
    public var liteTopicName: String?

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
        if self.liteTopicName != nil {
            map["liteTopicName"] = self.liteTopicName!
        }
        if self.topicName != nil {
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["liteTopicName"] as? String {
            self.liteTopicName = value
        }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetConsumerGroupLagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TotalLag : Tea.TeaModel {
            public var deliveryDuration: Int64?

            public var inflightCount: Int64?

            public var lastConsumeTimestamp: Int64?

            public var readyCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deliveryDuration != nil {
                    map["deliveryDuration"] = self.deliveryDuration!
                }
                if self.inflightCount != nil {
                    map["inflightCount"] = self.inflightCount!
                }
                if self.lastConsumeTimestamp != nil {
                    map["lastConsumeTimestamp"] = self.lastConsumeTimestamp!
                }
                if self.readyCount != nil {
                    map["readyCount"] = self.readyCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["deliveryDuration"] as? Int64 {
                    self.deliveryDuration = value
                }
                if let value = dict["inflightCount"] as? Int64 {
                    self.inflightCount = value
                }
                if let value = dict["lastConsumeTimestamp"] as? Int64 {
                    self.lastConsumeTimestamp = value
                }
                if let value = dict["readyCount"] as? Int64 {
                    self.readyCount = value
                }
            }
        }
        public var consumerGroupId: String?

        public var instanceId: String?

        public var liteTopicLagMap: [String: DataLiteTopicLagMapValue]?

        public var regionId: String?

        public var topicLagMap: [String: DataTopicLagMapValue]?

        public var topicName: String?

        public var totalLag: GetConsumerGroupLagResponseBody.Data.TotalLag?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalLag?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.liteTopicLagMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.liteTopicLagMap! {
                    tmp[k] = v.toMap()
                }
                map["liteTopicLagMap"] = tmp
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.topicLagMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.topicLagMap! {
                    tmp[k] = v.toMap()
                }
                map["topicLagMap"] = tmp
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            if self.totalLag != nil {
                map["totalLag"] = self.totalLag?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["liteTopicLagMap"] as? [String: Any?] {
                var tmp : [String: DataLiteTopicLagMapValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = DataLiteTopicLagMapValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.liteTopicLagMap = tmp
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["topicLagMap"] as? [String: Any?] {
                var tmp : [String: DataTopicLagMapValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = DataTopicLagMapValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.topicLagMap = tmp
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
            if let value = dict["totalLag"] as? [String: Any?] {
                var model = GetConsumerGroupLagResponseBody.Data.TotalLag()
                model.fromMap(value)
                self.totalLag = model
            }
        }
    }
    public var code: String?

    public var data: GetConsumerGroupLagResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetConsumerGroupLagResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumerGroupLagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerGroupLagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerGroupLagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerGroupSubscriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectionDTO : Tea.TeaModel {
            public var clientId: String?

            public var egressIp: String?

            public var hostname: String?

            public var language: String?

            public var messageModel: String?

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
                if self.clientId != nil {
                    map["clientId"] = self.clientId!
                }
                if self.egressIp != nil {
                    map["egressIp"] = self.egressIp!
                }
                if self.hostname != nil {
                    map["hostname"] = self.hostname!
                }
                if self.language != nil {
                    map["language"] = self.language!
                }
                if self.messageModel != nil {
                    map["messageModel"] = self.messageModel!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["egressIp"] as? String {
                    self.egressIp = value
                }
                if let value = dict["hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["language"] as? String {
                    self.language = value
                }
                if let value = dict["messageModel"] as? String {
                    self.messageModel = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubscriptionDTO : Tea.TeaModel {
            public var consumerGroupId: String?

            public var filterExpression: String?

            public var filterExpressionType: String?

            public var messageModel: String?

            public var subscriptionStatus: String?

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
                if self.consumerGroupId != nil {
                    map["consumerGroupId"] = self.consumerGroupId!
                }
                if self.filterExpression != nil {
                    map["filterExpression"] = self.filterExpression!
                }
                if self.filterExpressionType != nil {
                    map["filterExpressionType"] = self.filterExpressionType!
                }
                if self.messageModel != nil {
                    map["messageModel"] = self.messageModel!
                }
                if self.subscriptionStatus != nil {
                    map["subscriptionStatus"] = self.subscriptionStatus!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["consumerGroupId"] as? String {
                    self.consumerGroupId = value
                }
                if let value = dict["filterExpression"] as? String {
                    self.filterExpression = value
                }
                if let value = dict["filterExpressionType"] as? String {
                    self.filterExpressionType = value
                }
                if let value = dict["messageModel"] as? String {
                    self.messageModel = value
                }
                if let value = dict["subscriptionStatus"] as? String {
                    self.subscriptionStatus = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
            }
        }
        public var connectionDTO: GetConsumerGroupSubscriptionResponseBody.Data.ConnectionDTO?

        public var subscriptionDTO: GetConsumerGroupSubscriptionResponseBody.Data.SubscriptionDTO?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.connectionDTO?.validate()
            try self.subscriptionDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionDTO != nil {
                map["connectionDTO"] = self.connectionDTO?.toMap()
            }
            if self.subscriptionDTO != nil {
                map["subscriptionDTO"] = self.subscriptionDTO?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["connectionDTO"] as? [String: Any?] {
                var model = GetConsumerGroupSubscriptionResponseBody.Data.ConnectionDTO()
                model.fromMap(value)
                self.connectionDTO = model
            }
            if let value = dict["subscriptionDTO"] as? [String: Any?] {
                var model = GetConsumerGroupSubscriptionResponseBody.Data.SubscriptionDTO()
                model.fromMap(value)
                self.subscriptionDTO = model
            }
        }
    }
    public var code: String?

    public var data: [GetConsumerGroupSubscriptionResponseBody.Data]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetConsumerGroupSubscriptionResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetConsumerGroupSubscriptionResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumerGroupSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerGroupSubscriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerGroupSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerStackRequest : Tea.TeaModel {
    public var clientId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? String {
            self.clientId = value
        }
    }
}

public class GetConsumerStackResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Stacks : Tea.TeaModel {
            public var thread: String?

            public var tracks: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.thread != nil {
                    map["thread"] = self.thread!
                }
                if self.tracks != nil {
                    map["tracks"] = self.tracks!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["thread"] as? String {
                    self.thread = value
                }
                if let value = dict["tracks"] as? [String] {
                    self.tracks = value
                }
            }
        }
        public var consumerGroupId: String?

        public var instanceId: String?

        public var regionId: String?

        public var stacks: [GetConsumerStackResponseBody.Data.Stacks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.stacks != nil {
                var tmp : [Any] = []
                for k in self.stacks! {
                    tmp.append(k.toMap())
                }
                map["stacks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["stacks"] as? [Any?] {
                var tmp : [GetConsumerStackResponseBody.Data.Stacks] = []
                for v in value {
                    if v != nil {
                        var model = GetConsumerStackResponseBody.Data.Stacks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.stacks = tmp
            }
        }
    }
    public var code: String?

    public var data: GetConsumerStackResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetConsumerStackResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumerStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerStackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerStackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Topics : Tea.TeaModel {
            public var consumerGroupId: String?

            public var deliveryOrderType: String?

            public var instanceId: String?

            public var instanceType: String?

            public var regionId: String?

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
                if self.consumerGroupId != nil {
                    map["consumerGroupId"] = self.consumerGroupId!
                }
                if self.deliveryOrderType != nil {
                    map["deliveryOrderType"] = self.deliveryOrderType!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["instanceType"] = self.instanceType!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["consumerGroupId"] as? String {
                    self.consumerGroupId = value
                }
                if let value = dict["deliveryOrderType"] as? String {
                    self.deliveryOrderType = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["instanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
            }
        }
        public var createTime: String?

        public var extInfo: [String: String]?

        public var itemId: Int64?

        public var itemStatus: String?

        public var planId: Int64?

        public var topics: [GetDisasterRecoveryItemResponseBody.Data.Topics]?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.extInfo != nil {
                map["extInfo"] = self.extInfo!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemStatus != nil {
                map["itemStatus"] = self.itemStatus!
            }
            if self.planId != nil {
                map["planId"] = self.planId!
            }
            if self.topics != nil {
                var tmp : [Any] = []
                for k in self.topics! {
                    tmp.append(k.toMap())
                }
                map["topics"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["extInfo"] as? [String: String] {
                self.extInfo = value
            }
            if let value = dict["itemId"] as? Int64 {
                self.itemId = value
            }
            if let value = dict["itemStatus"] as? String {
                self.itemStatus = value
            }
            if let value = dict["planId"] as? Int64 {
                self.planId = value
            }
            if let value = dict["topics"] as? [Any?] {
                var tmp : [GetDisasterRecoveryItemResponseBody.Data.Topics] = []
                for v in value {
                    if v != nil {
                        var model = GetDisasterRecoveryItemResponseBody.Data.Topics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topics = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetDisasterRecoveryItemResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDisasterRecoveryItemResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDisasterRecoveryPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class MessageProperty : Tea.TeaModel {
                public var propertyKey: String?

                public var propertyValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyKey != nil {
                        map["propertyKey"] = self.propertyKey!
                    }
                    if self.propertyValue != nil {
                        map["propertyValue"] = self.propertyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["propertyKey"] as? String {
                        self.propertyKey = value
                    }
                    if let value = dict["propertyValue"] as? String {
                        self.propertyValue = value
                    }
                }
            }
            public var authType: String?

            public var consumerGroupId: String?

            public var endpointUrl: String?

            public var instanceId: String?

            public var instanceRole: String?

            public var instanceType: String?

            public var messageProperty: GetDisasterRecoveryPlanResponseBody.Data.Instances.MessageProperty?

            public var networkType: String?

            public var password: String?

            public var regionId: String?

            public var securityGroupId: String?

            public var username: String?

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
                try self.messageProperty?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.consumerGroupId != nil {
                    map["consumerGroupId"] = self.consumerGroupId!
                }
                if self.endpointUrl != nil {
                    map["endpointUrl"] = self.endpointUrl!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.instanceRole != nil {
                    map["instanceRole"] = self.instanceRole!
                }
                if self.instanceType != nil {
                    map["instanceType"] = self.instanceType!
                }
                if self.messageProperty != nil {
                    map["messageProperty"] = self.messageProperty?.toMap()
                }
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.password != nil {
                    map["password"] = self.password!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.username != nil {
                    map["username"] = self.username!
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
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["consumerGroupId"] as? String {
                    self.consumerGroupId = value
                }
                if let value = dict["endpointUrl"] as? String {
                    self.endpointUrl = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["instanceRole"] as? String {
                    self.instanceRole = value
                }
                if let value = dict["instanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["messageProperty"] as? [String: Any?] {
                    var model = GetDisasterRecoveryPlanResponseBody.Data.Instances.MessageProperty()
                    model.fromMap(value)
                    self.messageProperty = model
                }
                if let value = dict["networkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["password"] as? String {
                    self.password = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["securityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["username"] as? String {
                    self.username = value
                }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var autoSyncCheckpoint: Bool?

        public var createTime: String?

        public var extInfo: [String: String]?

        public var instances: [GetDisasterRecoveryPlanResponseBody.Data.Instances]?

        public var planDesc: String?

        public var planId: Int64?

        public var planName: String?

        public var planStatus: String?

        public var planType: String?

        public var syncCheckpointEnabled: Bool?

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
            if self.autoSyncCheckpoint != nil {
                map["autoSyncCheckpoint"] = self.autoSyncCheckpoint!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.extInfo != nil {
                map["extInfo"] = self.extInfo!
            }
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["instances"] = tmp
            }
            if self.planDesc != nil {
                map["planDesc"] = self.planDesc!
            }
            if self.planId != nil {
                map["planId"] = self.planId!
            }
            if self.planName != nil {
                map["planName"] = self.planName!
            }
            if self.planStatus != nil {
                map["planStatus"] = self.planStatus!
            }
            if self.planType != nil {
                map["planType"] = self.planType!
            }
            if self.syncCheckpointEnabled != nil {
                map["syncCheckpointEnabled"] = self.syncCheckpointEnabled!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoSyncCheckpoint"] as? Bool {
                self.autoSyncCheckpoint = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["extInfo"] as? [String: String] {
                self.extInfo = value
            }
            if let value = dict["instances"] as? [Any?] {
                var tmp : [GetDisasterRecoveryPlanResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = GetDisasterRecoveryPlanResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["planDesc"] as? String {
                self.planDesc = value
            }
            if let value = dict["planId"] as? Int64 {
                self.planId = value
            }
            if let value = dict["planName"] as? String {
                self.planName = value
            }
            if let value = dict["planStatus"] as? String {
                self.planStatus = value
            }
            if let value = dict["planType"] as? String {
                self.planType = value
            }
            if let value = dict["syncCheckpointEnabled"] as? Bool {
                self.syncCheckpointEnabled = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetDisasterRecoveryPlanResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDisasterRecoveryPlanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDisasterRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDisasterRecoveryPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDisasterRecoveryPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AccountInfo : Tea.TeaModel {
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
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["username"] as? String {
                    self.username = value
                }
            }
        }
        public class AclInfo : Tea.TeaModel {
            public var aclType: String?

            public var aclTypes: [String]?

            public var defaultVpcAuthFree: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclType != nil {
                    map["aclType"] = self.aclType!
                }
                if self.aclTypes != nil {
                    map["aclTypes"] = self.aclTypes!
                }
                if self.defaultVpcAuthFree != nil {
                    map["defaultVpcAuthFree"] = self.defaultVpcAuthFree!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["aclTypes"] as? [String] {
                    self.aclTypes = value
                }
                if let value = dict["defaultVpcAuthFree"] as? Bool {
                    self.defaultVpcAuthFree = value
                }
            }
        }
        public class ExtConfig : Tea.TeaModel {
            public var aclType: String?

            public var autoScaling: Bool?

            public var flowOutBandwidth: Int32?

            public var flowOutType: String?

            public var internetSpec: String?

            public var messageRetentionTime: Int32?

            public var msgProcessSpec: String?

            public var sendReceiveRatio: Double?

            public var supportAutoScaling: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclType != nil {
                    map["aclType"] = self.aclType!
                }
                if self.autoScaling != nil {
                    map["autoScaling"] = self.autoScaling!
                }
                if self.flowOutBandwidth != nil {
                    map["flowOutBandwidth"] = self.flowOutBandwidth!
                }
                if self.flowOutType != nil {
                    map["flowOutType"] = self.flowOutType!
                }
                if self.internetSpec != nil {
                    map["internetSpec"] = self.internetSpec!
                }
                if self.messageRetentionTime != nil {
                    map["messageRetentionTime"] = self.messageRetentionTime!
                }
                if self.msgProcessSpec != nil {
                    map["msgProcessSpec"] = self.msgProcessSpec!
                }
                if self.sendReceiveRatio != nil {
                    map["sendReceiveRatio"] = self.sendReceiveRatio!
                }
                if self.supportAutoScaling != nil {
                    map["supportAutoScaling"] = self.supportAutoScaling!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["autoScaling"] as? Bool {
                    self.autoScaling = value
                }
                if let value = dict["flowOutBandwidth"] as? Int32 {
                    self.flowOutBandwidth = value
                }
                if let value = dict["flowOutType"] as? String {
                    self.flowOutType = value
                }
                if let value = dict["internetSpec"] as? String {
                    self.internetSpec = value
                }
                if let value = dict["messageRetentionTime"] as? Int32 {
                    self.messageRetentionTime = value
                }
                if let value = dict["msgProcessSpec"] as? String {
                    self.msgProcessSpec = value
                }
                if let value = dict["sendReceiveRatio"] as? Double {
                    self.sendReceiveRatio = value
                }
                if let value = dict["supportAutoScaling"] as? Bool {
                    self.supportAutoScaling = value
                }
            }
        }
        public class InstanceQuotas : Tea.TeaModel {
            public var freeCount: Double?

            public var quotaName: String?

            public var totalCount: Double?

            public var usedCount: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.freeCount != nil {
                    map["freeCount"] = self.freeCount!
                }
                if self.quotaName != nil {
                    map["quotaName"] = self.quotaName!
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                if self.usedCount != nil {
                    map["usedCount"] = self.usedCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["freeCount"] as? Double {
                    self.freeCount = value
                }
                if let value = dict["quotaName"] as? String {
                    self.quotaName = value
                }
                if let value = dict["totalCount"] as? Double {
                    self.totalCount = value
                }
                if let value = dict["usedCount"] as? Double {
                    self.usedCount = value
                }
            }
        }
        public class NetworkInfo : Tea.TeaModel {
            public class Endpoints : Tea.TeaModel {
                public var endpointId: String?

                public var endpointType: String?

                public var endpointUrl: String?

                public var ipWhitelist: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endpointId != nil {
                        map["endpointId"] = self.endpointId!
                    }
                    if self.endpointType != nil {
                        map["endpointType"] = self.endpointType!
                    }
                    if self.endpointUrl != nil {
                        map["endpointUrl"] = self.endpointUrl!
                    }
                    if self.ipWhitelist != nil {
                        map["ipWhitelist"] = self.ipWhitelist!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["endpointId"] as? String {
                        self.endpointId = value
                    }
                    if let value = dict["endpointType"] as? String {
                        self.endpointType = value
                    }
                    if let value = dict["endpointUrl"] as? String {
                        self.endpointUrl = value
                    }
                    if let value = dict["ipWhitelist"] as? [String] {
                        self.ipWhitelist = value
                    }
                }
            }
            public class InternetInfo : Tea.TeaModel {
                public var flowOutBandwidth: Int32?

                public var flowOutType: String?

                public var internetSpec: String?

                public var ipWhitelist: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.flowOutBandwidth != nil {
                        map["flowOutBandwidth"] = self.flowOutBandwidth!
                    }
                    if self.flowOutType != nil {
                        map["flowOutType"] = self.flowOutType!
                    }
                    if self.internetSpec != nil {
                        map["internetSpec"] = self.internetSpec!
                    }
                    if self.ipWhitelist != nil {
                        map["ipWhitelist"] = self.ipWhitelist!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["flowOutBandwidth"] as? Int32 {
                        self.flowOutBandwidth = value
                    }
                    if let value = dict["flowOutType"] as? String {
                        self.flowOutType = value
                    }
                    if let value = dict["internetSpec"] as? String {
                        self.internetSpec = value
                    }
                    if let value = dict["ipWhitelist"] as? [String] {
                        self.ipWhitelist = value
                    }
                }
            }
            public class VpcInfo : Tea.TeaModel {
                public class VSwitches : Tea.TeaModel {
                    public var vSwitchId: String?

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
                        if self.vSwitchId != nil {
                            map["vSwitchId"] = self.vSwitchId!
                        }
                        if self.zoneId != nil {
                            map["zoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["vSwitchId"] as? String {
                            self.vSwitchId = value
                        }
                        if let value = dict["zoneId"] as? String {
                            self.zoneId = value
                        }
                    }
                }
                public var securityGroupIds: String?

                public var vSwitchId: String?

                public var vSwitches: [GetInstanceResponseBody.Data.NetworkInfo.VpcInfo.VSwitches]?

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
                    if self.securityGroupIds != nil {
                        map["securityGroupIds"] = self.securityGroupIds!
                    }
                    if self.vSwitchId != nil {
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    if self.vSwitches != nil {
                        var tmp : [Any] = []
                        for k in self.vSwitches! {
                            tmp.append(k.toMap())
                        }
                        map["vSwitches"] = tmp
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["securityGroupIds"] as? String {
                        self.securityGroupIds = value
                    }
                    if let value = dict["vSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["vSwitches"] as? [Any?] {
                        var tmp : [GetInstanceResponseBody.Data.NetworkInfo.VpcInfo.VSwitches] = []
                        for v in value {
                            if v != nil {
                                var model = GetInstanceResponseBody.Data.NetworkInfo.VpcInfo.VSwitches()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.vSwitches = tmp
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var endpoints: [GetInstanceResponseBody.Data.NetworkInfo.Endpoints]?

            public var internetInfo: GetInstanceResponseBody.Data.NetworkInfo.InternetInfo?

            public var vpcInfo: GetInstanceResponseBody.Data.NetworkInfo.VpcInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.internetInfo?.validate()
                try self.vpcInfo?.validate()
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
                if self.internetInfo != nil {
                    map["internetInfo"] = self.internetInfo?.toMap()
                }
                if self.vpcInfo != nil {
                    map["vpcInfo"] = self.vpcInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endpoints"] as? [Any?] {
                    var tmp : [GetInstanceResponseBody.Data.NetworkInfo.Endpoints] = []
                    for v in value {
                        if v != nil {
                            var model = GetInstanceResponseBody.Data.NetworkInfo.Endpoints()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.endpoints = tmp
                }
                if let value = dict["internetInfo"] as? [String: Any?] {
                    var model = GetInstanceResponseBody.Data.NetworkInfo.InternetInfo()
                    model.fromMap(value)
                    self.internetInfo = model
                }
                if let value = dict["vpcInfo"] as? [String: Any?] {
                    var model = GetInstanceResponseBody.Data.NetworkInfo.VpcInfo()
                    model.fromMap(value)
                    self.vpcInfo = model
                }
            }
        }
        public class ProductInfo : Tea.TeaModel {
            public var autoScaling: Bool?

            public var capacityType: String?

            public var messageRetentionTime: Int32?

            public var msgProcessSpec: String?

            public var provisionedCapacity: Int64?

            public var sendReceiveRatio: Double?

            public var storageEncryption: Bool?

            public var storageSecretKey: String?

            public var supportAutoScaling: Bool?

            public var traceOn: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoScaling != nil {
                    map["autoScaling"] = self.autoScaling!
                }
                if self.capacityType != nil {
                    map["capacityType"] = self.capacityType!
                }
                if self.messageRetentionTime != nil {
                    map["messageRetentionTime"] = self.messageRetentionTime!
                }
                if self.msgProcessSpec != nil {
                    map["msgProcessSpec"] = self.msgProcessSpec!
                }
                if self.provisionedCapacity != nil {
                    map["provisionedCapacity"] = self.provisionedCapacity!
                }
                if self.sendReceiveRatio != nil {
                    map["sendReceiveRatio"] = self.sendReceiveRatio!
                }
                if self.storageEncryption != nil {
                    map["storageEncryption"] = self.storageEncryption!
                }
                if self.storageSecretKey != nil {
                    map["storageSecretKey"] = self.storageSecretKey!
                }
                if self.supportAutoScaling != nil {
                    map["supportAutoScaling"] = self.supportAutoScaling!
                }
                if self.traceOn != nil {
                    map["traceOn"] = self.traceOn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoScaling"] as? Bool {
                    self.autoScaling = value
                }
                if let value = dict["capacityType"] as? String {
                    self.capacityType = value
                }
                if let value = dict["messageRetentionTime"] as? Int32 {
                    self.messageRetentionTime = value
                }
                if let value = dict["msgProcessSpec"] as? String {
                    self.msgProcessSpec = value
                }
                if let value = dict["provisionedCapacity"] as? Int64 {
                    self.provisionedCapacity = value
                }
                if let value = dict["sendReceiveRatio"] as? Double {
                    self.sendReceiveRatio = value
                }
                if let value = dict["storageEncryption"] as? Bool {
                    self.storageEncryption = value
                }
                if let value = dict["storageSecretKey"] as? String {
                    self.storageSecretKey = value
                }
                if let value = dict["supportAutoScaling"] as? Bool {
                    self.supportAutoScaling = value
                }
                if let value = dict["traceOn"] as? Bool {
                    self.traceOn = value
                }
            }
        }
        public class Software : Tea.TeaModel {
            public var maintainTime: String?

            public var softwareVersion: String?

            public var upgradeMethod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maintainTime != nil {
                    map["maintainTime"] = self.maintainTime!
                }
                if self.softwareVersion != nil {
                    map["softwareVersion"] = self.softwareVersion!
                }
                if self.upgradeMethod != nil {
                    map["upgradeMethod"] = self.upgradeMethod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["maintainTime"] as? String {
                    self.maintainTime = value
                }
                if let value = dict["softwareVersion"] as? String {
                    self.softwareVersion = value
                }
                if let value = dict["upgradeMethod"] as? String {
                    self.upgradeMethod = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var accountInfo: GetInstanceResponseBody.Data.AccountInfo?

        public var aclInfo: GetInstanceResponseBody.Data.AclInfo?

        public var bid: String?

        public var commodityCode: String?

        public var createTime: String?

        public var expireTime: String?

        public var extConfig: GetInstanceResponseBody.Data.ExtConfig?

        public var groupCount: Int64?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceQuotas: [GetInstanceResponseBody.Data.InstanceQuotas]?

        public var networkInfo: GetInstanceResponseBody.Data.NetworkInfo?

        public var paymentType: String?

        public var productInfo: GetInstanceResponseBody.Data.ProductInfo?

        public var regionId: String?

        public var releaseTime: String?

        public var remark: String?

        public var resourceGroupId: String?

        public var seriesCode: String?

        public var serviceCode: String?

        public var software: GetInstanceResponseBody.Data.Software?

        public var startTime: String?

        public var status: String?

        public var subSeriesCode: String?

        public var tags: [GetInstanceResponseBody.Data.Tags]?

        public var topicCount: Int64?

        public var updateTime: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountInfo?.validate()
            try self.aclInfo?.validate()
            try self.extConfig?.validate()
            try self.networkInfo?.validate()
            try self.productInfo?.validate()
            try self.software?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountInfo != nil {
                map["accountInfo"] = self.accountInfo?.toMap()
            }
            if self.aclInfo != nil {
                map["aclInfo"] = self.aclInfo?.toMap()
            }
            if self.bid != nil {
                map["bid"] = self.bid!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.extConfig != nil {
                map["extConfig"] = self.extConfig?.toMap()
            }
            if self.groupCount != nil {
                map["groupCount"] = self.groupCount!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.instanceQuotas != nil {
                var tmp : [Any] = []
                for k in self.instanceQuotas! {
                    tmp.append(k.toMap())
                }
                map["instanceQuotas"] = tmp
            }
            if self.networkInfo != nil {
                map["networkInfo"] = self.networkInfo?.toMap()
            }
            if self.paymentType != nil {
                map["paymentType"] = self.paymentType!
            }
            if self.productInfo != nil {
                map["productInfo"] = self.productInfo?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.releaseTime != nil {
                map["releaseTime"] = self.releaseTime!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.seriesCode != nil {
                map["seriesCode"] = self.seriesCode!
            }
            if self.serviceCode != nil {
                map["serviceCode"] = self.serviceCode!
            }
            if self.software != nil {
                map["software"] = self.software?.toMap()
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subSeriesCode != nil {
                map["subSeriesCode"] = self.subSeriesCode!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.topicCount != nil {
                map["topicCount"] = self.topicCount!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountInfo"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.AccountInfo()
                model.fromMap(value)
                self.accountInfo = model
            }
            if let value = dict["aclInfo"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.AclInfo()
                model.fromMap(value)
                self.aclInfo = model
            }
            if let value = dict["bid"] as? String {
                self.bid = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["expireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["extConfig"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.ExtConfig()
                model.fromMap(value)
                self.extConfig = model
            }
            if let value = dict["groupCount"] as? Int64 {
                self.groupCount = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["instanceQuotas"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Data.InstanceQuotas] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Data.InstanceQuotas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceQuotas = tmp
            }
            if let value = dict["networkInfo"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.NetworkInfo()
                model.fromMap(value)
                self.networkInfo = model
            }
            if let value = dict["paymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["productInfo"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.ProductInfo()
                model.fromMap(value)
                self.productInfo = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["releaseTime"] as? String {
                self.releaseTime = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["seriesCode"] as? String {
                self.seriesCode = value
            }
            if let value = dict["serviceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["software"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Data.Software()
                model.fromMap(value)
                self.software = model
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subSeriesCode"] as? String {
                self.subSeriesCode = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["topicCount"] as? Int64 {
                self.topicCount = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceAccountRequest : Tea.TeaModel {
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
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["username"] as? String {
            self.username = value
        }
    }
}

public class GetInstanceAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountStatus: String?

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
            if self.accountStatus != nil {
                map["accountStatus"] = self.accountStatus!
            }
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
            if let value = dict["accountStatus"] as? String {
                self.accountStatus = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceAccountResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstanceAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceAclRequest : Tea.TeaModel {
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
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetInstanceAclResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aclType: String?

        public var actions: [String]?

        public var decision: String?

        public var instanceId: String?

        public var ipWhitelists: [String]?

        public var regionId: String?

        public var resourceName: String?

        public var resourceType: String?

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
            if self.aclType != nil {
                map["aclType"] = self.aclType!
            }
            if self.actions != nil {
                map["actions"] = self.actions!
            }
            if self.decision != nil {
                map["decision"] = self.decision!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.ipWhitelists != nil {
                map["ipWhitelists"] = self.ipWhitelists!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.resourceName != nil {
                map["resourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aclType"] as? String {
                self.aclType = value
            }
            if let value = dict["actions"] as? [String] {
                self.actions = value
            }
            if let value = dict["decision"] as? String {
                self.decision = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ipWhitelists"] as? [String] {
                self.ipWhitelists = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["resourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceAclResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstanceAclResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceIpWhitelistRequest : Tea.TeaModel {
    public var ipWhitelists: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhitelists != nil {
            map["ipWhitelists"] = self.ipWhitelists!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ipWhitelists"] as? [String] {
            self.ipWhitelists = value
        }
    }
}

public class GetInstanceIpWhitelistShrinkRequest : Tea.TeaModel {
    public var ipWhitelistsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhitelistsShrink != nil {
            map["ipWhitelists"] = self.ipWhitelistsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ipWhitelists"] as? String {
            self.ipWhitelistsShrink = value
        }
    }
}

public class GetInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var ipWhitelists: [String]?

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
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.ipWhitelists != nil {
                map["ipWhitelists"] = self.ipWhitelists!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ipWhitelists"] as? [String] {
                self.ipWhitelists = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceIpWhitelistResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstanceIpWhitelistResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMessageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var body: String?

        public var bodySize: Int32?

        public var bornHost: String?

        public var bornTime: String?

        public var instanceId: String?

        public var liteTopicName: String?

        public var messageGroup: String?

        public var messageId: String?

        public var messageKeys: [String]?

        public var messageTag: String?

        public var messageType: String?

        public var regionId: String?

        public var storeHost: String?

        public var storeTime: String?

        public var systemProperties: [String: String]?

        public var topicName: String?

        public var userProperties: [String: String]?

        public override init() {
            super.init()
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
            if self.bodySize != nil {
                map["bodySize"] = self.bodySize!
            }
            if self.bornHost != nil {
                map["bornHost"] = self.bornHost!
            }
            if self.bornTime != nil {
                map["bornTime"] = self.bornTime!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.liteTopicName != nil {
                map["liteTopicName"] = self.liteTopicName!
            }
            if self.messageGroup != nil {
                map["messageGroup"] = self.messageGroup!
            }
            if self.messageId != nil {
                map["messageId"] = self.messageId!
            }
            if self.messageKeys != nil {
                map["messageKeys"] = self.messageKeys!
            }
            if self.messageTag != nil {
                map["messageTag"] = self.messageTag!
            }
            if self.messageType != nil {
                map["messageType"] = self.messageType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.storeHost != nil {
                map["storeHost"] = self.storeHost!
            }
            if self.storeTime != nil {
                map["storeTime"] = self.storeTime!
            }
            if self.systemProperties != nil {
                map["systemProperties"] = self.systemProperties!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            if self.userProperties != nil {
                map["userProperties"] = self.userProperties!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["body"] as? String {
                self.body = value
            }
            if let value = dict["bodySize"] as? Int32 {
                self.bodySize = value
            }
            if let value = dict["bornHost"] as? String {
                self.bornHost = value
            }
            if let value = dict["bornTime"] as? String {
                self.bornTime = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["liteTopicName"] as? String {
                self.liteTopicName = value
            }
            if let value = dict["messageGroup"] as? String {
                self.messageGroup = value
            }
            if let value = dict["messageId"] as? String {
                self.messageId = value
            }
            if let value = dict["messageKeys"] as? [String] {
                self.messageKeys = value
            }
            if let value = dict["messageTag"] as? String {
                self.messageTag = value
            }
            if let value = dict["messageType"] as? String {
                self.messageType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["storeHost"] as? String {
                self.storeHost = value
            }
            if let value = dict["storeTime"] as? String {
                self.storeTime = value
            }
            if let value = dict["systemProperties"] as? [String: String] {
                self.systemProperties = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
            if let value = dict["userProperties"] as? [String: String] {
                self.userProperties = value
            }
        }
    }
    public var code: String?

    public var data: GetMessageDetailResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetMessageDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetMessageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMessageDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var instanceId: String?

        public var liteTopicExpiration: Int64?

        public var maxSendTps: Int64?

        public var messageType: String?

        public var regionId: String?

        public var remark: String?

        public var status: String?

        public var topicName: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.liteTopicExpiration != nil {
                map["liteTopicExpiration"] = self.liteTopicExpiration!
            }
            if self.maxSendTps != nil {
                map["maxSendTps"] = self.maxSendTps!
            }
            if self.messageType != nil {
                map["messageType"] = self.messageType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["liteTopicExpiration"] as? Int64 {
                self.liteTopicExpiration = value
            }
            if let value = dict["maxSendTps"] as? Int64 {
                self.maxSendTps = value
            }
            if let value = dict["messageType"] as? String {
                self.messageType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: GetTopicResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTopicResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTraceRequest : Tea.TeaModel {
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
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetTraceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BrokerInfo : Tea.TeaModel {
            public class Operations : Tea.TeaModel {
                public var operateTime: String?

                public var operateType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operateTime != nil {
                        map["operateTime"] = self.operateTime!
                    }
                    if self.operateType != nil {
                        map["operateType"] = self.operateType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["operateTime"] as? String {
                        self.operateTime = value
                    }
                    if let value = dict["operateType"] as? String {
                        self.operateType = value
                    }
                }
            }
            public var delayStatus: String?

            public var operations: [GetTraceResponseBody.Data.BrokerInfo.Operations]?

            public var presetDelayTime: String?

            public var recallResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delayStatus != nil {
                    map["delayStatus"] = self.delayStatus!
                }
                if self.operations != nil {
                    var tmp : [Any] = []
                    for k in self.operations! {
                        tmp.append(k.toMap())
                    }
                    map["operations"] = tmp
                }
                if self.presetDelayTime != nil {
                    map["presetDelayTime"] = self.presetDelayTime!
                }
                if self.recallResult != nil {
                    map["recallResult"] = self.recallResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["delayStatus"] as? String {
                    self.delayStatus = value
                }
                if let value = dict["operations"] as? [Any?] {
                    var tmp : [GetTraceResponseBody.Data.BrokerInfo.Operations] = []
                    for v in value {
                        if v != nil {
                            var model = GetTraceResponseBody.Data.BrokerInfo.Operations()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.operations = tmp
                }
                if let value = dict["presetDelayTime"] as? String {
                    self.presetDelayTime = value
                }
                if let value = dict["recallResult"] as? String {
                    self.recallResult = value
                }
            }
        }
        public class ConsumerInfos : Tea.TeaModel {
            public class DeadLetterInfo : Tea.TeaModel {
                public var messageId: String?

                public var toDlqTime: String?

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
                    if self.messageId != nil {
                        map["messageId"] = self.messageId!
                    }
                    if self.toDlqTime != nil {
                        map["toDlqTime"] = self.toDlqTime!
                    }
                    if self.topicName != nil {
                        map["topicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["messageId"] as? String {
                        self.messageId = value
                    }
                    if let value = dict["toDlqTime"] as? String {
                        self.toDlqTime = value
                    }
                    if let value = dict["topicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public class Records : Tea.TeaModel {
                public class Operations : Tea.TeaModel {
                    public var deadMessage: Bool?

                    public var invisibleTime: Int64?

                    public var operateTime: String?

                    public var operateType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.deadMessage != nil {
                            map["deadMessage"] = self.deadMessage!
                        }
                        if self.invisibleTime != nil {
                            map["invisibleTime"] = self.invisibleTime!
                        }
                        if self.operateTime != nil {
                            map["operateTime"] = self.operateTime!
                        }
                        if self.operateType != nil {
                            map["operateType"] = self.operateType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["deadMessage"] as? Bool {
                            self.deadMessage = value
                        }
                        if let value = dict["invisibleTime"] as? Int64 {
                            self.invisibleTime = value
                        }
                        if let value = dict["operateTime"] as? String {
                            self.operateTime = value
                        }
                        if let value = dict["operateType"] as? String {
                            self.operateType = value
                        }
                    }
                }
                public var clientHost: String?

                public var consumeStatus: String?

                public var fifoEnable: Bool?

                public var operations: [GetTraceResponseBody.Data.ConsumerInfos.Records.Operations]?

                public var popCk: String?

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
                    if self.clientHost != nil {
                        map["clientHost"] = self.clientHost!
                    }
                    if self.consumeStatus != nil {
                        map["consumeStatus"] = self.consumeStatus!
                    }
                    if self.fifoEnable != nil {
                        map["fifoEnable"] = self.fifoEnable!
                    }
                    if self.operations != nil {
                        var tmp : [Any] = []
                        for k in self.operations! {
                            tmp.append(k.toMap())
                        }
                        map["operations"] = tmp
                    }
                    if self.popCk != nil {
                        map["popCk"] = self.popCk!
                    }
                    if self.userName != nil {
                        map["userName"] = self.userName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["clientHost"] as? String {
                        self.clientHost = value
                    }
                    if let value = dict["consumeStatus"] as? String {
                        self.consumeStatus = value
                    }
                    if let value = dict["fifoEnable"] as? Bool {
                        self.fifoEnable = value
                    }
                    if let value = dict["operations"] as? [Any?] {
                        var tmp : [GetTraceResponseBody.Data.ConsumerInfos.Records.Operations] = []
                        for v in value {
                            if v != nil {
                                var model = GetTraceResponseBody.Data.ConsumerInfos.Records.Operations()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.operations = tmp
                    }
                    if let value = dict["popCk"] as? String {
                        self.popCk = value
                    }
                    if let value = dict["userName"] as? String {
                        self.userName = value
                    }
                }
            }
            public var consumeStatus: String?

            public var consumerGroupId: String?

            public var deadLetterInfo: GetTraceResponseBody.Data.ConsumerInfos.DeadLetterInfo?

            public var deadMessage: Bool?

            public var records: [GetTraceResponseBody.Data.ConsumerInfos.Records]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.deadLetterInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consumeStatus != nil {
                    map["consumeStatus"] = self.consumeStatus!
                }
                if self.consumerGroupId != nil {
                    map["consumerGroupId"] = self.consumerGroupId!
                }
                if self.deadLetterInfo != nil {
                    map["deadLetterInfo"] = self.deadLetterInfo?.toMap()
                }
                if self.deadMessage != nil {
                    map["deadMessage"] = self.deadMessage!
                }
                if self.records != nil {
                    var tmp : [Any] = []
                    for k in self.records! {
                        tmp.append(k.toMap())
                    }
                    map["records"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["consumeStatus"] as? String {
                    self.consumeStatus = value
                }
                if let value = dict["consumerGroupId"] as? String {
                    self.consumerGroupId = value
                }
                if let value = dict["deadLetterInfo"] as? [String: Any?] {
                    var model = GetTraceResponseBody.Data.ConsumerInfos.DeadLetterInfo()
                    model.fromMap(value)
                    self.deadLetterInfo = model
                }
                if let value = dict["deadMessage"] as? Bool {
                    self.deadMessage = value
                }
                if let value = dict["records"] as? [Any?] {
                    var tmp : [GetTraceResponseBody.Data.ConsumerInfos.Records] = []
                    for v in value {
                        if v != nil {
                            var model = GetTraceResponseBody.Data.ConsumerInfos.Records()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.records = tmp
                }
            }
        }
        public class MessageInfo : Tea.TeaModel {
            public var body: String?

            public var bornHost: String?

            public var bornTime: String?

            public var instanceId: String?

            public var liteTopicName: String?

            public var messageGroup: String?

            public var messageId: String?

            public var messageKeys: [String]?

            public var messageTag: String?

            public var messageType: String?

            public var regionId: String?

            public var storeHost: String?

            public var storeTime: String?

            public var topicName: String?

            public var transactionId: String?

            public var userProperties: [String: String]?

            public override init() {
                super.init()
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
                if self.bornHost != nil {
                    map["bornHost"] = self.bornHost!
                }
                if self.bornTime != nil {
                    map["bornTime"] = self.bornTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.liteTopicName != nil {
                    map["liteTopicName"] = self.liteTopicName!
                }
                if self.messageGroup != nil {
                    map["messageGroup"] = self.messageGroup!
                }
                if self.messageId != nil {
                    map["messageId"] = self.messageId!
                }
                if self.messageKeys != nil {
                    map["messageKeys"] = self.messageKeys!
                }
                if self.messageTag != nil {
                    map["messageTag"] = self.messageTag!
                }
                if self.messageType != nil {
                    map["messageType"] = self.messageType!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.storeHost != nil {
                    map["storeHost"] = self.storeHost!
                }
                if self.storeTime != nil {
                    map["storeTime"] = self.storeTime!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.transactionId != nil {
                    map["transactionId"] = self.transactionId!
                }
                if self.userProperties != nil {
                    map["userProperties"] = self.userProperties!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["body"] as? String {
                    self.body = value
                }
                if let value = dict["bornHost"] as? String {
                    self.bornHost = value
                }
                if let value = dict["bornTime"] as? String {
                    self.bornTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["liteTopicName"] as? String {
                    self.liteTopicName = value
                }
                if let value = dict["messageGroup"] as? String {
                    self.messageGroup = value
                }
                if let value = dict["messageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["messageKeys"] as? [String] {
                    self.messageKeys = value
                }
                if let value = dict["messageTag"] as? String {
                    self.messageTag = value
                }
                if let value = dict["messageType"] as? String {
                    self.messageType = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["storeHost"] as? String {
                    self.storeHost = value
                }
                if let value = dict["storeTime"] as? String {
                    self.storeTime = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["transactionId"] as? String {
                    self.transactionId = value
                }
                if let value = dict["userProperties"] as? [String: String] {
                    self.userProperties = value
                }
            }
        }
        public class ProducerInfo : Tea.TeaModel {
            public class Records : Tea.TeaModel {
                public var arriveTime: String?

                public var clientHost: String?

                public var dlqOriginMessageId: String?

                public var dlqOriginTopic: String?

                public var messageSource: String?

                public var produceDuration: Int64?

                public var produceStatus: String?

                public var produceTime: String?

                public var recallTime: String?

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
                    if self.arriveTime != nil {
                        map["arriveTime"] = self.arriveTime!
                    }
                    if self.clientHost != nil {
                        map["clientHost"] = self.clientHost!
                    }
                    if self.dlqOriginMessageId != nil {
                        map["dlqOriginMessageId"] = self.dlqOriginMessageId!
                    }
                    if self.dlqOriginTopic != nil {
                        map["dlqOriginTopic"] = self.dlqOriginTopic!
                    }
                    if self.messageSource != nil {
                        map["messageSource"] = self.messageSource!
                    }
                    if self.produceDuration != nil {
                        map["produceDuration"] = self.produceDuration!
                    }
                    if self.produceStatus != nil {
                        map["produceStatus"] = self.produceStatus!
                    }
                    if self.produceTime != nil {
                        map["produceTime"] = self.produceTime!
                    }
                    if self.recallTime != nil {
                        map["recallTime"] = self.recallTime!
                    }
                    if self.userName != nil {
                        map["userName"] = self.userName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["arriveTime"] as? String {
                        self.arriveTime = value
                    }
                    if let value = dict["clientHost"] as? String {
                        self.clientHost = value
                    }
                    if let value = dict["dlqOriginMessageId"] as? String {
                        self.dlqOriginMessageId = value
                    }
                    if let value = dict["dlqOriginTopic"] as? String {
                        self.dlqOriginTopic = value
                    }
                    if let value = dict["messageSource"] as? String {
                        self.messageSource = value
                    }
                    if let value = dict["produceDuration"] as? Int64 {
                        self.produceDuration = value
                    }
                    if let value = dict["produceStatus"] as? String {
                        self.produceStatus = value
                    }
                    if let value = dict["produceTime"] as? String {
                        self.produceTime = value
                    }
                    if let value = dict["recallTime"] as? String {
                        self.recallTime = value
                    }
                    if let value = dict["userName"] as? String {
                        self.userName = value
                    }
                }
            }
            public var records: [GetTraceResponseBody.Data.ProducerInfo.Records]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.records != nil {
                    var tmp : [Any] = []
                    for k in self.records! {
                        tmp.append(k.toMap())
                    }
                    map["records"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["records"] as? [Any?] {
                    var tmp : [GetTraceResponseBody.Data.ProducerInfo.Records] = []
                    for v in value {
                        if v != nil {
                            var model = GetTraceResponseBody.Data.ProducerInfo.Records()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.records = tmp
                }
            }
        }
        public var brokerInfo: GetTraceResponseBody.Data.BrokerInfo?

        public var consumerInfos: [GetTraceResponseBody.Data.ConsumerInfos]?

        public var instanceId: String?

        public var messageInfo: GetTraceResponseBody.Data.MessageInfo?

        public var producerInfo: GetTraceResponseBody.Data.ProducerInfo?

        public var regionId: String?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.brokerInfo?.validate()
            try self.messageInfo?.validate()
            try self.producerInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.brokerInfo != nil {
                map["brokerInfo"] = self.brokerInfo?.toMap()
            }
            if self.consumerInfos != nil {
                var tmp : [Any] = []
                for k in self.consumerInfos! {
                    tmp.append(k.toMap())
                }
                map["consumerInfos"] = tmp
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.messageInfo != nil {
                map["messageInfo"] = self.messageInfo?.toMap()
            }
            if self.producerInfo != nil {
                map["producerInfo"] = self.producerInfo?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["brokerInfo"] as? [String: Any?] {
                var model = GetTraceResponseBody.Data.BrokerInfo()
                model.fromMap(value)
                self.brokerInfo = model
            }
            if let value = dict["consumerInfos"] as? [Any?] {
                var tmp : [GetTraceResponseBody.Data.ConsumerInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetTraceResponseBody.Data.ConsumerInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.consumerInfos = tmp
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["messageInfo"] as? [String: Any?] {
                var model = GetTraceResponseBody.Data.MessageInfo()
                model.fromMap(value)
                self.messageInfo = model
            }
            if let value = dict["producerInfo"] as? [String: Any?] {
                var model = GetTraceResponseBody.Data.ProducerInfo()
                model.fromMap(value)
                self.producerInfo = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var code: String?

    public var data: GetTraceResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTraceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTraceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTraceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAvailableZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var updateTime: String?

        public var zoneId: String?

        public var zoneName: String?

        public override init() {
            super.init()
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
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            if self.zoneName != nil {
                map["zoneName"] = self.zoneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["zoneName"] as? String {
                self.zoneName = value
            }
        }
    }
    public var code: String?

    public var data: [ListAvailableZonesResponseBody.Data]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAvailableZonesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAvailableZonesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAvailableZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsumerConnectionsRequest : Tea.TeaModel {
    public var liteTopicName: String?

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
        if self.liteTopicName != nil {
            map["liteTopicName"] = self.liteTopicName!
        }
        if self.topicName != nil {
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["liteTopicName"] as? String {
            self.liteTopicName = value
        }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListConsumerConnectionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Connections : Tea.TeaModel {
            public var clientId: String?

            public var egressIp: String?

            public var hostname: String?

            public var language: String?

            public var messageModel: String?

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
                if self.clientId != nil {
                    map["clientId"] = self.clientId!
                }
                if self.egressIp != nil {
                    map["egressIp"] = self.egressIp!
                }
                if self.hostname != nil {
                    map["hostname"] = self.hostname!
                }
                if self.language != nil {
                    map["language"] = self.language!
                }
                if self.messageModel != nil {
                    map["messageModel"] = self.messageModel!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["egressIp"] as? String {
                    self.egressIp = value
                }
                if let value = dict["hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["language"] as? String {
                    self.language = value
                }
                if let value = dict["messageModel"] as? String {
                    self.messageModel = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public var connections: [ListConsumerConnectionsResponseBody.Data.Connections]?

        public var consumerGroupId: String?

        public var instanceId: String?

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
            if self.connections != nil {
                var tmp : [Any] = []
                for k in self.connections! {
                    tmp.append(k.toMap())
                }
                map["connections"] = tmp
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["connections"] as? [Any?] {
                var tmp : [ListConsumerConnectionsResponseBody.Data.Connections] = []
                for v in value {
                    if v != nil {
                        var model = ListConsumerConnectionsResponseBody.Data.Connections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connections = tmp
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var code: String?

    public var data: ListConsumerConnectionsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListConsumerConnectionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListConsumerConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsumerConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConsumerConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsumerGroupSubscriptionsRequest : Tea.TeaModel {
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
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListConsumerGroupSubscriptionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consistency: Bool?

        public var consumerGroupId: String?

        public var filterExpression: String?

        public var filterExpressionType: String?

        public var messageModel: String?

        public var subscriptionStatus: String?

        public var topicCreated: Bool?

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
            if self.consistency != nil {
                map["consistency"] = self.consistency!
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.filterExpression != nil {
                map["filterExpression"] = self.filterExpression!
            }
            if self.filterExpressionType != nil {
                map["filterExpressionType"] = self.filterExpressionType!
            }
            if self.messageModel != nil {
                map["messageModel"] = self.messageModel!
            }
            if self.subscriptionStatus != nil {
                map["subscriptionStatus"] = self.subscriptionStatus!
            }
            if self.topicCreated != nil {
                map["topicCreated"] = self.topicCreated!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consistency"] as? Bool {
                self.consistency = value
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["filterExpression"] as? String {
                self.filterExpression = value
            }
            if let value = dict["filterExpressionType"] as? String {
                self.filterExpressionType = value
            }
            if let value = dict["messageModel"] as? String {
                self.messageModel = value
            }
            if let value = dict["subscriptionStatus"] as? String {
                self.subscriptionStatus = value
            }
            if let value = dict["topicCreated"] as? Bool {
                self.topicCreated = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var code: String?

    public var data: [ListConsumerGroupSubscriptionsResponseBody.Data]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListConsumerGroupSubscriptionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListConsumerGroupSubscriptionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListConsumerGroupSubscriptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsumerGroupSubscriptionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConsumerGroupSubscriptionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsumerGroupsRequest : Tea.TeaModel {
    public var filter: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListConsumerGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var consumerGroupId: String?

            public var createTime: String?

            public var instanceId: String?

            public var maxReceiveTps: Int64?

            public var messageModel: String?

            public var regionId: String?

            public var remark: String?

            public var status: String?

            public var topicName: String?

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
                if self.consumerGroupId != nil {
                    map["consumerGroupId"] = self.consumerGroupId!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.maxReceiveTps != nil {
                    map["maxReceiveTps"] = self.maxReceiveTps!
                }
                if self.messageModel != nil {
                    map["messageModel"] = self.messageModel!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["consumerGroupId"] as? String {
                    self.consumerGroupId = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["maxReceiveTps"] as? Int64 {
                    self.maxReceiveTps = value
                }
                if let value = dict["messageModel"] as? String {
                    self.messageModel = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["remark"] as? String {
                    self.remark = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var list: [ListConsumerGroupsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListConsumerGroupsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListConsumerGroupsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListConsumerGroupsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListConsumerGroupsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListConsumerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsumerGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConsumerGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDisasterRecoveryCheckpointsRequest : Tea.TeaModel {
    public var filter: String?

    public var instanceId: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDisasterRecoveryCheckpointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class SourceProgress : Tea.TeaModel {
                public class ProgressData : Tea.TeaModel {
                    public var consumeTimestamp: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.consumeTimestamp != nil {
                            map["consumeTimestamp"] = self.consumeTimestamp!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["consumeTimestamp"] as? Int64 {
                            self.consumeTimestamp = value
                        }
                    }
                }
                public var consumerGroupId: String?

                public var instanceId: String?

                public var instanceType: String?

                public var lastFetchTime: Int64?

                public var progressData: ListDisasterRecoveryCheckpointsResponseBody.Data.List.SourceProgress.ProgressData?

                public var regionId: String?

                public var topicName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.progressData?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerGroupId != nil {
                        map["consumerGroupId"] = self.consumerGroupId!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.instanceType != nil {
                        map["instanceType"] = self.instanceType!
                    }
                    if self.lastFetchTime != nil {
                        map["lastFetchTime"] = self.lastFetchTime!
                    }
                    if self.progressData != nil {
                        map["progressData"] = self.progressData?.toMap()
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.topicName != nil {
                        map["topicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["consumerGroupId"] as? String {
                        self.consumerGroupId = value
                    }
                    if let value = dict["instanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["instanceType"] as? String {
                        self.instanceType = value
                    }
                    if let value = dict["lastFetchTime"] as? Int64 {
                        self.lastFetchTime = value
                    }
                    if let value = dict["progressData"] as? [String: Any?] {
                        var model = ListDisasterRecoveryCheckpointsResponseBody.Data.List.SourceProgress.ProgressData()
                        model.fromMap(value)
                        self.progressData = model
                    }
                    if let value = dict["regionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["topicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public class TargetProgress : Tea.TeaModel {
                public class ProgressData : Tea.TeaModel {
                    public var consumeTimestamp: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.consumeTimestamp != nil {
                            map["consumeTimestamp"] = self.consumeTimestamp!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["consumeTimestamp"] as? Int64 {
                            self.consumeTimestamp = value
                        }
                    }
                }
                public var consumerGroupId: String?

                public var instanceId: String?

                public var instanceType: String?

                public var lastFetchTime: Int64?

                public var progressData: ListDisasterRecoveryCheckpointsResponseBody.Data.List.TargetProgress.ProgressData?

                public var regionId: String?

                public var topicName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.progressData?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerGroupId != nil {
                        map["consumerGroupId"] = self.consumerGroupId!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.instanceType != nil {
                        map["instanceType"] = self.instanceType!
                    }
                    if self.lastFetchTime != nil {
                        map["lastFetchTime"] = self.lastFetchTime!
                    }
                    if self.progressData != nil {
                        map["progressData"] = self.progressData?.toMap()
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.topicName != nil {
                        map["topicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["consumerGroupId"] as? String {
                        self.consumerGroupId = value
                    }
                    if let value = dict["instanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["instanceType"] as? String {
                        self.instanceType = value
                    }
                    if let value = dict["lastFetchTime"] as? Int64 {
                        self.lastFetchTime = value
                    }
                    if let value = dict["progressData"] as? [String: Any?] {
                        var model = ListDisasterRecoveryCheckpointsResponseBody.Data.List.TargetProgress.ProgressData()
                        model.fromMap(value)
                        self.progressData = model
                    }
                    if let value = dict["regionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["topicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public var checkpointId: Int64?

            public var itemId: Int64?

            public var lastSyncTime: Int64?

            public var planId: Int64?

            public var sourceProgress: ListDisasterRecoveryCheckpointsResponseBody.Data.List.SourceProgress?

            public var targetProgress: ListDisasterRecoveryCheckpointsResponseBody.Data.List.TargetProgress?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sourceProgress?.validate()
                try self.targetProgress?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkpointId != nil {
                    map["checkpointId"] = self.checkpointId!
                }
                if self.itemId != nil {
                    map["itemId"] = self.itemId!
                }
                if self.lastSyncTime != nil {
                    map["lastSyncTime"] = self.lastSyncTime!
                }
                if self.planId != nil {
                    map["planId"] = self.planId!
                }
                if self.sourceProgress != nil {
                    map["sourceProgress"] = self.sourceProgress?.toMap()
                }
                if self.targetProgress != nil {
                    map["targetProgress"] = self.targetProgress?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkpointId"] as? Int64 {
                    self.checkpointId = value
                }
                if let value = dict["itemId"] as? Int64 {
                    self.itemId = value
                }
                if let value = dict["lastSyncTime"] as? Int64 {
                    self.lastSyncTime = value
                }
                if let value = dict["planId"] as? Int64 {
                    self.planId = value
                }
                if let value = dict["sourceProgress"] as? [String: Any?] {
                    var model = ListDisasterRecoveryCheckpointsResponseBody.Data.List.SourceProgress()
                    model.fromMap(value)
                    self.sourceProgress = model
                }
                if let value = dict["targetProgress"] as? [String: Any?] {
                    var model = ListDisasterRecoveryCheckpointsResponseBody.Data.List.TargetProgress()
                    model.fromMap(value)
                    self.targetProgress = model
                }
            }
        }
        public var list: [ListDisasterRecoveryCheckpointsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListDisasterRecoveryCheckpointsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListDisasterRecoveryCheckpointsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListDisasterRecoveryCheckpointsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListDisasterRecoveryCheckpointsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDisasterRecoveryCheckpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisasterRecoveryCheckpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDisasterRecoveryCheckpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDisasterRecoveryItemsRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.topicName != nil {
            map["topicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["topicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListDisasterRecoveryItemsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Topics : Tea.TeaModel {
                public var consumerGroupId: String?

                public var deliveryOrderType: String?

                public var instanceId: String?

                public var instanceType: String?

                public var regionId: String?

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
                    if self.consumerGroupId != nil {
                        map["consumerGroupId"] = self.consumerGroupId!
                    }
                    if self.deliveryOrderType != nil {
                        map["deliveryOrderType"] = self.deliveryOrderType!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.instanceType != nil {
                        map["instanceType"] = self.instanceType!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.topicName != nil {
                        map["topicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["consumerGroupId"] as? String {
                        self.consumerGroupId = value
                    }
                    if let value = dict["deliveryOrderType"] as? String {
                        self.deliveryOrderType = value
                    }
                    if let value = dict["instanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["instanceType"] as? String {
                        self.instanceType = value
                    }
                    if let value = dict["regionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["topicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public var createTime: String?

            public var extInfo: [String: String]?

            public var itemId: Int64?

            public var itemStatus: String?

            public var planId: Int64?

            public var topics: [ListDisasterRecoveryItemsResponseBody.Data.List.Topics]?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.extInfo != nil {
                    map["extInfo"] = self.extInfo!
                }
                if self.itemId != nil {
                    map["itemId"] = self.itemId!
                }
                if self.itemStatus != nil {
                    map["itemStatus"] = self.itemStatus!
                }
                if self.planId != nil {
                    map["planId"] = self.planId!
                }
                if self.topics != nil {
                    var tmp : [Any] = []
                    for k in self.topics! {
                        tmp.append(k.toMap())
                    }
                    map["topics"] = tmp
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["extInfo"] as? [String: String] {
                    self.extInfo = value
                }
                if let value = dict["itemId"] as? Int64 {
                    self.itemId = value
                }
                if let value = dict["itemStatus"] as? String {
                    self.itemStatus = value
                }
                if let value = dict["planId"] as? Int64 {
                    self.planId = value
                }
                if let value = dict["topics"] as? [Any?] {
                    var tmp : [ListDisasterRecoveryItemsResponseBody.Data.List.Topics] = []
                    for v in value {
                        if v != nil {
                            var model = ListDisasterRecoveryItemsResponseBody.Data.List.Topics()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.topics = tmp
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var list: [ListDisasterRecoveryItemsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var scrollId: String?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.scrollId != nil {
                map["scrollId"] = self.scrollId!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListDisasterRecoveryItemsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListDisasterRecoveryItemsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["scrollId"] as? String {
                self.scrollId = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListDisasterRecoveryItemsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListDisasterRecoveryItemsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDisasterRecoveryItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisasterRecoveryItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDisasterRecoveryItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDisasterRecoveryPlansRequest : Tea.TeaModel {
    public var filter: String?

    public var instanceId: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDisasterRecoveryPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Instances : Tea.TeaModel {
                public class MessageProperty : Tea.TeaModel {
                    public var propertyKey: String?

                    public var propertyValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.propertyKey != nil {
                            map["propertyKey"] = self.propertyKey!
                        }
                        if self.propertyValue != nil {
                            map["propertyValue"] = self.propertyValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["propertyKey"] as? String {
                            self.propertyKey = value
                        }
                        if let value = dict["propertyValue"] as? String {
                            self.propertyValue = value
                        }
                    }
                }
                public var authType: String?

                public var consumerGroupId: String?

                public var endpointUrl: String?

                public var instanceId: String?

                public var instanceRole: String?

                public var instanceType: String?

                public var messageProperty: ListDisasterRecoveryPlansResponseBody.Data.List.Instances.MessageProperty?

                public var networkType: String?

                public var password: String?

                public var regionId: String?

                public var securityGroupId: String?

                public var username: String?

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
                    try self.messageProperty?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authType != nil {
                        map["authType"] = self.authType!
                    }
                    if self.consumerGroupId != nil {
                        map["consumerGroupId"] = self.consumerGroupId!
                    }
                    if self.endpointUrl != nil {
                        map["endpointUrl"] = self.endpointUrl!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.instanceRole != nil {
                        map["instanceRole"] = self.instanceRole!
                    }
                    if self.instanceType != nil {
                        map["instanceType"] = self.instanceType!
                    }
                    if self.messageProperty != nil {
                        map["messageProperty"] = self.messageProperty?.toMap()
                    }
                    if self.networkType != nil {
                        map["networkType"] = self.networkType!
                    }
                    if self.password != nil {
                        map["password"] = self.password!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.securityGroupId != nil {
                        map["securityGroupId"] = self.securityGroupId!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
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
                    if let value = dict["authType"] as? String {
                        self.authType = value
                    }
                    if let value = dict["consumerGroupId"] as? String {
                        self.consumerGroupId = value
                    }
                    if let value = dict["endpointUrl"] as? String {
                        self.endpointUrl = value
                    }
                    if let value = dict["instanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["instanceRole"] as? String {
                        self.instanceRole = value
                    }
                    if let value = dict["instanceType"] as? String {
                        self.instanceType = value
                    }
                    if let value = dict["messageProperty"] as? [String: Any?] {
                        var model = ListDisasterRecoveryPlansResponseBody.Data.List.Instances.MessageProperty()
                        model.fromMap(value)
                        self.messageProperty = model
                    }
                    if let value = dict["networkType"] as? String {
                        self.networkType = value
                    }
                    if let value = dict["password"] as? String {
                        self.password = value
                    }
                    if let value = dict["regionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["securityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["username"] as? String {
                        self.username = value
                    }
                    if let value = dict["vSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var autoSyncCheckpoint: Bool?

            public var createTime: String?

            public var extInfo: [String: String]?

            public var instances: [ListDisasterRecoveryPlansResponseBody.Data.List.Instances]?

            public var planDesc: String?

            public var planId: Int64?

            public var planName: String?

            public var planStatus: String?

            public var planType: String?

            public var syncCheckpointEnabled: Bool?

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
                if self.autoSyncCheckpoint != nil {
                    map["autoSyncCheckpoint"] = self.autoSyncCheckpoint!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.extInfo != nil {
                    map["extInfo"] = self.extInfo!
                }
                if self.instances != nil {
                    var tmp : [Any] = []
                    for k in self.instances! {
                        tmp.append(k.toMap())
                    }
                    map["instances"] = tmp
                }
                if self.planDesc != nil {
                    map["planDesc"] = self.planDesc!
                }
                if self.planId != nil {
                    map["planId"] = self.planId!
                }
                if self.planName != nil {
                    map["planName"] = self.planName!
                }
                if self.planStatus != nil {
                    map["planStatus"] = self.planStatus!
                }
                if self.planType != nil {
                    map["planType"] = self.planType!
                }
                if self.syncCheckpointEnabled != nil {
                    map["syncCheckpointEnabled"] = self.syncCheckpointEnabled!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoSyncCheckpoint"] as? Bool {
                    self.autoSyncCheckpoint = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["extInfo"] as? [String: String] {
                    self.extInfo = value
                }
                if let value = dict["instances"] as? [Any?] {
                    var tmp : [ListDisasterRecoveryPlansResponseBody.Data.List.Instances] = []
                    for v in value {
                        if v != nil {
                            var model = ListDisasterRecoveryPlansResponseBody.Data.List.Instances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.instances = tmp
                }
                if let value = dict["planDesc"] as? String {
                    self.planDesc = value
                }
                if let value = dict["planId"] as? Int64 {
                    self.planId = value
                }
                if let value = dict["planName"] as? String {
                    self.planName = value
                }
                if let value = dict["planStatus"] as? String {
                    self.planStatus = value
                }
                if let value = dict["planType"] as? String {
                    self.planType = value
                }
                if let value = dict["syncCheckpointEnabled"] as? Bool {
                    self.syncCheckpointEnabled = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var list: [ListDisasterRecoveryPlansResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var scrollId: String?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.scrollId != nil {
                map["scrollId"] = self.scrollId!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListDisasterRecoveryPlansResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListDisasterRecoveryPlansResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["scrollId"] as? String {
                self.scrollId = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListDisasterRecoveryPlansResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListDisasterRecoveryPlansResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDisasterRecoveryPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisasterRecoveryPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDisasterRecoveryPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceAccountRequest : Tea.TeaModel {
    public var accountStatus: String?

    public var accountType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.accountStatus != nil {
            map["accountStatus"] = self.accountStatus!
        }
        if self.accountType != nil {
            map["accountType"] = self.accountType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountStatus"] as? String {
            self.accountStatus = value
        }
        if let value = dict["accountType"] as? String {
            self.accountType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["username"] as? String {
            self.username = value
        }
    }
}

public class ListInstanceAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var accountStatus: String?

            public var accountType: String?

            public var instanceId: String?

            public var regionId: String?

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
                if self.accountStatus != nil {
                    map["accountStatus"] = self.accountStatus!
                }
                if self.accountType != nil {
                    map["accountType"] = self.accountType!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountStatus"] as? String {
                    self.accountStatus = value
                }
                if let value = dict["accountType"] as? String {
                    self.accountType = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["username"] as? String {
                    self.username = value
                }
            }
        }
        public var list: [ListInstanceAccountResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListInstanceAccountResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceAccountResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListInstanceAccountResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListInstanceAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceAclRequest : Tea.TeaModel {
    public var filter: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstanceAclResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var aclType: String?

            public var actions: [String]?

            public var decision: String?

            public var instanceId: String?

            public var ipWhitelists: [String]?

            public var regionId: String?

            public var resourceName: String?

            public var resourceType: String?

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
                if self.aclType != nil {
                    map["aclType"] = self.aclType!
                }
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.decision != nil {
                    map["decision"] = self.decision!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.ipWhitelists != nil {
                    map["ipWhitelists"] = self.ipWhitelists!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.resourceName != nil {
                    map["resourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["actions"] as? [String] {
                    self.actions = value
                }
                if let value = dict["decision"] as? String {
                    self.decision = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ipWhitelists"] as? [String] {
                    self.ipWhitelists = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["resourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["username"] as? String {
                    self.username = value
                }
            }
        }
        public var list: [ListInstanceAclResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListInstanceAclResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceAclResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListInstanceAclResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListInstanceAclResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstanceAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceIpWhitelistRequest : Tea.TeaModel {
    public var ipWhitelist: String?

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
        if self.ipWhitelist != nil {
            map["ipWhitelist"] = self.ipWhitelist!
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
        if let value = dict["ipWhitelist"] as? String {
            self.ipWhitelist = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [String]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                map["list"] = self.list!
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
            if let value = dict["list"] as? [String] {
                self.list = value
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListInstanceIpWhitelistResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListInstanceIpWhitelistResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var seriesCodes: [String]?

    public var storageSecretKey: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.seriesCodes != nil {
            map["seriesCodes"] = self.seriesCodes!
        }
        if self.storageSecretKey != nil {
            map["storageSecretKey"] = self.storageSecretKey!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["seriesCodes"] as? [String] {
            self.seriesCodes = value
        }
        if let value = dict["storageSecretKey"] as? String {
            self.storageSecretKey = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var seriesCodesShrink: String?

    public var storageSecretKey: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.seriesCodesShrink != nil {
            map["seriesCodes"] = self.seriesCodesShrink!
        }
        if self.storageSecretKey != nil {
            map["storageSecretKey"] = self.storageSecretKey!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["seriesCodes"] as? String {
            self.seriesCodesShrink = value
        }
        if let value = dict["storageSecretKey"] as? String {
            self.storageSecretKey = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class ProductInfo : Tea.TeaModel {
                public var capacityType: String?

                public var traceOn: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capacityType != nil {
                        map["capacityType"] = self.capacityType!
                    }
                    if self.traceOn != nil {
                        map["traceOn"] = self.traceOn!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["capacityType"] as? String {
                        self.capacityType = value
                    }
                    if let value = dict["traceOn"] as? Bool {
                        self.traceOn = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["key"] as? String {
                        self.key = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var commodityCode: String?

            public var createTime: String?

            public var expireTime: String?

            public var groupCount: Int64?

            public var instanceId: String?

            public var instanceName: String?

            public var paymentType: String?

            public var productInfo: ListInstancesResponseBody.Data.List.ProductInfo?

            public var regionId: String?

            public var releaseTime: String?

            public var remark: String?

            public var resourceGroupId: String?

            public var seriesCode: String?

            public var serviceCode: String?

            public var startTime: String?

            public var status: String?

            public var subSeriesCode: String?

            public var tags: [ListInstancesResponseBody.Data.List.Tags]?

            public var topicCount: Int64?

            public var updateTime: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.productInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["commodityCode"] = self.commodityCode!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.groupCount != nil {
                    map["groupCount"] = self.groupCount!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["instanceName"] = self.instanceName!
                }
                if self.paymentType != nil {
                    map["paymentType"] = self.paymentType!
                }
                if self.productInfo != nil {
                    map["productInfo"] = self.productInfo?.toMap()
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.releaseTime != nil {
                    map["releaseTime"] = self.releaseTime!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["resourceGroupId"] = self.resourceGroupId!
                }
                if self.seriesCode != nil {
                    map["seriesCode"] = self.seriesCode!
                }
                if self.serviceCode != nil {
                    map["serviceCode"] = self.serviceCode!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subSeriesCode != nil {
                    map["subSeriesCode"] = self.subSeriesCode!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["tags"] = tmp
                }
                if self.topicCount != nil {
                    map["topicCount"] = self.topicCount!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["commodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["expireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["groupCount"] as? Int64 {
                    self.groupCount = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["instanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["paymentType"] as? String {
                    self.paymentType = value
                }
                if let value = dict["productInfo"] as? [String: Any?] {
                    var model = ListInstancesResponseBody.Data.List.ProductInfo()
                    model.fromMap(value)
                    self.productInfo = model
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["releaseTime"] as? String {
                    self.releaseTime = value
                }
                if let value = dict["remark"] as? String {
                    self.remark = value
                }
                if let value = dict["resourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["seriesCode"] as? String {
                    self.seriesCode = value
                }
                if let value = dict["serviceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["subSeriesCode"] as? String {
                    self.subSeriesCode = value
                }
                if let value = dict["tags"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Data.List.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Data.List.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["topicCount"] as? Int64 {
                    self.topicCount = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var list: [ListInstancesResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListInstancesResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMessagesRequest : Tea.TeaModel {
    public var endTime: String?

    public var liteTopicName: String?

    public var messageId: String?

    public var messageKey: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scrollId: String?

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
        if self.liteTopicName != nil {
            map["liteTopicName"] = self.liteTopicName!
        }
        if self.messageId != nil {
            map["messageId"] = self.messageId!
        }
        if self.messageKey != nil {
            map["messageKey"] = self.messageKey!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.scrollId != nil {
            map["scrollId"] = self.scrollId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["liteTopicName"] as? String {
            self.liteTopicName = value
        }
        if let value = dict["messageId"] as? String {
            self.messageId = value
        }
        if let value = dict["messageKey"] as? String {
            self.messageKey = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["scrollId"] as? String {
            self.scrollId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListMessagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var body: String?

            public var bodySize: Int32?

            public var bornHost: String?

            public var bornTime: String?

            public var instanceId: String?

            public var liteTopicName: String?

            public var messageGroup: String?

            public var messageId: String?

            public var messageKeys: [String]?

            public var messageTag: String?

            public var messageType: String?

            public var regionId: String?

            public var storeHost: String?

            public var storeTime: String?

            public var topicName: String?

            public var userProperties: [String: String]?

            public override init() {
                super.init()
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
                if self.bodySize != nil {
                    map["bodySize"] = self.bodySize!
                }
                if self.bornHost != nil {
                    map["bornHost"] = self.bornHost!
                }
                if self.bornTime != nil {
                    map["bornTime"] = self.bornTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.liteTopicName != nil {
                    map["liteTopicName"] = self.liteTopicName!
                }
                if self.messageGroup != nil {
                    map["messageGroup"] = self.messageGroup!
                }
                if self.messageId != nil {
                    map["messageId"] = self.messageId!
                }
                if self.messageKeys != nil {
                    map["messageKeys"] = self.messageKeys!
                }
                if self.messageTag != nil {
                    map["messageTag"] = self.messageTag!
                }
                if self.messageType != nil {
                    map["messageType"] = self.messageType!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.storeHost != nil {
                    map["storeHost"] = self.storeHost!
                }
                if self.storeTime != nil {
                    map["storeTime"] = self.storeTime!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.userProperties != nil {
                    map["userProperties"] = self.userProperties!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["body"] as? String {
                    self.body = value
                }
                if let value = dict["bodySize"] as? Int32 {
                    self.bodySize = value
                }
                if let value = dict["bornHost"] as? String {
                    self.bornHost = value
                }
                if let value = dict["bornTime"] as? String {
                    self.bornTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["liteTopicName"] as? String {
                    self.liteTopicName = value
                }
                if let value = dict["messageGroup"] as? String {
                    self.messageGroup = value
                }
                if let value = dict["messageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["messageKeys"] as? [String] {
                    self.messageKeys = value
                }
                if let value = dict["messageTag"] as? String {
                    self.messageTag = value
                }
                if let value = dict["messageType"] as? String {
                    self.messageType = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["storeHost"] as? String {
                    self.storeHost = value
                }
                if let value = dict["storeTime"] as? String {
                    self.storeTime = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["userProperties"] as? [String: String] {
                    self.userProperties = value
                }
            }
        }
        public var list: [ListMessagesResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var scrollId: String?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.scrollId != nil {
                map["scrollId"] = self.scrollId!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListMessagesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListMessagesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["scrollId"] as? String {
                self.scrollId = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListMessagesResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMessagesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMetricMetaRequest : Tea.TeaModel {
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

public class ListMetricMetaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var category: String?

            public var description_: String?

            public var metricName: String?

            public override init() {
                super.init()
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
                    map["category"] = self.category!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.metricName != nil {
                    map["metricName"] = self.metricName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["metricName"] as? String {
                    self.metricName = value
                }
            }
        }
        public var list: [ListMetricMetaResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListMetricMetaResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListMetricMetaResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListMetricMetaResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMetricMetaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMetricMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMetricMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMetricMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMigrationOperationsRequest : Tea.TeaModel {
    public var filter: String?

    public var instanceId: String?

    public var operationType: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.operationType != nil {
            map["operationType"] = self.operationType!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["operationType"] as? String {
            self.operationType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMigrationOperationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class OperationParam : Tea.TeaModel {
                public var paramData: Any?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.paramData != nil {
                        map["paramData"] = self.paramData!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["paramData"] as? Any {
                        self.paramData = value
                    }
                }
            }
            public class OperationResult : Tea.TeaModel {
                public var resultData: Any?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resultData != nil {
                        map["resultData"] = self.resultData!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["resultData"] as? Any {
                        self.resultData = value
                    }
                }
            }
            public var businessStatus: String?

            public var createTime: String?

            public var migrationId: Int64?

            public var operationId: Int64?

            public var operationKey: String?

            public var operationParam: ListMigrationOperationsResponseBody.Data.List.OperationParam?

            public var operationResult: ListMigrationOperationsResponseBody.Data.List.OperationResult?

            public var operationStatus: String?

            public var operationType: String?

            public var stageType: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.operationParam?.validate()
                try self.operationResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessStatus != nil {
                    map["businessStatus"] = self.businessStatus!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.migrationId != nil {
                    map["migrationId"] = self.migrationId!
                }
                if self.operationId != nil {
                    map["operationId"] = self.operationId!
                }
                if self.operationKey != nil {
                    map["operationKey"] = self.operationKey!
                }
                if self.operationParam != nil {
                    map["operationParam"] = self.operationParam?.toMap()
                }
                if self.operationResult != nil {
                    map["operationResult"] = self.operationResult?.toMap()
                }
                if self.operationStatus != nil {
                    map["operationStatus"] = self.operationStatus!
                }
                if self.operationType != nil {
                    map["operationType"] = self.operationType!
                }
                if self.stageType != nil {
                    map["stageType"] = self.stageType!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["businessStatus"] as? String {
                    self.businessStatus = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["migrationId"] as? Int64 {
                    self.migrationId = value
                }
                if let value = dict["operationId"] as? Int64 {
                    self.operationId = value
                }
                if let value = dict["operationKey"] as? String {
                    self.operationKey = value
                }
                if let value = dict["operationParam"] as? [String: Any?] {
                    var model = ListMigrationOperationsResponseBody.Data.List.OperationParam()
                    model.fromMap(value)
                    self.operationParam = model
                }
                if let value = dict["operationResult"] as? [String: Any?] {
                    var model = ListMigrationOperationsResponseBody.Data.List.OperationResult()
                    model.fromMap(value)
                    self.operationResult = model
                }
                if let value = dict["operationStatus"] as? String {
                    self.operationStatus = value
                }
                if let value = dict["operationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["stageType"] as? String {
                    self.stageType = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var list: [ListMigrationOperationsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListMigrationOperationsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListMigrationOperationsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListMigrationOperationsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMigrationOperationsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMigrationOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMigrationOperationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMigrationOperationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMigrationsRequest : Tea.TeaModel {
    public var filter: String?

    public var migrationType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.migrationType != nil {
            map["migrationType"] = self.migrationType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["migrationType"] as? String {
            self.migrationType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListMigrationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class CurrentStage : Tea.TeaModel {
                public var stageData: Any?

                public var stageStatus: String?

                public var stageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.stageData != nil {
                        map["stageData"] = self.stageData!
                    }
                    if self.stageStatus != nil {
                        map["stageStatus"] = self.stageStatus!
                    }
                    if self.stageType != nil {
                        map["stageType"] = self.stageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["stageData"] as? Any {
                        self.stageData = value
                    }
                    if let value = dict["stageStatus"] as? String {
                        self.stageStatus = value
                    }
                    if let value = dict["stageType"] as? String {
                        self.stageType = value
                    }
                }
            }
            public class MigrationSource : Tea.TeaModel {
                public var sourceData: Any?

                public var sourceType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sourceData != nil {
                        map["sourceData"] = self.sourceData!
                    }
                    if self.sourceType != nil {
                        map["sourceType"] = self.sourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["sourceData"] as? Any {
                        self.sourceData = value
                    }
                    if let value = dict["sourceType"] as? String {
                        self.sourceType = value
                    }
                }
            }
            public class MigrationTarget : Tea.TeaModel {
                public var targetData: Any?

                public var targetType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.targetData != nil {
                        map["targetData"] = self.targetData!
                    }
                    if self.targetType != nil {
                        map["targetType"] = self.targetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["targetData"] as? Any {
                        self.targetData = value
                    }
                    if let value = dict["targetType"] as? String {
                        self.targetType = value
                    }
                }
            }
            public var createTime: String?

            public var currentStage: ListMigrationsResponseBody.Data.List.CurrentStage?

            public var migrationId: Int64?

            public var migrationName: String?

            public var migrationSource: ListMigrationsResponseBody.Data.List.MigrationSource?

            public var migrationStatus: String?

            public var migrationTarget: ListMigrationsResponseBody.Data.List.MigrationTarget?

            public var migrationType: String?

            public var updateTime: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.currentStage?.validate()
                try self.migrationSource?.validate()
                try self.migrationTarget?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.currentStage != nil {
                    map["currentStage"] = self.currentStage?.toMap()
                }
                if self.migrationId != nil {
                    map["migrationId"] = self.migrationId!
                }
                if self.migrationName != nil {
                    map["migrationName"] = self.migrationName!
                }
                if self.migrationSource != nil {
                    map["migrationSource"] = self.migrationSource?.toMap()
                }
                if self.migrationStatus != nil {
                    map["migrationStatus"] = self.migrationStatus!
                }
                if self.migrationTarget != nil {
                    map["migrationTarget"] = self.migrationTarget?.toMap()
                }
                if self.migrationType != nil {
                    map["migrationType"] = self.migrationType!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["currentStage"] as? [String: Any?] {
                    var model = ListMigrationsResponseBody.Data.List.CurrentStage()
                    model.fromMap(value)
                    self.currentStage = model
                }
                if let value = dict["migrationId"] as? Int64 {
                    self.migrationId = value
                }
                if let value = dict["migrationName"] as? String {
                    self.migrationName = value
                }
                if let value = dict["migrationSource"] as? [String: Any?] {
                    var model = ListMigrationsResponseBody.Data.List.MigrationSource()
                    model.fromMap(value)
                    self.migrationSource = model
                }
                if let value = dict["migrationStatus"] as? String {
                    self.migrationStatus = value
                }
                if let value = dict["migrationTarget"] as? [String: Any?] {
                    var model = ListMigrationsResponseBody.Data.List.MigrationTarget()
                    model.fromMap(value)
                    self.migrationTarget = model
                }
                if let value = dict["migrationType"] as? String {
                    self.migrationType = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var list: [ListMigrationsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListMigrationsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListMigrationsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListMigrationsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListMigrationsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMigrationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMigrationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMigrationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagCode: String?

            public var tagValue: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagCode != nil {
                    map["tagCode"] = self.tagCode!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagCode"] as? String {
                    self.tagCode = value
                }
                if let value = dict["tagValue"] as? Any {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var regionId: String?

        public var regionName: String?

        public var supportRocketmqV4: Bool?

        public var supportRocketmqV5: Bool?

        public var tags: [ListRegionsResponseBody.Data.Tags]?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["regionName"] = self.regionName!
            }
            if self.supportRocketmqV4 != nil {
                map["supportRocketmqV4"] = self.supportRocketmqV4!
            }
            if self.supportRocketmqV5 != nil {
                map["supportRocketmqV5"] = self.supportRocketmqV5!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["regionName"] as? String {
                self.regionName = value
            }
            if let value = dict["supportRocketmqV4"] as? Bool {
                self.supportRocketmqV4 = value
            }
            if let value = dict["supportRocketmqV5"] as? Bool {
                self.supportRocketmqV5 = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListRegionsResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListRegionsResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: [ListRegionsResponseBody.Data]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListRegionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var tag: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TagResources : Tea.TeaModel {
            public var aliUid: Int64?

            public var category: String?

            public var resourceId: String?

            public var resourceType: String?

            public var scope: String?

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
                if self.aliUid != nil {
                    map["aliUid"] = self.aliUid!
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.resourceId != nil {
                    map["resourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                if self.scope != nil {
                    map["scope"] = self.scope!
                }
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aliUid"] as? Int64 {
                    self.aliUid = value
                }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["resourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["scope"] as? String {
                    self.scope = value
                }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var nextToken: String?

        public var requestId: String?

        public var tagResources: [ListTagResourcesResponseBody.Data.TagResources]?

        public override init() {
            super.init()
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
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.tagResources != nil {
                var tmp : [Any] = []
                for k in self.tagResources! {
                    tmp.append(k.toMap())
                }
                map["tagResources"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["tagResources"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.Data.TagResources] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.Data.TagResources()
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
    public var code: String?

    public var data: ListTagResourcesResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

public class ListTopicSubscriptionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consistency: String?

        public var consumerGroupId: String?

        public var filterExpression: String?

        public var filterExpressionType: String?

        public var messageModel: String?

        public var subscriptionStatus: String?

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
            if self.consistency != nil {
                map["consistency"] = self.consistency!
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.filterExpression != nil {
                map["filterExpression"] = self.filterExpression!
            }
            if self.filterExpressionType != nil {
                map["filterExpressionType"] = self.filterExpressionType!
            }
            if self.messageModel != nil {
                map["messageModel"] = self.messageModel!
            }
            if self.subscriptionStatus != nil {
                map["subscriptionStatus"] = self.subscriptionStatus!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consistency"] as? String {
                self.consistency = value
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["filterExpression"] as? String {
                self.filterExpression = value
            }
            if let value = dict["filterExpressionType"] as? String {
                self.filterExpressionType = value
            }
            if let value = dict["messageModel"] as? String {
                self.messageModel = value
            }
            if let value = dict["subscriptionStatus"] as? String {
                self.subscriptionStatus = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var code: String?

    public var data: [ListTopicSubscriptionsResponseBody.Data]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTopicSubscriptionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTopicSubscriptionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTopicSubscriptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicSubscriptionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTopicSubscriptionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTopicsRequest : Tea.TeaModel {
    public var filter: String?

    public var messageTypes: [String]?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.messageTypes != nil {
            map["messageTypes"] = self.messageTypes!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["messageTypes"] as? [String] {
            self.messageTypes = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTopicsShrinkRequest : Tea.TeaModel {
    public var filter: String?

    public var messageTypesShrink: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.messageTypesShrink != nil {
            map["messageTypes"] = self.messageTypesShrink!
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
        if let value = dict["filter"] as? String {
            self.filter = value
        }
        if let value = dict["messageTypes"] as? String {
            self.messageTypesShrink = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTopicsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var createTime: String?

            public var instanceId: String?

            public var liteTopicExpiration: Int64?

            public var maxSendTps: Int64?

            public var messageType: String?

            public var regionId: String?

            public var remark: String?

            public var status: String?

            public var topicName: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.liteTopicExpiration != nil {
                    map["liteTopicExpiration"] = self.liteTopicExpiration!
                }
                if self.maxSendTps != nil {
                    map["maxSendTps"] = self.maxSendTps!
                }
                if self.messageType != nil {
                    map["messageType"] = self.messageType!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["liteTopicExpiration"] as? Int64 {
                    self.liteTopicExpiration = value
                }
                if let value = dict["maxSendTps"] as? Int64 {
                    self.maxSendTps = value
                }
                if let value = dict["messageType"] as? String {
                    self.messageType = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["remark"] as? String {
                    self.remark = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["updateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var list: [ListTopicsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListTopicsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListTopicsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListTopicsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTopicsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTopicsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTopicsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTracesRequest : Tea.TeaModel {
    public var endTime: String?

    public var liteTopicName: String?

    public var messageId: String?

    public var messageKey: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryType: String?

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
        if self.liteTopicName != nil {
            map["liteTopicName"] = self.liteTopicName!
        }
        if self.messageId != nil {
            map["messageId"] = self.messageId!
        }
        if self.messageKey != nil {
            map["messageKey"] = self.messageKey!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["queryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["liteTopicName"] as? String {
            self.liteTopicName = value
        }
        if let value = dict["messageId"] as? String {
            self.messageId = value
        }
        if let value = dict["messageKey"] as? String {
            self.messageKey = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["queryType"] as? String {
            self.queryType = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTracesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var bornTime: String?

            public var instanceId: String?

            public var messageId: String?

            public var messageKeys: [String]?

            public var messageTag: String?

            public var regionId: String?

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
                if self.bornTime != nil {
                    map["bornTime"] = self.bornTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.messageId != nil {
                    map["messageId"] = self.messageId!
                }
                if self.messageKeys != nil {
                    map["messageKeys"] = self.messageKeys!
                }
                if self.messageTag != nil {
                    map["messageTag"] = self.messageTag!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bornTime"] as? String {
                    self.bornTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["messageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["messageKeys"] as? [String] {
                    self.messageKeys = value
                }
                if let value = dict["messageTag"] as? String {
                    self.messageTag = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
            }
        }
        public var list: [ListTracesResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
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
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListTracesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListTracesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListTracesResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTracesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTracesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTracesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTracesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetConsumeOffsetRequest : Tea.TeaModel {
    public var resetTime: String?

    public var resetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resetTime != nil {
            map["resetTime"] = self.resetTime!
        }
        if self.resetType != nil {
            map["resetType"] = self.resetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resetTime"] as? String {
            self.resetTime = value
        }
        if let value = dict["resetType"] as? String {
            self.resetType = value
        }
    }
}

public class ResetConsumeOffsetResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ResetConsumeOffsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetConsumeOffsetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetConsumeOffsetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StartDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StopDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncDisasterRecoveryCheckpointResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SyncDisasterRecoveryCheckpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncDisasterRecoveryCheckpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SyncDisasterRecoveryCheckpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var tag: String?

    public override init() {
        super.init()
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
            map["regionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public var resourceId: String?

    public var resourceType: String?

    public var tagKey: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["tagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["all"] as? Bool {
            self.all = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

public class UpdateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
        public var deadLetterTargetTopic: String?

        public var fixedIntervalRetryTime: Int32?

        public var maxRetryTimes: Int32?

        public var retryPolicy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadLetterTargetTopic != nil {
                map["deadLetterTargetTopic"] = self.deadLetterTargetTopic!
            }
            if self.fixedIntervalRetryTime != nil {
                map["fixedIntervalRetryTime"] = self.fixedIntervalRetryTime!
            }
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deadLetterTargetTopic"] as? String {
                self.deadLetterTargetTopic = value
            }
            if let value = dict["fixedIntervalRetryTime"] as? Int32 {
                self.fixedIntervalRetryTime = value
            }
            if let value = dict["maxRetryTimes"] as? Int32 {
                self.maxRetryTimes = value
            }
            if let value = dict["retryPolicy"] as? String {
                self.retryPolicy = value
            }
        }
    }
    public var consumeRetryPolicy: UpdateConsumerGroupRequest.ConsumeRetryPolicy?

    public var deliveryOrderType: String?

    public var maxReceiveTps: Int64?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.consumeRetryPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumeRetryPolicy != nil {
            map["consumeRetryPolicy"] = self.consumeRetryPolicy?.toMap()
        }
        if self.deliveryOrderType != nil {
            map["deliveryOrderType"] = self.deliveryOrderType!
        }
        if self.maxReceiveTps != nil {
            map["maxReceiveTps"] = self.maxReceiveTps!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["consumeRetryPolicy"] as? [String: Any?] {
            var model = UpdateConsumerGroupRequest.ConsumeRetryPolicy()
            model.fromMap(value)
            self.consumeRetryPolicy = model
        }
        if let value = dict["deliveryOrderType"] as? String {
            self.deliveryOrderType = value
        }
        if let value = dict["maxReceiveTps"] as? Int64 {
            self.maxReceiveTps = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateConsumerGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDisasterRecoveryItemRequest : Tea.TeaModel {
    public class Topics : Tea.TeaModel {
        public var consumerGroupId: String?

        public var deliveryOrderType: String?

        public var instanceId: String?

        public var instanceType: String?

        public var regionId: String?

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
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.deliveryOrderType != nil {
                map["deliveryOrderType"] = self.deliveryOrderType!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.topicName != nil {
                map["topicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["deliveryOrderType"] as? String {
                self.deliveryOrderType = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["topicName"] as? String {
                self.topicName = value
            }
        }
    }
    public var topics: [UpdateDisasterRecoveryItemRequest.Topics]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.topics != nil {
            var tmp : [Any] = []
            for k in self.topics! {
                tmp.append(k.toMap())
            }
            map["topics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["topics"] as? [Any?] {
            var tmp : [UpdateDisasterRecoveryItemRequest.Topics] = []
            for v in value {
                if v != nil {
                    var model = UpdateDisasterRecoveryItemRequest.Topics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topics = tmp
        }
    }
}

public class UpdateDisasterRecoveryItemResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDisasterRecoveryItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDisasterRecoveryItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDisasterRecoveryItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDisasterRecoveryPlanRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class MessageProperty : Tea.TeaModel {
            public var propertyKey: String?

            public var propertyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.propertyKey != nil {
                    map["propertyKey"] = self.propertyKey!
                }
                if self.propertyValue != nil {
                    map["propertyValue"] = self.propertyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["propertyKey"] as? String {
                    self.propertyKey = value
                }
                if let value = dict["propertyValue"] as? String {
                    self.propertyValue = value
                }
            }
        }
        public var authType: String?

        public var consumerGroupId: String?

        public var endpointUrl: String?

        public var instanceId: String?

        public var instanceRole: String?

        public var instanceType: String?

        public var messageProperty: UpdateDisasterRecoveryPlanRequest.Instances.MessageProperty?

        public var networkType: String?

        public var password: String?

        public var regionId: String?

        public var securityGroupId: String?

        public var username: String?

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
            try self.messageProperty?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authType != nil {
                map["authType"] = self.authType!
            }
            if self.consumerGroupId != nil {
                map["consumerGroupId"] = self.consumerGroupId!
            }
            if self.endpointUrl != nil {
                map["endpointUrl"] = self.endpointUrl!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceRole != nil {
                map["instanceRole"] = self.instanceRole!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.messageProperty != nil {
                map["messageProperty"] = self.messageProperty?.toMap()
            }
            if self.networkType != nil {
                map["networkType"] = self.networkType!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.username != nil {
                map["username"] = self.username!
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
            if let value = dict["authType"] as? String {
                self.authType = value
            }
            if let value = dict["consumerGroupId"] as? String {
                self.consumerGroupId = value
            }
            if let value = dict["endpointUrl"] as? String {
                self.endpointUrl = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceRole"] as? String {
                self.instanceRole = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["messageProperty"] as? [String: Any?] {
                var model = UpdateDisasterRecoveryPlanRequest.Instances.MessageProperty()
                model.fromMap(value)
                self.messageProperty = model
            }
            if let value = dict["networkType"] as? String {
                self.networkType = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
            if let value = dict["vSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var autoSyncCheckpoint: Bool?

    public var instances: [UpdateDisasterRecoveryPlanRequest.Instances]?

    public var planDesc: String?

    public var planName: String?

    public var planType: String?

    public var syncCheckpointEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSyncCheckpoint != nil {
            map["autoSyncCheckpoint"] = self.autoSyncCheckpoint!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        if self.planDesc != nil {
            map["planDesc"] = self.planDesc!
        }
        if self.planName != nil {
            map["planName"] = self.planName!
        }
        if self.planType != nil {
            map["planType"] = self.planType!
        }
        if self.syncCheckpointEnabled != nil {
            map["syncCheckpointEnabled"] = self.syncCheckpointEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoSyncCheckpoint"] as? Bool {
            self.autoSyncCheckpoint = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [UpdateDisasterRecoveryPlanRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = UpdateDisasterRecoveryPlanRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["planDesc"] as? String {
            self.planDesc = value
        }
        if let value = dict["planName"] as? String {
            self.planName = value
        }
        if let value = dict["planType"] as? String {
            self.planType = value
        }
        if let value = dict["syncCheckpointEnabled"] as? Bool {
            self.syncCheckpointEnabled = value
        }
    }
}

public class UpdateDisasterRecoveryPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDisasterRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDisasterRecoveryPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDisasterRecoveryPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public class AclInfo : Tea.TeaModel {
        public var aclTypes: [String]?

        public var defaultVpcAuthFree: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclTypes != nil {
                map["aclTypes"] = self.aclTypes!
            }
            if self.defaultVpcAuthFree != nil {
                map["defaultVpcAuthFree"] = self.defaultVpcAuthFree!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aclTypes"] as? [String] {
                self.aclTypes = value
            }
            if let value = dict["defaultVpcAuthFree"] as? Bool {
                self.defaultVpcAuthFree = value
            }
        }
    }
    public class NetworkInfo : Tea.TeaModel {
        public class InternetInfo : Tea.TeaModel {
            public var ipWhitelist: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipWhitelist != nil {
                    map["ipWhitelist"] = self.ipWhitelist!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ipWhitelist"] as? [String] {
                    self.ipWhitelist = value
                }
            }
        }
        public var internetInfo: UpdateInstanceRequest.NetworkInfo.InternetInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.internetInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.internetInfo != nil {
                map["internetInfo"] = self.internetInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["internetInfo"] as? [String: Any?] {
                var model = UpdateInstanceRequest.NetworkInfo.InternetInfo()
                model.fromMap(value)
                self.internetInfo = model
            }
        }
    }
    public class ProductInfo : Tea.TeaModel {
        public var autoScaling: Bool?

        public var messageRetentionTime: Int32?

        public var sendReceiveRatio: Double?

        public var traceOn: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoScaling != nil {
                map["autoScaling"] = self.autoScaling!
            }
            if self.messageRetentionTime != nil {
                map["messageRetentionTime"] = self.messageRetentionTime!
            }
            if self.sendReceiveRatio != nil {
                map["sendReceiveRatio"] = self.sendReceiveRatio!
            }
            if self.traceOn != nil {
                map["traceOn"] = self.traceOn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoScaling"] as? Bool {
                self.autoScaling = value
            }
            if let value = dict["messageRetentionTime"] as? Int32 {
                self.messageRetentionTime = value
            }
            if let value = dict["sendReceiveRatio"] as? Double {
                self.sendReceiveRatio = value
            }
            if let value = dict["traceOn"] as? Bool {
                self.traceOn = value
            }
        }
    }
    public var aclInfo: UpdateInstanceRequest.AclInfo?

    public var instanceName: String?

    public var networkInfo: UpdateInstanceRequest.NetworkInfo?

    public var productInfo: UpdateInstanceRequest.ProductInfo?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aclInfo?.validate()
        try self.networkInfo?.validate()
        try self.productInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclInfo != nil {
            map["aclInfo"] = self.aclInfo?.toMap()
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.networkInfo != nil {
            map["networkInfo"] = self.networkInfo?.toMap()
        }
        if self.productInfo != nil {
            map["productInfo"] = self.productInfo?.toMap()
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aclInfo"] as? [String: Any?] {
            var model = UpdateInstanceRequest.AclInfo()
            model.fromMap(value)
            self.aclInfo = model
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["networkInfo"] as? [String: Any?] {
            var model = UpdateInstanceRequest.NetworkInfo()
            model.fromMap(value)
            self.networkInfo = model
        }
        if let value = dict["productInfo"] as? [String: Any?] {
            var model = UpdateInstanceRequest.ProductInfo()
            model.fromMap(value)
            self.productInfo = model
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceAccountRequest : Tea.TeaModel {
    public var accountStatus: String?

    public var password: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountStatus != nil {
            map["accountStatus"] = self.accountStatus!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountStatus"] as? String {
            self.accountStatus = value
        }
        if let value = dict["password"] as? String {
            self.password = value
        }
    }
}

public class UpdateInstanceAccountResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceAclRequest : Tea.TeaModel {
    public var actions: [String]?

    public var decision: String?

    public var ipWhitelists: [String]?

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
        if self.actions != nil {
            map["actions"] = self.actions!
        }
        if self.decision != nil {
            map["decision"] = self.decision!
        }
        if self.ipWhitelists != nil {
            map["ipWhitelists"] = self.ipWhitelists!
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
        if let value = dict["actions"] as? [String] {
            self.actions = value
        }
        if let value = dict["decision"] as? String {
            self.decision = value
        }
        if let value = dict["ipWhitelists"] as? [String] {
            self.ipWhitelists = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class UpdateInstanceAclResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTopicRequest : Tea.TeaModel {
    public var liteTopicExpiration: Int64?

    public var maxSendTps: Int64?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liteTopicExpiration != nil {
            map["liteTopicExpiration"] = self.liteTopicExpiration!
        }
        if self.maxSendTps != nil {
            map["maxSendTps"] = self.maxSendTps!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["liteTopicExpiration"] as? Int64 {
            self.liteTopicExpiration = value
        }
        if let value = dict["maxSendTps"] as? Int64 {
            self.maxSendTps = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateTopicResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyConsumeMessageRequest : Tea.TeaModel {
    public var clientId: String?

    public var consumerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.consumerGroupId != nil {
            map["consumerGroupId"] = self.consumerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? String {
            self.clientId = value
        }
        if let value = dict["consumerGroupId"] as? String {
            self.consumerGroupId = value
        }
    }
}

public class VerifyConsumeMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class VerifyConsumeMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyConsumeMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = VerifyConsumeMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifySendMessageRequest : Tea.TeaModel {
    public var liteTopicName: String?

    public var message: String?

    public var messageKey: String?

    public var messageTag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liteTopicName != nil {
            map["liteTopicName"] = self.liteTopicName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.messageKey != nil {
            map["messageKey"] = self.messageKey!
        }
        if self.messageTag != nil {
            map["messageTag"] = self.messageTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["liteTopicName"] as? String {
            self.liteTopicName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["messageKey"] as? String {
            self.messageKey = value
        }
        if let value = dict["messageTag"] as? String {
            self.messageTag = value
        }
    }
}

public class VerifySendMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dynamicCode != nil {
            map["dynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["dynamicMessage"] = self.dynamicMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["dynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class VerifySendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySendMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = VerifySendMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
