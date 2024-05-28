import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
            public var securityGroupIds: String?

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
                if self.securityGroupIds != nil {
                    map["securityGroupIds"] = self.securityGroupIds!
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
                if dict.keys.contains("securityGroupIds") {
                    self.securityGroupIds = dict["securityGroupIds"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
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

        public var chargeType: String?

        public var intranetSpec: String?

        public var messageRetentionTime: Int32?

        public var msgProcessSpec: String?

        public var sendReceiveRatio: Double?

        public override init() {
            super.init()
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
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.intranetSpec != nil {
                map["intranetSpec"] = self.intranetSpec!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoScaling") {
                self.autoScaling = dict["autoScaling"] as! Bool
            }
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("intranetSpec") {
                self.intranetSpec = dict["intranetSpec"] as! String
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

public class CreateTopicRequest : Tea.TeaModel {
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
        if self.messageType != nil {
            map["messageType"] = self.messageType!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

public class GetTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var instanceId: String?

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

public class ListInstancesRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

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

public class UpdateTopicRequest : Tea.TeaModel {
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
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
