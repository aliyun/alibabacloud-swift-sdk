import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
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
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
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
                if self.maxRetryTimes != nil {
                    map["maxRetryTimes"] = self.maxRetryTimes!
                }
                if self.retryPolicy != nil {
                    map["retryPolicy"] = self.retryPolicy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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

                public var ipWhitelist: String?

                public override init() {
                    super.init()
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
                        self.ipWhitelist = dict["ipWhitelist"] as! String
                    }
                }
            }
            public class VpcInfo : Tea.TeaModel {
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
                    if self.vSwitchId != nil {
                        map["vSwitchId"] = self.vSwitchId!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("vSwitchId") {
                        self.vSwitchId = dict["vSwitchId"] as! String
                    }
                    if dict.keys.contains("vpcId") {
                        self.vpcId = dict["vpcId"] as! String
                    }
                }
            }
            public var endpoints: [GetInstanceResponseBody.Data.NetworkInfo.Endpoints]?

            public var vpcInfo: GetInstanceResponseBody.Data.NetworkInfo.VpcInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
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
                if self.vpcInfo != nil {
                    map["vpcInfo"] = self.vpcInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoints") {
                    self.endpoints = dict["endpoints"] as! [GetInstanceResponseBody.Data.NetworkInfo.Endpoints]
                }
                if dict.keys.contains("vpcInfo") {
                    var model = GetInstanceResponseBody.Data.NetworkInfo.VpcInfo()
                    model.fromMap(dict["vpcInfo"] as! [String: Any])
                    self.vpcInfo = model
                }
            }
        }
        public var accountInfo: GetInstanceResponseBody.Data.AccountInfo?

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

        public var regionId: String?

        public var releaseTime: String?

        public var remark: String?

        public var seriesCode: String?

        public var serviceCode: String?

        public var startTime: String?

        public var status: String?

        public var subSeriesCode: String?

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
            try self.extConfig?.validate()
            try self.networkInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountInfo != nil {
                map["accountInfo"] = self.accountInfo?.toMap()
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
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.releaseTime != nil {
                map["releaseTime"] = self.releaseTime!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
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
                self.instanceQuotas = dict["instanceQuotas"] as! [GetInstanceResponseBody.Data.InstanceQuotas]
            }
            if dict.keys.contains("networkInfo") {
                var model = GetInstanceResponseBody.Data.NetworkInfo()
                model.fromMap(dict["networkInfo"] as! [String: Any])
                self.networkInfo = model
            }
            if dict.keys.contains("paymentType") {
                self.paymentType = dict["paymentType"] as! String
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
                self.list = dict["list"] as! [ListConsumerGroupsResponseBody.Data.List]
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

    public override init() {
        super.init()
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

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var commodityCode: String?

            public var createTime: String?

            public var expireTime: String?

            public var groupCount: Int64?

            public var instanceId: String?

            public var instanceName: String?

            public var paymentType: String?

            public var regionId: String?

            public var releaseTime: String?

            public var remark: String?

            public var seriesCode: String?

            public var serviceCode: String?

            public var startTime: String?

            public var status: String?

            public var subSeriesCode: String?

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
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.releaseTime != nil {
                    map["releaseTime"] = self.releaseTime!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
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
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("releaseTime") {
                    self.releaseTime = dict["releaseTime"] as! String
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
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
                self.list = dict["list"] as! [ListInstancesResponseBody.Data.List]
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

public class ListTopicsRequest : Tea.TeaModel {
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
                self.list = dict["list"] as! [ListTopicsResponseBody.Data.List]
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

public class UpdateConsumerGroupRequest : Tea.TeaModel {
    public class ConsumeRetryPolicy : Tea.TeaModel {
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
            if self.maxRetryTimes != nil {
                map["maxRetryTimes"] = self.maxRetryTimes!
            }
            if self.retryPolicy != nil {
                map["retryPolicy"] = self.retryPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
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
    public class ExtConfig : Tea.TeaModel {
        public var autoScaling: Bool?

        public var messageRetentionTime: Int32?

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
            if self.messageRetentionTime != nil {
                map["messageRetentionTime"] = self.messageRetentionTime!
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
            if dict.keys.contains("messageRetentionTime") {
                self.messageRetentionTime = dict["messageRetentionTime"] as! Int32
            }
            if dict.keys.contains("sendReceiveRatio") {
                self.sendReceiveRatio = dict["sendReceiveRatio"] as! Double
            }
        }
    }
    public class NetworkInfo : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var endpointType: String?

            public var ipWhitelist: String?

            public override init() {
                super.init()
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
                if self.ipWhitelist != nil {
                    map["ipWhitelist"] = self.ipWhitelist!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpointType") {
                    self.endpointType = dict["endpointType"] as! String
                }
                if dict.keys.contains("ipWhitelist") {
                    self.ipWhitelist = dict["ipWhitelist"] as! String
                }
            }
        }
        public var endpoints: [UpdateInstanceRequest.NetworkInfo.Endpoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoints") {
                self.endpoints = dict["endpoints"] as! [UpdateInstanceRequest.NetworkInfo.Endpoints]
            }
        }
    }
    public var extConfig: UpdateInstanceRequest.ExtConfig?

    public var instanceName: String?

    public var networkInfo: UpdateInstanceRequest.NetworkInfo?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extConfig?.validate()
        try self.networkInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extConfig != nil {
            map["extConfig"] = self.extConfig?.toMap()
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.networkInfo != nil {
            map["networkInfo"] = self.networkInfo?.toMap()
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("extConfig") {
            var model = UpdateInstanceRequest.ExtConfig()
            model.fromMap(dict["extConfig"] as! [String: Any])
            self.extConfig = model
        }
        if dict.keys.contains("instanceName") {
            self.instanceName = dict["instanceName"] as! String
        }
        if dict.keys.contains("networkInfo") {
            var model = UpdateInstanceRequest.NetworkInfo()
            model.fromMap(dict["networkInfo"] as! [String: Any])
            self.networkInfo = model
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
