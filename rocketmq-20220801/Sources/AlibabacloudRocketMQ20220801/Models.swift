import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("readyCount") {
            self.readyCount = dict["readyCount"] as! Int64
        }
        if dict.keys.contains("inflightCount") {
            self.inflightCount = dict["inflightCount"] as! Int64
        }
        if dict.keys.contains("deliveryDuration") {
            self.deliveryDuration = dict["deliveryDuration"] as! Int64
        }
        if dict.keys.contains("lastConsumeTimestamp") {
            self.lastConsumeTimestamp = dict["lastConsumeTimestamp"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("deliveryOrderType") {
                self.deliveryOrderType = dict["deliveryOrderType"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("instanceType") {
                self.instanceType = dict["instanceType"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("topics") {
            var tmp : [AddDisasterRecoveryItemRequest.Topics] = []
            for v in dict["topics"] as! [Any] {
                var model = AddDisasterRecoveryItemRequest.Topics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDisasterRecoveryItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
        public var deadLetterTargetTopic: String?

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
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deadLetterTargetTopic") {
                self.deadLetterTargetTopic = dict["deadLetterTargetTopic"] as! String
            }
            if dict.keys.contains("maxRetryTimes") {
                self.maxRetryTimes = dict["maxRetryTimes"] as! Int32
            }
            if dict.keys.contains("retryPolicy") {
                self.retryPolicy = dict["retryPolicy"] as! String
            }
        }
    }
    public var consumeRetryPolicy: CreateConsumerGroupRequest.ConsumeRetryPolicy?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("consumeRetryPolicy") {
            var model = CreateConsumerGroupRequest.ConsumeRetryPolicy()
            model.fromMap(dict["consumeRetryPolicy"] as! [String: Any])
            self.consumeRetryPolicy = model
        }
        if dict.keys.contains("deliveryOrderType") {
            self.deliveryOrderType = dict["deliveryOrderType"] as! String
        }
        if dict.keys.contains("maxReceiveTps") {
            self.maxReceiveTps = dict["maxReceiveTps"] as! Int64
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("flowOutBandwidth") {
                    self.flowOutBandwidth = dict["flowOutBandwidth"] as! Int32
                }
                if dict.keys.contains("flowOutType") {
                    self.flowOutType = dict["flowOutType"] as! String
                }
                if dict.keys.contains("internetSpec") {
                    self.internetSpec = dict["internetSpec"] as! String
                }
                if dict.keys.contains("ipWhitelist") {
                    self.ipWhitelist = dict["ipWhitelist"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("securityGroupIds") {
                    self.securityGroupIds = dict["securityGroupIds"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
                }
                if dict.keys.contains("vSwitches") {
                    var tmp : [CreateInstanceRequest.NetworkInfo.VpcInfo.VSwitches] = []
                    for v in dict["vSwitches"] as! [Any] {
                        var model = CreateInstanceRequest.NetworkInfo.VpcInfo.VSwitches()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vSwitches = tmp
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("internetInfo") {
                var model = CreateInstanceRequest.NetworkInfo.InternetInfo()
                model.fromMap(dict["internetInfo"] as! [String: Any])
                self.internetInfo = model
            }
            if dict.keys.contains("vpcInfo") {
                var model = CreateInstanceRequest.NetworkInfo.VpcInfo()
                model.fromMap(dict["vpcInfo"] as! [String: Any])
                self.vpcInfo = model
            }
        }
    }
    public class ProductInfo : Tea.TeaModel {
        public var autoScaling: Bool?

        public var messageRetentionTime: Int32?

        public var msgProcessSpec: String?

        public var sendReceiveRatio: Double?

        public var storageEncryption: Bool?

        public var storageSecretKey: String?

        public override init() {
            super.init()
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
            if self.msgProcessSpec != nil {
                map["msgProcessSpec"] = self.msgProcessSpec!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoScaling") {
                self.autoScaling = dict["autoScaling"] as! Bool
            }
            if dict.keys.contains("messageRetentionTime") {
                self.messageRetentionTime = dict["messageRetentionTime"] as! Int32
            }
            if dict.keys.contains("msgProcessSpec") {
                self.msgProcessSpec = dict["msgProcessSpec"] as! String
            }
            if dict.keys.contains("sendReceiveRatio") {
                self.sendReceiveRatio = dict["sendReceiveRatio"] as! Double
            }
            if dict.keys.contains("storageEncryption") {
                self.storageEncryption = dict["storageEncryption"] as! Bool
            }
            if dict.keys.contains("storageSecretKey") {
                self.storageSecretKey = dict["storageSecretKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
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
        try self.networkInfo?.validate()
        try self.productInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoRenew") {
            self.autoRenew = dict["autoRenew"] as! Bool
        }
        if dict.keys.contains("autoRenewPeriod") {
            self.autoRenewPeriod = dict["autoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("commodityCode") {
            self.commodityCode = dict["commodityCode"] as! String
        }
        if dict.keys.contains("instanceName") {
            self.instanceName = dict["instanceName"] as! String
        }
        if dict.keys.contains("networkInfo") {
            var model = CreateInstanceRequest.NetworkInfo()
            model.fromMap(dict["networkInfo"] as! [String: Any])
            self.networkInfo = model
        }
        if dict.keys.contains("paymentType") {
            self.paymentType = dict["paymentType"] as! String
        }
        if dict.keys.contains("period") {
            self.period = dict["period"] as! Int32
        }
        if dict.keys.contains("periodUnit") {
            self.periodUnit = dict["periodUnit"] as! String
        }
        if dict.keys.contains("productInfo") {
            var model = CreateInstanceRequest.ProductInfo()
            model.fromMap(dict["productInfo"] as! [String: Any])
            self.productInfo = model
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("seriesCode") {
            self.seriesCode = dict["seriesCode"] as! String
        }
        if dict.keys.contains("serviceCode") {
            self.serviceCode = dict["serviceCode"] as! String
        }
        if dict.keys.contains("subSeriesCode") {
            self.subSeriesCode = dict["subSeriesCode"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = CreateInstanceRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actions") {
            self.actions = dict["actions"] as! [String]
        }
        if dict.keys.contains("decision") {
            self.decision = dict["decision"] as! String
        }
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelists = dict["ipWhitelists"] as! [String]
        }
        if dict.keys.contains("resourceName") {
            self.resourceName = dict["resourceName"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelists = dict["ipWhitelists"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxSendTps") {
            self.maxSendTps = dict["maxSendTps"] as! Int64
        }
        if dict.keys.contains("messageType") {
            self.messageType = dict["messageType"] as! String
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterExpression") {
            self.filterExpression = dict["filterExpression"] as! String
        }
        if dict.keys.contains("filterType") {
            self.filterType = dict["filterType"] as! String
        }
        if dict.keys.contains("topicName") {
            self.topicName = dict["topicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConsumerGroupSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDisasterRecoveryPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceName") {
            self.resourceName = dict["resourceName"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelist") {
            self.ipWhitelist = dict["ipWhitelist"] as! String
        }
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelists = dict["ipWhitelists"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelist") {
            self.ipWhitelist = dict["ipWhitelist"] as! String
        }
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelistsShrink = dict["ipWhitelists"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConsumeRetryPolicy : Tea.TeaModel {
            public var deadLetterTargetTopic: String?

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
                if self.maxRetryTimes != nil {
                    map["maxRetryTimes"] = self.maxRetryTimes!
                }
                if self.retryPolicy != nil {
                    map["retryPolicy"] = self.retryPolicy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("deadLetterTargetTopic") {
                    self.deadLetterTargetTopic = dict["deadLetterTargetTopic"] as! String
                }
                if dict.keys.contains("maxRetryTimes") {
                    self.maxRetryTimes = dict["maxRetryTimes"] as! Int32
                }
                if dict.keys.contains("retryPolicy") {
                    self.retryPolicy = dict["retryPolicy"] as! String
                }
            }
        }
        public var consumeRetryPolicy: GetConsumerGroupResponseBody.Data.ConsumeRetryPolicy?

        public var consumerGroupId: String?

        public var createTime: String?

        public var deliveryOrderType: String?

        public var instanceId: String?

        public var maxReceiveTps: Int64?

        public var regionId: String?

        public var remark: String?

        public var status: String?

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
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consumeRetryPolicy") {
                var model = GetConsumerGroupResponseBody.Data.ConsumeRetryPolicy()
                model.fromMap(dict["consumeRetryPolicy"] as! [String: Any])
                self.consumeRetryPolicy = model
            }
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("deliveryOrderType") {
                self.deliveryOrderType = dict["deliveryOrderType"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("maxReceiveTps") {
                self.maxReceiveTps = dict["maxReceiveTps"] as! Int64
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("remark") {
                self.remark = dict["remark"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetConsumerGroupResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerGroupLagRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("topicName") {
            self.topicName = dict["topicName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("deliveryDuration") {
                    self.deliveryDuration = dict["deliveryDuration"] as! Int64
                }
                if dict.keys.contains("inflightCount") {
                    self.inflightCount = dict["inflightCount"] as! Int64
                }
                if dict.keys.contains("lastConsumeTimestamp") {
                    self.lastConsumeTimestamp = dict["lastConsumeTimestamp"] as! Int64
                }
                if dict.keys.contains("readyCount") {
                    self.readyCount = dict["readyCount"] as! Int64
                }
            }
        }
        public var consumerGroupId: String?

        public var instanceId: String?

        public var regionId: String?

        public var topicLagMap: [String: DataTopicLagMapValue]?

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
            if self.totalLag != nil {
                map["totalLag"] = self.totalLag?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("topicLagMap") {
                var tmp : [String: DataTopicLagMapValue] = [:]
                for (k, v) in dict["topicLagMap"] as! [String: Any] {
                    if v != nil {
                        var model = DataTopicLagMapValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.topicLagMap = tmp
            }
            if dict.keys.contains("totalLag") {
                var model = GetConsumerGroupLagResponseBody.Data.TotalLag()
                model.fromMap(dict["totalLag"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetConsumerGroupLagResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConsumerGroupLagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clientId") {
                    self.clientId = dict["clientId"] as! String
                }
                if dict.keys.contains("egressIp") {
                    self.egressIp = dict["egressIp"] as! String
                }
                if dict.keys.contains("hostname") {
                    self.hostname = dict["hostname"] as! String
                }
                if dict.keys.contains("language") {
                    self.language = dict["language"] as! String
                }
                if dict.keys.contains("messageModel") {
                    self.messageModel = dict["messageModel"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("consumerGroupId") {
                    self.consumerGroupId = dict["consumerGroupId"] as! String
                }
                if dict.keys.contains("filterExpression") {
                    self.filterExpression = dict["filterExpression"] as! String
                }
                if dict.keys.contains("filterExpressionType") {
                    self.filterExpressionType = dict["filterExpressionType"] as! String
                }
                if dict.keys.contains("messageModel") {
                    self.messageModel = dict["messageModel"] as! String
                }
                if dict.keys.contains("subscriptionStatus") {
                    self.subscriptionStatus = dict["subscriptionStatus"] as! String
                }
                if dict.keys.contains("topicName") {
                    self.topicName = dict["topicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("connectionDTO") {
                var model = GetConsumerGroupSubscriptionResponseBody.Data.ConnectionDTO()
                model.fromMap(dict["connectionDTO"] as! [String: Any])
                self.connectionDTO = model
            }
            if dict.keys.contains("subscriptionDTO") {
                var model = GetConsumerGroupSubscriptionResponseBody.Data.SubscriptionDTO()
                model.fromMap(dict["subscriptionDTO"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetConsumerGroupSubscriptionResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetConsumerGroupSubscriptionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConsumerGroupSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientId") {
            self.clientId = dict["clientId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("thread") {
                    self.thread = dict["thread"] as! String
                }
                if dict.keys.contains("tracks") {
                    self.tracks = dict["tracks"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("stacks") {
                var tmp : [GetConsumerStackResponseBody.Data.Stacks] = []
                for v in dict["stacks"] as! [Any] {
                    var model = GetConsumerStackResponseBody.Data.Stacks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetConsumerStackResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConsumerStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("aclType") {
                    self.aclType = dict["aclType"] as! String
                }
                if dict.keys.contains("aclTypes") {
                    self.aclTypes = dict["aclTypes"] as! [String]
                }
                if dict.keys.contains("defaultVpcAuthFree") {
                    self.defaultVpcAuthFree = dict["defaultVpcAuthFree"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("aclType") {
                    self.aclType = dict["aclType"] as! String
                }
                if dict.keys.contains("autoScaling") {
                    self.autoScaling = dict["autoScaling"] as! Bool
                }
                if dict.keys.contains("flowOutBandwidth") {
                    self.flowOutBandwidth = dict["flowOutBandwidth"] as! Int32
                }
                if dict.keys.contains("flowOutType") {
                    self.flowOutType = dict["flowOutType"] as! String
                }
                if dict.keys.contains("internetSpec") {
                    self.internetSpec = dict["internetSpec"] as! String
                }
                if dict.keys.contains("messageRetentionTime") {
                    self.messageRetentionTime = dict["messageRetentionTime"] as! Int32
                }
                if dict.keys.contains("msgProcessSpec") {
                    self.msgProcessSpec = dict["msgProcessSpec"] as! String
                }
                if dict.keys.contains("sendReceiveRatio") {
                    self.sendReceiveRatio = dict["sendReceiveRatio"] as! Double
                }
                if dict.keys.contains("supportAutoScaling") {
                    self.supportAutoScaling = dict["supportAutoScaling"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("freeCount") {
                    self.freeCount = dict["freeCount"] as! Double
                }
                if dict.keys.contains("quotaName") {
                    self.quotaName = dict["quotaName"] as! String
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! Double
                }
                if dict.keys.contains("usedCount") {
                    self.usedCount = dict["usedCount"] as! Double
                }
            }
        }
        public class NetworkInfo : Tea.TeaModel {
            public class Endpoints : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("endpointType") {
                        self.endpointType = dict["endpointType"] as! String
                    }
                    if dict.keys.contains("endpointUrl") {
                        self.endpointUrl = dict["endpointUrl"] as! String
                    }
                    if dict.keys.contains("ipWhitelist") {
                        self.ipWhitelist = dict["ipWhitelist"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("flowOutBandwidth") {
                        self.flowOutBandwidth = dict["flowOutBandwidth"] as! Int32
                    }
                    if dict.keys.contains("flowOutType") {
                        self.flowOutType = dict["flowOutType"] as! String
                    }
                    if dict.keys.contains("internetSpec") {
                        self.internetSpec = dict["internetSpec"] as! String
                    }
                    if dict.keys.contains("ipWhitelist") {
                        self.ipWhitelist = dict["ipWhitelist"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("vSwitchId") {
                            self.vSwitchId = dict["vSwitchId"] as! String
                        }
                        if dict.keys.contains("zoneId") {
                            self.zoneId = dict["zoneId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("securityGroupIds") {
                        self.securityGroupIds = dict["securityGroupIds"] as! String
                    }
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
                    }
                    if dict.keys.contains("vSwitches") {
                        var tmp : [GetInstanceResponseBody.Data.NetworkInfo.VpcInfo.VSwitches] = []
                        for v in dict["vSwitches"] as! [Any] {
                            var model = GetInstanceResponseBody.Data.NetworkInfo.VpcInfo.VSwitches()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.vSwitches = tmp
                    }
                    if dict.keys.contains("vpcId") {
                        self.vpcId = dict["vpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoints") {
                    var tmp : [GetInstanceResponseBody.Data.NetworkInfo.Endpoints] = []
                    for v in dict["endpoints"] as! [Any] {
                        var model = GetInstanceResponseBody.Data.NetworkInfo.Endpoints()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.endpoints = tmp
                }
                if dict.keys.contains("internetInfo") {
                    var model = GetInstanceResponseBody.Data.NetworkInfo.InternetInfo()
                    model.fromMap(dict["internetInfo"] as! [String: Any])
                    self.internetInfo = model
                }
                if dict.keys.contains("vpcInfo") {
                    var model = GetInstanceResponseBody.Data.NetworkInfo.VpcInfo()
                    model.fromMap(dict["vpcInfo"] as! [String: Any])
                    self.vpcInfo = model
                }
            }
        }
        public class ProductInfo : Tea.TeaModel {
            public var autoScaling: Bool?

            public var messageRetentionTime: Int32?

            public var msgProcessSpec: String?

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
                if self.messageRetentionTime != nil {
                    map["messageRetentionTime"] = self.messageRetentionTime!
                }
                if self.msgProcessSpec != nil {
                    map["msgProcessSpec"] = self.msgProcessSpec!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoScaling") {
                    self.autoScaling = dict["autoScaling"] as! Bool
                }
                if dict.keys.contains("messageRetentionTime") {
                    self.messageRetentionTime = dict["messageRetentionTime"] as! Int32
                }
                if dict.keys.contains("msgProcessSpec") {
                    self.msgProcessSpec = dict["msgProcessSpec"] as! String
                }
                if dict.keys.contains("sendReceiveRatio") {
                    self.sendReceiveRatio = dict["sendReceiveRatio"] as! Double
                }
                if dict.keys.contains("storageEncryption") {
                    self.storageEncryption = dict["storageEncryption"] as! Bool
                }
                if dict.keys.contains("storageSecretKey") {
                    self.storageSecretKey = dict["storageSecretKey"] as! String
                }
                if dict.keys.contains("supportAutoScaling") {
                    self.supportAutoScaling = dict["supportAutoScaling"] as! Bool
                }
                if dict.keys.contains("traceOn") {
                    self.traceOn = dict["traceOn"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("maintainTime") {
                    self.maintainTime = dict["maintainTime"] as! String
                }
                if dict.keys.contains("softwareVersion") {
                    self.softwareVersion = dict["softwareVersion"] as! String
                }
                if dict.keys.contains("upgradeMethod") {
                    self.upgradeMethod = dict["upgradeMethod"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountInfo") {
                var model = GetInstanceResponseBody.Data.AccountInfo()
                model.fromMap(dict["accountInfo"] as! [String: Any])
                self.accountInfo = model
            }
            if dict.keys.contains("aclInfo") {
                var model = GetInstanceResponseBody.Data.AclInfo()
                model.fromMap(dict["aclInfo"] as! [String: Any])
                self.aclInfo = model
            }
            if dict.keys.contains("bid") {
                self.bid = dict["bid"] as! String
            }
            if dict.keys.contains("commodityCode") {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("expireTime") {
                self.expireTime = dict["expireTime"] as! String
            }
            if dict.keys.contains("extConfig") {
                var model = GetInstanceResponseBody.Data.ExtConfig()
                model.fromMap(dict["extConfig"] as! [String: Any])
                self.extConfig = model
            }
            if dict.keys.contains("groupCount") {
                self.groupCount = dict["groupCount"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("instanceName") {
                self.instanceName = dict["instanceName"] as! String
            }
            if dict.keys.contains("instanceQuotas") {
                var tmp : [GetInstanceResponseBody.Data.InstanceQuotas] = []
                for v in dict["instanceQuotas"] as! [Any] {
                    var model = GetInstanceResponseBody.Data.InstanceQuotas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceQuotas = tmp
            }
            if dict.keys.contains("networkInfo") {
                var model = GetInstanceResponseBody.Data.NetworkInfo()
                model.fromMap(dict["networkInfo"] as! [String: Any])
                self.networkInfo = model
            }
            if dict.keys.contains("paymentType") {
                self.paymentType = dict["paymentType"] as! String
            }
            if dict.keys.contains("productInfo") {
                var model = GetInstanceResponseBody.Data.ProductInfo()
                model.fromMap(dict["productInfo"] as! [String: Any])
                self.productInfo = model
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("releaseTime") {
                self.releaseTime = dict["releaseTime"] as! String
            }
            if dict.keys.contains("remark") {
                self.remark = dict["remark"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("seriesCode") {
                self.seriesCode = dict["seriesCode"] as! String
            }
            if dict.keys.contains("serviceCode") {
                self.serviceCode = dict["serviceCode"] as! String
            }
            if dict.keys.contains("software") {
                var model = GetInstanceResponseBody.Data.Software()
                model.fromMap(dict["software"] as! [String: Any])
                self.software = model
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("subSeriesCode") {
                self.subSeriesCode = dict["subSeriesCode"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [GetInstanceResponseBody.Data.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = GetInstanceResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("topicCount") {
                self.topicCount = dict["topicCount"] as! Int64
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetInstanceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountStatus") {
                self.accountStatus = dict["accountStatus"] as! String
            }
            if dict.keys.contains("password") {
                self.password = dict["password"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetInstanceAccountResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceName") {
            self.resourceName = dict["resourceName"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aclType") {
                self.aclType = dict["aclType"] as! String
            }
            if dict.keys.contains("actions") {
                self.actions = dict["actions"] as! [String]
            }
            if dict.keys.contains("decision") {
                self.decision = dict["decision"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("ipWhitelists") {
                self.ipWhitelists = dict["ipWhitelists"] as! [String]
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("resourceName") {
                self.resourceName = dict["resourceName"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetInstanceAclResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelists = dict["ipWhitelists"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelistsShrink = dict["ipWhitelists"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("ipWhitelists") {
                self.ipWhitelists = dict["ipWhitelists"] as! [String]
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetInstanceIpWhitelistResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("body") {
                self.body = dict["body"] as! String
            }
            if dict.keys.contains("bodySize") {
                self.bodySize = dict["bodySize"] as! Int32
            }
            if dict.keys.contains("bornHost") {
                self.bornHost = dict["bornHost"] as! String
            }
            if dict.keys.contains("bornTime") {
                self.bornTime = dict["bornTime"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("messageGroup") {
                self.messageGroup = dict["messageGroup"] as! String
            }
            if dict.keys.contains("messageId") {
                self.messageId = dict["messageId"] as! String
            }
            if dict.keys.contains("messageKeys") {
                self.messageKeys = dict["messageKeys"] as! [String]
            }
            if dict.keys.contains("messageTag") {
                self.messageTag = dict["messageTag"] as! String
            }
            if dict.keys.contains("messageType") {
                self.messageType = dict["messageType"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("storeHost") {
                self.storeHost = dict["storeHost"] as! String
            }
            if dict.keys.contains("storeTime") {
                self.storeTime = dict["storeTime"] as! String
            }
            if dict.keys.contains("systemProperties") {
                self.systemProperties = dict["systemProperties"] as! [String: String]
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
            }
            if dict.keys.contains("userProperties") {
                self.userProperties = dict["userProperties"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetMessageDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetMessageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var instanceId: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("maxSendTps") {
                self.maxSendTps = dict["maxSendTps"] as! Int64
            }
            if dict.keys.contains("messageType") {
                self.messageType = dict["messageType"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("remark") {
                self.remark = dict["remark"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetTopicResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("operateTime") {
                        self.operateTime = dict["operateTime"] as! String
                    }
                    if dict.keys.contains("operateType") {
                        self.operateType = dict["operateType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("delayStatus") {
                    self.delayStatus = dict["delayStatus"] as! String
                }
                if dict.keys.contains("operations") {
                    var tmp : [GetTraceResponseBody.Data.BrokerInfo.Operations] = []
                    for v in dict["operations"] as! [Any] {
                        var model = GetTraceResponseBody.Data.BrokerInfo.Operations()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operations = tmp
                }
                if dict.keys.contains("presetDelayTime") {
                    self.presetDelayTime = dict["presetDelayTime"] as! String
                }
                if dict.keys.contains("recallResult") {
                    self.recallResult = dict["recallResult"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("messageId") {
                        self.messageId = dict["messageId"] as! String
                    }
                    if dict.keys.contains("toDlqTime") {
                        self.toDlqTime = dict["toDlqTime"] as! String
                    }
                    if dict.keys.contains("topicName") {
                        self.topicName = dict["topicName"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("deadMessage") {
                            self.deadMessage = dict["deadMessage"] as! Bool
                        }
                        if dict.keys.contains("invisibleTime") {
                            self.invisibleTime = dict["invisibleTime"] as! Int64
                        }
                        if dict.keys.contains("operateTime") {
                            self.operateTime = dict["operateTime"] as! String
                        }
                        if dict.keys.contains("operateType") {
                            self.operateType = dict["operateType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("clientHost") {
                        self.clientHost = dict["clientHost"] as! String
                    }
                    if dict.keys.contains("consumeStatus") {
                        self.consumeStatus = dict["consumeStatus"] as! String
                    }
                    if dict.keys.contains("fifoEnable") {
                        self.fifoEnable = dict["fifoEnable"] as! Bool
                    }
                    if dict.keys.contains("operations") {
                        var tmp : [GetTraceResponseBody.Data.ConsumerInfos.Records.Operations] = []
                        for v in dict["operations"] as! [Any] {
                            var model = GetTraceResponseBody.Data.ConsumerInfos.Records.Operations()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.operations = tmp
                    }
                    if dict.keys.contains("popCk") {
                        self.popCk = dict["popCk"] as! String
                    }
                    if dict.keys.contains("userName") {
                        self.userName = dict["userName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("consumeStatus") {
                    self.consumeStatus = dict["consumeStatus"] as! String
                }
                if dict.keys.contains("consumerGroupId") {
                    self.consumerGroupId = dict["consumerGroupId"] as! String
                }
                if dict.keys.contains("deadLetterInfo") {
                    var model = GetTraceResponseBody.Data.ConsumerInfos.DeadLetterInfo()
                    model.fromMap(dict["deadLetterInfo"] as! [String: Any])
                    self.deadLetterInfo = model
                }
                if dict.keys.contains("deadMessage") {
                    self.deadMessage = dict["deadMessage"] as! Bool
                }
                if dict.keys.contains("records") {
                    var tmp : [GetTraceResponseBody.Data.ConsumerInfos.Records] = []
                    for v in dict["records"] as! [Any] {
                        var model = GetTraceResponseBody.Data.ConsumerInfos.Records()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("body") {
                    self.body = dict["body"] as! String
                }
                if dict.keys.contains("bornHost") {
                    self.bornHost = dict["bornHost"] as! String
                }
                if dict.keys.contains("bornTime") {
                    self.bornTime = dict["bornTime"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("messageGroup") {
                    self.messageGroup = dict["messageGroup"] as! String
                }
                if dict.keys.contains("messageId") {
                    self.messageId = dict["messageId"] as! String
                }
                if dict.keys.contains("messageKeys") {
                    self.messageKeys = dict["messageKeys"] as! [String]
                }
                if dict.keys.contains("messageTag") {
                    self.messageTag = dict["messageTag"] as! String
                }
                if dict.keys.contains("messageType") {
                    self.messageType = dict["messageType"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("storeHost") {
                    self.storeHost = dict["storeHost"] as! String
                }
                if dict.keys.contains("storeTime") {
                    self.storeTime = dict["storeTime"] as! String
                }
                if dict.keys.contains("topicName") {
                    self.topicName = dict["topicName"] as! String
                }
                if dict.keys.contains("transactionId") {
                    self.transactionId = dict["transactionId"] as! String
                }
                if dict.keys.contains("userProperties") {
                    self.userProperties = dict["userProperties"] as! [String: String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("arriveTime") {
                        self.arriveTime = dict["arriveTime"] as! String
                    }
                    if dict.keys.contains("clientHost") {
                        self.clientHost = dict["clientHost"] as! String
                    }
                    if dict.keys.contains("dlqOriginMessageId") {
                        self.dlqOriginMessageId = dict["dlqOriginMessageId"] as! String
                    }
                    if dict.keys.contains("dlqOriginTopic") {
                        self.dlqOriginTopic = dict["dlqOriginTopic"] as! String
                    }
                    if dict.keys.contains("messageSource") {
                        self.messageSource = dict["messageSource"] as! String
                    }
                    if dict.keys.contains("produceDuration") {
                        self.produceDuration = dict["produceDuration"] as! Int64
                    }
                    if dict.keys.contains("produceStatus") {
                        self.produceStatus = dict["produceStatus"] as! String
                    }
                    if dict.keys.contains("produceTime") {
                        self.produceTime = dict["produceTime"] as! String
                    }
                    if dict.keys.contains("recallTime") {
                        self.recallTime = dict["recallTime"] as! String
                    }
                    if dict.keys.contains("userName") {
                        self.userName = dict["userName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("records") {
                    var tmp : [GetTraceResponseBody.Data.ProducerInfo.Records] = []
                    for v in dict["records"] as! [Any] {
                        var model = GetTraceResponseBody.Data.ProducerInfo.Records()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("brokerInfo") {
                var model = GetTraceResponseBody.Data.BrokerInfo()
                model.fromMap(dict["brokerInfo"] as! [String: Any])
                self.brokerInfo = model
            }
            if dict.keys.contains("consumerInfos") {
                var tmp : [GetTraceResponseBody.Data.ConsumerInfos] = []
                for v in dict["consumerInfos"] as! [Any] {
                    var model = GetTraceResponseBody.Data.ConsumerInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.consumerInfos = tmp
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("messageInfo") {
                var model = GetTraceResponseBody.Data.MessageInfo()
                model.fromMap(dict["messageInfo"] as! [String: Any])
                self.messageInfo = model
            }
            if dict.keys.contains("producerInfo") {
                var model = GetTraceResponseBody.Data.ProducerInfo()
                model.fromMap(dict["producerInfo"] as! [String: Any])
                self.producerInfo = model
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetTraceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("zoneId") {
                self.zoneId = dict["zoneId"] as! String
            }
            if dict.keys.contains("zoneName") {
                self.zoneName = dict["zoneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListAvailableZonesResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListAvailableZonesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clientId") {
                    self.clientId = dict["clientId"] as! String
                }
                if dict.keys.contains("egressIp") {
                    self.egressIp = dict["egressIp"] as! String
                }
                if dict.keys.contains("hostname") {
                    self.hostname = dict["hostname"] as! String
                }
                if dict.keys.contains("language") {
                    self.language = dict["language"] as! String
                }
                if dict.keys.contains("messageModel") {
                    self.messageModel = dict["messageModel"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("connections") {
                var tmp : [ListConsumerConnectionsResponseBody.Data.Connections] = []
                for v in dict["connections"] as! [Any] {
                    var model = ListConsumerConnectionsResponseBody.Data.Connections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connections = tmp
            }
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListConsumerConnectionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConsumerConnectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consistency") {
                self.consistency = dict["consistency"] as! Bool
            }
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("filterExpression") {
                self.filterExpression = dict["filterExpression"] as! String
            }
            if dict.keys.contains("filterExpressionType") {
                self.filterExpressionType = dict["filterExpressionType"] as! String
            }
            if dict.keys.contains("messageModel") {
                self.messageModel = dict["messageModel"] as! String
            }
            if dict.keys.contains("subscriptionStatus") {
                self.subscriptionStatus = dict["subscriptionStatus"] as! String
            }
            if dict.keys.contains("topicCreated") {
                self.topicCreated = dict["topicCreated"] as! Bool
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListConsumerGroupSubscriptionsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListConsumerGroupSubscriptionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConsumerGroupSubscriptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

            public var regionId: String?

            public var remark: String?

            public var status: String?

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
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("consumerGroupId") {
                    self.consumerGroupId = dict["consumerGroupId"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("maxReceiveTps") {
                    self.maxReceiveTps = dict["maxReceiveTps"] as! Int64
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListConsumerGroupsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListConsumerGroupsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListConsumerGroupsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConsumerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountStatus") {
            self.accountStatus = dict["accountStatus"] as! String
        }
        if dict.keys.contains("accountType") {
            self.accountType = dict["accountType"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accountStatus") {
                    self.accountStatus = dict["accountStatus"] as! String
                }
                if dict.keys.contains("accountType") {
                    self.accountType = dict["accountType"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListInstanceAccountResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListInstanceAccountResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListInstanceAccountResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("aclType") {
                    self.aclType = dict["aclType"] as! String
                }
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("decision") {
                    self.decision = dict["decision"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("ipWhitelists") {
                    self.ipWhitelists = dict["ipWhitelists"] as! [String]
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("resourceName") {
                    self.resourceName = dict["resourceName"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListInstanceAclResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListInstanceAclResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListInstanceAclResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ipWhitelist") {
            self.ipWhitelist = dict["ipWhitelist"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                self.list = dict["list"] as! [String]
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListInstanceIpWhitelistResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("seriesCodes") {
            self.seriesCodes = dict["seriesCodes"] as! [String]
        }
        if dict.keys.contains("storageSecretKey") {
            self.storageSecretKey = dict["storageSecretKey"] as! String
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("seriesCodes") {
            self.seriesCodesShrink = dict["seriesCodes"] as! String
        }
        if dict.keys.contains("storageSecretKey") {
            self.storageSecretKey = dict["storageSecretKey"] as! String
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class ProductInfo : Tea.TeaModel {
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
                    if self.traceOn != nil {
                        map["traceOn"] = self.traceOn!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("traceOn") {
                        self.traceOn = dict["traceOn"] as! Bool
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("commodityCode") {
                    self.commodityCode = dict["commodityCode"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("expireTime") {
                    self.expireTime = dict["expireTime"] as! String
                }
                if dict.keys.contains("groupCount") {
                    self.groupCount = dict["groupCount"] as! Int64
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("instanceName") {
                    self.instanceName = dict["instanceName"] as! String
                }
                if dict.keys.contains("paymentType") {
                    self.paymentType = dict["paymentType"] as! String
                }
                if dict.keys.contains("productInfo") {
                    var model = ListInstancesResponseBody.Data.List.ProductInfo()
                    model.fromMap(dict["productInfo"] as! [String: Any])
                    self.productInfo = model
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("releaseTime") {
                    self.releaseTime = dict["releaseTime"] as! String
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("resourceGroupId") {
                    self.resourceGroupId = dict["resourceGroupId"] as! String
                }
                if dict.keys.contains("seriesCode") {
                    self.seriesCode = dict["seriesCode"] as! String
                }
                if dict.keys.contains("serviceCode") {
                    self.serviceCode = dict["serviceCode"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subSeriesCode") {
                    self.subSeriesCode = dict["subSeriesCode"] as! String
                }
                if dict.keys.contains("tags") {
                    var tmp : [ListInstancesResponseBody.Data.List.Tags] = []
                    for v in dict["tags"] as! [Any] {
                        var model = ListInstancesResponseBody.Data.List.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("topicCount") {
                    self.topicCount = dict["topicCount"] as! Int64
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! String
                }
                if dict.keys.contains("userId") {
                    self.userId = dict["userId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListInstancesResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListInstancesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListInstancesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMessagesRequest : Tea.TeaModel {
    public var endTime: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("messageId") {
            self.messageId = dict["messageId"] as! String
        }
        if dict.keys.contains("messageKey") {
            self.messageKey = dict["messageKey"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("scrollId") {
            self.scrollId = dict["scrollId"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("body") {
                    self.body = dict["body"] as! String
                }
                if dict.keys.contains("bodySize") {
                    self.bodySize = dict["bodySize"] as! Int32
                }
                if dict.keys.contains("bornHost") {
                    self.bornHost = dict["bornHost"] as! String
                }
                if dict.keys.contains("bornTime") {
                    self.bornTime = dict["bornTime"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("messageGroup") {
                    self.messageGroup = dict["messageGroup"] as! String
                }
                if dict.keys.contains("messageId") {
                    self.messageId = dict["messageId"] as! String
                }
                if dict.keys.contains("messageKeys") {
                    self.messageKeys = dict["messageKeys"] as! [String]
                }
                if dict.keys.contains("messageTag") {
                    self.messageTag = dict["messageTag"] as! String
                }
                if dict.keys.contains("messageType") {
                    self.messageType = dict["messageType"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("storeHost") {
                    self.storeHost = dict["storeHost"] as! String
                }
                if dict.keys.contains("storeTime") {
                    self.storeTime = dict["storeTime"] as! String
                }
                if dict.keys.contains("topicName") {
                    self.topicName = dict["topicName"] as! String
                }
                if dict.keys.contains("userProperties") {
                    self.userProperties = dict["userProperties"] as! [String: String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListMessagesResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListMessagesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("scrollId") {
                self.scrollId = dict["scrollId"] as! String
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListMessagesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListMessagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("metricName") {
                    self.metricName = dict["metricName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListMetricMetaResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListMetricMetaResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListMetricMetaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListMetricMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("tagCode") {
                    self.tagCode = dict["tagCode"] as! String
                }
                if dict.keys.contains("tagValue") {
                    self.tagValue = dict["tagValue"] as! Any
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("regionName") {
                self.regionName = dict["regionName"] as! String
            }
            if dict.keys.contains("supportRocketmqV4") {
                self.supportRocketmqV4 = dict["supportRocketmqV4"] as! Bool
            }
            if dict.keys.contains("supportRocketmqV5") {
                self.supportRocketmqV5 = dict["supportRocketmqV5"] as! Bool
            }
            if dict.keys.contains("tags") {
                var tmp : [ListRegionsResponseBody.Data.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListRegionsResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListRegionsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListRegionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("aliUid") {
                    self.aliUid = dict["aliUid"] as! Int64
                }
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("resourceId") {
                    self.resourceId = dict["resourceId"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
                if dict.keys.contains("scope") {
                    self.scope = dict["scope"] as! String
                }
                if dict.keys.contains("tagKey") {
                    self.tagKey = dict["tagKey"] as! String
                }
                if dict.keys.contains("tagValue") {
                    self.tagValue = dict["tagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("nextToken") {
                self.nextToken = dict["nextToken"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("tagResources") {
                var tmp : [ListTagResourcesResponseBody.Data.TagResources] = []
                for v in dict["tagResources"] as! [Any] {
                    var model = ListTagResourcesResponseBody.Data.TagResources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListTagResourcesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("consistency") {
                self.consistency = dict["consistency"] as! String
            }
            if dict.keys.contains("consumerGroupId") {
                self.consumerGroupId = dict["consumerGroupId"] as! String
            }
            if dict.keys.contains("filterExpression") {
                self.filterExpression = dict["filterExpression"] as! String
            }
            if dict.keys.contains("filterExpressionType") {
                self.filterExpressionType = dict["filterExpressionType"] as! String
            }
            if dict.keys.contains("messageModel") {
                self.messageModel = dict["messageModel"] as! String
            }
            if dict.keys.contains("subscriptionStatus") {
                self.subscriptionStatus = dict["subscriptionStatus"] as! String
            }
            if dict.keys.contains("topicName") {
                self.topicName = dict["topicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListTopicSubscriptionsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListTopicSubscriptionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTopicSubscriptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("messageTypes") {
            self.messageTypes = dict["messageTypes"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filter") {
            self.filter = dict["filter"] as! String
        }
        if dict.keys.contains("messageTypes") {
            self.messageTypesShrink = dict["messageTypes"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListTopicsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var createTime: String?

            public var instanceId: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("maxSendTps") {
                    self.maxSendTps = dict["maxSendTps"] as! Int64
                }
                if dict.keys.contains("messageType") {
                    self.messageType = dict["messageType"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("topicName") {
                    self.topicName = dict["topicName"] as! String
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListTopicsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListTopicsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListTopicsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTopicsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTracesRequest : Tea.TeaModel {
    public var endTime: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("messageId") {
            self.messageId = dict["messageId"] as! String
        }
        if dict.keys.contains("messageKey") {
            self.messageKey = dict["messageKey"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("queryType") {
            self.queryType = dict["queryType"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bornTime") {
                    self.bornTime = dict["bornTime"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("messageId") {
                    self.messageId = dict["messageId"] as! String
                }
                if dict.keys.contains("messageKeys") {
                    self.messageKeys = dict["messageKeys"] as! [String]
                }
                if dict.keys.contains("messageTag") {
                    self.messageTag = dict["messageTag"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("topicName") {
                    self.topicName = dict["topicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListTracesResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListTracesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListTracesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTracesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resetTime") {
            self.resetTime = dict["resetTime"] as! String
        }
        if dict.keys.contains("resetType") {
            self.resetType = dict["resetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetConsumeOffsetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartDisasterRecoveryItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopDisasterRecoveryItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tagKey") {
            self.tagKey = dict["tagKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
        public var deadLetterTargetTopic: String?

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
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deadLetterTargetTopic") {
                self.deadLetterTargetTopic = dict["deadLetterTargetTopic"] as! String
            }
            if dict.keys.contains("maxRetryTimes") {
                self.maxRetryTimes = dict["maxRetryTimes"] as! Int32
            }
            if dict.keys.contains("retryPolicy") {
                self.retryPolicy = dict["retryPolicy"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("consumeRetryPolicy") {
            var model = UpdateConsumerGroupRequest.ConsumeRetryPolicy()
            model.fromMap(dict["consumeRetryPolicy"] as! [String: Any])
            self.consumeRetryPolicy = model
        }
        if dict.keys.contains("deliveryOrderType") {
            self.deliveryOrderType = dict["deliveryOrderType"] as! String
        }
        if dict.keys.contains("maxReceiveTps") {
            self.maxReceiveTps = dict["maxReceiveTps"] as! Int64
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aclTypes") {
                self.aclTypes = dict["aclTypes"] as! [String]
            }
            if dict.keys.contains("defaultVpcAuthFree") {
                self.defaultVpcAuthFree = dict["defaultVpcAuthFree"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ipWhitelist") {
                    self.ipWhitelist = dict["ipWhitelist"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("internetInfo") {
                var model = UpdateInstanceRequest.NetworkInfo.InternetInfo()
                model.fromMap(dict["internetInfo"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoScaling") {
                self.autoScaling = dict["autoScaling"] as! Bool
            }
            if dict.keys.contains("messageRetentionTime") {
                self.messageRetentionTime = dict["messageRetentionTime"] as! Int32
            }
            if dict.keys.contains("sendReceiveRatio") {
                self.sendReceiveRatio = dict["sendReceiveRatio"] as! Double
            }
            if dict.keys.contains("traceOn") {
                self.traceOn = dict["traceOn"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aclInfo") {
            var model = UpdateInstanceRequest.AclInfo()
            model.fromMap(dict["aclInfo"] as! [String: Any])
            self.aclInfo = model
        }
        if dict.keys.contains("instanceName") {
            self.instanceName = dict["instanceName"] as! String
        }
        if dict.keys.contains("networkInfo") {
            var model = UpdateInstanceRequest.NetworkInfo()
            model.fromMap(dict["networkInfo"] as! [String: Any])
            self.networkInfo = model
        }
        if dict.keys.contains("productInfo") {
            var model = UpdateInstanceRequest.ProductInfo()
            model.fromMap(dict["productInfo"] as! [String: Any])
            self.productInfo = model
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountStatus") {
            self.accountStatus = dict["accountStatus"] as! String
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actions") {
            self.actions = dict["actions"] as! [String]
        }
        if dict.keys.contains("decision") {
            self.decision = dict["decision"] as! String
        }
        if dict.keys.contains("ipWhitelists") {
            self.ipWhitelists = dict["ipWhitelists"] as! [String]
        }
        if dict.keys.contains("resourceName") {
            self.resourceName = dict["resourceName"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessDeniedDetail") {
            self.accessDeniedDetail = dict["accessDeniedDetail"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstanceAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTopicRequest : Tea.TeaModel {
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
        if self.maxSendTps != nil {
            map["maxSendTps"] = self.maxSendTps!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxSendTps") {
            self.maxSendTps = dict["maxSendTps"] as! Int64
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientId") {
            self.clientId = dict["clientId"] as! String
        }
        if dict.keys.contains("consumerGroupId") {
            self.consumerGroupId = dict["consumerGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyConsumeMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySendMessageRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("messageKey") {
            self.messageKey = dict["messageKey"] as! String
        }
        if dict.keys.contains("messageTag") {
            self.messageTag = dict["messageTag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dynamicCode") {
            self.dynamicCode = dict["dynamicCode"] as! String
        }
        if dict.keys.contains("dynamicMessage") {
            self.dynamicMessage = dict["dynamicMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifySendMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
