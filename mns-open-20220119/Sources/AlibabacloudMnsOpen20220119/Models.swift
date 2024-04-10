import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateQueueRequest : Tea.TeaModel {
    public var delaySeconds: Int64?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

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
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") && dict["DelaySeconds"] != nil {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("EnableLogging") && dict["EnableLogging"] != nil {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") && dict["MaximumMessageSize"] != nil {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") && dict["PollingWaitSeconds"] != nil {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VisibilityTimeout") && dict["VisibilityTimeout"] != nil {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableLogging") && dict["EnableLogging"] != nil {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaxMessageSize") && dict["MaxMessageSize"] != nil {
            self.maxMessageSize = dict["MaxMessageSize"] as! Int64
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQueueAttributesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class GetQueueAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeMessages: Int64?

        public var createTime: Int64?

        public var delayMessages: Int64?

        public var delaySeconds: Int64?

        public var inactiveMessages: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maximumMessageSize: Int64?

        public var messageRetentionPeriod: Int64?

        public var pollingWaitSeconds: Int64?

        public var queueName: String?

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
            if self.visibilityTimeout != nil {
                map["VisibilityTimeout"] = self.visibilityTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveMessages") && dict["ActiveMessages"] != nil {
                self.activeMessages = dict["ActiveMessages"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DelayMessages") && dict["DelayMessages"] != nil {
                self.delayMessages = dict["DelayMessages"] as! Int64
            }
            if dict.keys.contains("DelaySeconds") && dict["DelaySeconds"] != nil {
                self.delaySeconds = dict["DelaySeconds"] as! Int64
            }
            if dict.keys.contains("InactiveMessages") && dict["InactiveMessages"] != nil {
                self.inactiveMessages = dict["InactiveMessages"] as! Int64
            }
            if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("LoggingEnabled") && dict["LoggingEnabled"] != nil {
                self.loggingEnabled = dict["LoggingEnabled"] as! Bool
            }
            if dict.keys.contains("MaximumMessageSize") && dict["MaximumMessageSize"] != nil {
                self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
            }
            if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
                self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("PollingWaitSeconds") && dict["PollingWaitSeconds"] != nil {
                self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
            }
            if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("VisibilityTimeout") && dict["VisibilityTimeout"] != nil {
                self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetQueueAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetQueueAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class GetSubscriptionAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("FilterTag") && dict["FilterTag"] != nil {
                self.filterTag = dict["FilterTag"] as! String
            }
            if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("NotifyContentFormat") && dict["NotifyContentFormat"] != nil {
                self.notifyContentFormat = dict["NotifyContentFormat"] as! String
            }
            if dict.keys.contains("NotifyStrategy") && dict["NotifyStrategy"] != nil {
                self.notifyStrategy = dict["NotifyStrategy"] as! String
            }
            if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
                self.subscriptionName = dict["SubscriptionName"] as! String
            }
            if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
                self.topicName = dict["TopicName"] as! String
            }
            if dict.keys.contains("TopicOwner") && dict["TopicOwner"] != nil {
                self.topicOwner = dict["TopicOwner"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSubscriptionAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSubscriptionAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicAttributesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class GetTopicAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var lastModifyTime: Int64?

        public var loggingEnabled: Bool?

        public var maxMessageSize: Int64?

        public var messageCount: Int64?

        public var messageRetentionPeriod: Int64?

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
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("LoggingEnabled") && dict["LoggingEnabled"] != nil {
                self.loggingEnabled = dict["LoggingEnabled"] as! Bool
            }
            if dict.keys.contains("MaxMessageSize") && dict["MaxMessageSize"] != nil {
                self.maxMessageSize = dict["MaxMessageSize"] as! Int64
            }
            if dict.keys.contains("MessageCount") && dict["MessageCount"] != nil {
                self.messageCount = dict["MessageCount"] as! Int64
            }
            if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
                self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
                self.topicName = dict["TopicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTopicAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTopicAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueueRequest : Tea.TeaModel {
    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class ListQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var activeMessages: Int64?

            public var createTime: Int64?

            public var delayMessages: Int64?

            public var delaySeconds: Int64?

            public var inactiveMessages: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maximumMessageSize: Int64?

            public var messageRetentionPeriod: Int64?

            public var pollingWaitSeconds: Int64?

            public var queueName: String?

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
                if self.visibilityTimeout != nil {
                    map["VisibilityTimeout"] = self.visibilityTimeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveMessages") && dict["ActiveMessages"] != nil {
                    self.activeMessages = dict["ActiveMessages"] as! Int64
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DelayMessages") && dict["DelayMessages"] != nil {
                    self.delayMessages = dict["DelayMessages"] as! Int64
                }
                if dict.keys.contains("DelaySeconds") && dict["DelaySeconds"] != nil {
                    self.delaySeconds = dict["DelaySeconds"] as! Int64
                }
                if dict.keys.contains("InactiveMessages") && dict["InactiveMessages"] != nil {
                    self.inactiveMessages = dict["InactiveMessages"] as! Int64
                }
                if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("LoggingEnabled") && dict["LoggingEnabled"] != nil {
                    self.loggingEnabled = dict["LoggingEnabled"] as! Bool
                }
                if dict.keys.contains("MaximumMessageSize") && dict["MaximumMessageSize"] != nil {
                    self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
                }
                if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
                    self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
                }
                if dict.keys.contains("PollingWaitSeconds") && dict["PollingWaitSeconds"] != nil {
                    self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
                }
                if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
                    self.queueName = dict["QueueName"] as! String
                }
                if dict.keys.contains("VisibilityTimeout") && dict["VisibilityTimeout"] != nil {
                    self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListQueueResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListQueueResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Pages") && dict["Pages"] != nil {
                self.pages = dict["Pages"] as! Int64
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListQueueResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSubscriptionByTopicRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class ListSubscriptionByTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var createTime: Int64?

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
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("FilterTag") && dict["FilterTag"] != nil {
                    self.filterTag = dict["FilterTag"] as! String
                }
                if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("NotifyContentFormat") && dict["NotifyContentFormat"] != nil {
                    self.notifyContentFormat = dict["NotifyContentFormat"] as! String
                }
                if dict.keys.contains("NotifyStrategy") && dict["NotifyStrategy"] != nil {
                    self.notifyStrategy = dict["NotifyStrategy"] as! String
                }
                if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
                    self.subscriptionName = dict["SubscriptionName"] as! String
                }
                if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
                    self.topicName = dict["TopicName"] as! String
                }
                if dict.keys.contains("TopicOwner") && dict["TopicOwner"] != nil {
                    self.topicOwner = dict["TopicOwner"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListSubscriptionByTopicResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListSubscriptionByTopicResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Pages") && dict["Pages"] != nil {
                self.pages = dict["Pages"] as! Int64
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListSubscriptionByTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSubscriptionByTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTopicRequest : Tea.TeaModel {
    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
        }
    }
}

public class ListTopicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var createTime: Int64?

            public var lastModifyTime: Int64?

            public var loggingEnabled: Bool?

            public var maxMessageSize: Int64?

            public var messageCount: Int64?

            public var messageRetentionPeriod: Int64?

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
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                    self.lastModifyTime = dict["LastModifyTime"] as! Int64
                }
                if dict.keys.contains("LoggingEnabled") && dict["LoggingEnabled"] != nil {
                    self.loggingEnabled = dict["LoggingEnabled"] as! Bool
                }
                if dict.keys.contains("MaxMessageSize") && dict["MaxMessageSize"] != nil {
                    self.maxMessageSize = dict["MaxMessageSize"] as! Int64
                }
                if dict.keys.contains("MessageCount") && dict["MessageCount"] != nil {
                    self.messageCount = dict["MessageCount"] as! Int64
                }
                if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
                    self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
                }
                if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
                    self.topicName = dict["TopicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListTopicResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListTopicResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListTopicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetQueueAttributesRequest : Tea.TeaModel {
    public var delaySeconds: Int64?

    public var enableLogging: Bool?

    public var maximumMessageSize: Int64?

    public var messageRetentionPeriod: Int64?

    public var pollingWaitSeconds: Int64?

    public var queueName: String?

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
        if self.visibilityTimeout != nil {
            map["VisibilityTimeout"] = self.visibilityTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelaySeconds") && dict["DelaySeconds"] != nil {
            self.delaySeconds = dict["DelaySeconds"] as! Int64
        }
        if dict.keys.contains("EnableLogging") && dict["EnableLogging"] != nil {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaximumMessageSize") && dict["MaximumMessageSize"] != nil {
            self.maximumMessageSize = dict["MaximumMessageSize"] as! Int64
        }
        if dict.keys.contains("MessageRetentionPeriod") && dict["MessageRetentionPeriod"] != nil {
            self.messageRetentionPeriod = dict["MessageRetentionPeriod"] as! Int64
        }
        if dict.keys.contains("PollingWaitSeconds") && dict["PollingWaitSeconds"] != nil {
            self.pollingWaitSeconds = dict["PollingWaitSeconds"] as! Int64
        }
        if dict.keys.contains("QueueName") && dict["QueueName"] != nil {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VisibilityTimeout") && dict["VisibilityTimeout"] != nil {
            self.visibilityTimeout = dict["VisibilityTimeout"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SetQueueAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetQueueAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSubscriptionAttributesRequest : Tea.TeaModel {
    public var notifyStrategy: String?

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
        if self.notifyStrategy != nil {
            map["NotifyStrategy"] = self.notifyStrategy!
        }
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotifyStrategy") && dict["NotifyStrategy"] != nil {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SetSubscriptionAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetSubscriptionAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableLogging") && dict["EnableLogging"] != nil {
            self.enableLogging = dict["EnableLogging"] as! Bool
        }
        if dict.keys.contains("MaxMessageSize") && dict["MaxMessageSize"] != nil {
            self.maxMessageSize = dict["MaxMessageSize"] as! Int64
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SetTopicAttributesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetTopicAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubscribeRequest : Tea.TeaModel {
    public var endpoint: String?

    public var messageTag: String?

    public var notifyContentFormat: String?

    public var notifyStrategy: String?

    public var pushType: String?

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
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
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
        if self.subscriptionName != nil {
            map["SubscriptionName"] = self.subscriptionName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("MessageTag") && dict["MessageTag"] != nil {
            self.messageTag = dict["MessageTag"] as! String
        }
        if dict.keys.contains("NotifyContentFormat") && dict["NotifyContentFormat"] != nil {
            self.notifyContentFormat = dict["NotifyContentFormat"] as! String
        }
        if dict.keys.contains("NotifyStrategy") && dict["NotifyStrategy"] != nil {
            self.notifyStrategy = dict["NotifyStrategy"] as! String
        }
        if dict.keys.contains("PushType") && dict["PushType"] != nil {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscriptionName") && dict["SubscriptionName"] != nil {
            self.subscriptionName = dict["SubscriptionName"] as! String
        }
        if dict.keys.contains("TopicName") && dict["TopicName"] != nil {
            self.topicName = dict["TopicName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UnsubscribeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UnsubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
