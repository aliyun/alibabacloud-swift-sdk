import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateConsumerGroupRequest : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateConsumerGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class CreateTopicRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

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
        if self.remark != nil {
            map["Remark"] = self.remark!
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
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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

public class DeleteConsumerGroupRequest : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteConsumerGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class DeleteTopicRequest : Tea.TeaModel {
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

public class DeleteTopicResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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

public class GetConsumerListRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
    }
}

public class GetConsumerListResponseBody : Tea.TeaModel {
    public class ConsumerList : Tea.TeaModel {
        public class ConsumerVO : Tea.TeaModel {
            public var consumerId: String?

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
                if self.consumerId != nil {
                    map["ConsumerId"] = self.consumerId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsumerId") {
                    self.consumerId = dict["ConsumerId"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var consumerVO: [GetConsumerListResponseBody.ConsumerList.ConsumerVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerVO != nil {
                var tmp : [Any] = []
                for k in self.consumerVO! {
                    tmp.append(k.toMap())
                }
                map["ConsumerVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsumerVO") {
                var tmp : [GetConsumerListResponseBody.ConsumerList.ConsumerVO] = []
                for v in dict["ConsumerVO"] as! [Any] {
                    var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.consumerVO = tmp
            }
        }
    }
    public var code: Int32?

    public var consumerList: GetConsumerListResponseBody.ConsumerList?

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
        try self.consumerList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.consumerList != nil {
            map["ConsumerList"] = self.consumerList?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("ConsumerList") {
            var model = GetConsumerListResponseBody.ConsumerList()
            model.fromMap(dict["ConsumerList"] as! [String: Any])
            self.consumerList = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetConsumerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerProgressRequest : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetConsumerProgressResponseBody : Tea.TeaModel {
    public class ConsumerProgress : Tea.TeaModel {
        public class TopicList : Tea.TeaModel {
            public class TopicList : Tea.TeaModel {
                public class OffsetList : Tea.TeaModel {
                    public class OffsetList : Tea.TeaModel {
                        public var brokerOffset: Int64?

                        public var consumerOffset: Int64?

                        public var lastTimestamp: Int64?

                        public var partition: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.brokerOffset != nil {
                                map["BrokerOffset"] = self.brokerOffset!
                            }
                            if self.consumerOffset != nil {
                                map["ConsumerOffset"] = self.consumerOffset!
                            }
                            if self.lastTimestamp != nil {
                                map["LastTimestamp"] = self.lastTimestamp!
                            }
                            if self.partition != nil {
                                map["Partition"] = self.partition!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BrokerOffset") {
                                self.brokerOffset = dict["BrokerOffset"] as! Int64
                            }
                            if dict.keys.contains("ConsumerOffset") {
                                self.consumerOffset = dict["ConsumerOffset"] as! Int64
                            }
                            if dict.keys.contains("LastTimestamp") {
                                self.lastTimestamp = dict["LastTimestamp"] as! Int64
                            }
                            if dict.keys.contains("Partition") {
                                self.partition = dict["Partition"] as! Int32
                            }
                        }
                    }
                    public var offsetList: [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.offsetList != nil {
                            var tmp : [Any] = []
                            for k in self.offsetList! {
                                tmp.append(k.toMap())
                            }
                            map["OffsetList"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("OffsetList") {
                            var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList] = []
                            for v in dict["OffsetList"] as! [Any] {
                                var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.offsetList = tmp
                        }
                    }
                }
                public var lastTimestamp: Int64?

                public var offsetList: GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList?

                public var topic: String?

                public var totalDiff: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.offsetList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lastTimestamp != nil {
                        map["LastTimestamp"] = self.lastTimestamp!
                    }
                    if self.offsetList != nil {
                        map["OffsetList"] = self.offsetList?.toMap()
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    if self.totalDiff != nil {
                        map["TotalDiff"] = self.totalDiff!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LastTimestamp") {
                        self.lastTimestamp = dict["LastTimestamp"] as! Int64
                    }
                    if dict.keys.contains("OffsetList") {
                        var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList()
                        model.fromMap(dict["OffsetList"] as! [String: Any])
                        self.offsetList = model
                    }
                    if dict.keys.contains("Topic") {
                        self.topic = dict["Topic"] as! String
                    }
                    if dict.keys.contains("TotalDiff") {
                        self.totalDiff = dict["TotalDiff"] as! Int64
                    }
                }
            }
            public var topicList: [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topicList != nil {
                    var tmp : [Any] = []
                    for k in self.topicList! {
                        tmp.append(k.toMap())
                    }
                    map["TopicList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TopicList") {
                    var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList] = []
                    for v in dict["TopicList"] as! [Any] {
                        var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.topicList = tmp
                }
            }
        }
        public var lastTimestamp: Int64?

        public var topicList: GetConsumerProgressResponseBody.ConsumerProgress.TopicList?

        public var totalDiff: Int64?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.topicList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastTimestamp != nil {
                map["LastTimestamp"] = self.lastTimestamp!
            }
            if self.topicList != nil {
                map["TopicList"] = self.topicList?.toMap()
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastTimestamp") {
                self.lastTimestamp = dict["LastTimestamp"] as! Int64
            }
            if dict.keys.contains("TopicList") {
                var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList()
                model.fromMap(dict["TopicList"] as! [String: Any])
                self.topicList = model
            }
            if dict.keys.contains("TotalDiff") {
                self.totalDiff = dict["TotalDiff"] as! Int64
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
        }
    }
    public var code: Int32?

    public var consumerProgress: GetConsumerProgressResponseBody.ConsumerProgress?

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
        try self.consumerProgress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.consumerProgress != nil {
            map["ConsumerProgress"] = self.consumerProgress?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("ConsumerProgress") {
            var model = GetConsumerProgressResponseBody.ConsumerProgress()
            model.fromMap(dict["ConsumerProgress"] as! [String: Any])
            self.consumerProgress = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetConsumerProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumerProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceListRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetInstanceListResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class InstanceVO : Tea.TeaModel {
            public class UpgradeServiceDetailInfo : Tea.TeaModel {
                public class UpgradeServiceDetailInfoVO : Tea.TeaModel {
                    public var current2OpenSourceVersion: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.current2OpenSourceVersion != nil {
                            map["Current2OpenSourceVersion"] = self.current2OpenSourceVersion!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Current2OpenSourceVersion") {
                            self.current2OpenSourceVersion = dict["Current2OpenSourceVersion"] as! String
                        }
                    }
                }
                public var upgradeServiceDetailInfoVO: [GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo.UpgradeServiceDetailInfoVO]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.upgradeServiceDetailInfoVO != nil {
                        var tmp : [Any] = []
                        for k in self.upgradeServiceDetailInfoVO! {
                            tmp.append(k.toMap())
                        }
                        map["UpgradeServiceDetailInfoVO"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("UpgradeServiceDetailInfoVO") {
                        var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo.UpgradeServiceDetailInfoVO] = []
                        for v in dict["UpgradeServiceDetailInfoVO"] as! [Any] {
                            var model = GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo.UpgradeServiceDetailInfoVO()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.upgradeServiceDetailInfoVO = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var deployType: Int32?

            public var endPoint: String?

            public var expiredTime: Int64?

            public var instanceId: String?

            public var name: String?

            public var regionId: String?

            public var serviceStatus: Int32?

            public var sslEndPoint: String?

            public var upgradeServiceDetailInfo: GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo?

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
                try self.upgradeServiceDetailInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.endPoint != nil {
                    map["EndPoint"] = self.endPoint!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceStatus != nil {
                    map["ServiceStatus"] = self.serviceStatus!
                }
                if self.sslEndPoint != nil {
                    map["SslEndPoint"] = self.sslEndPoint!
                }
                if self.upgradeServiceDetailInfo != nil {
                    map["UpgradeServiceDetailInfo"] = self.upgradeServiceDetailInfo?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DeployType") {
                    self.deployType = dict["DeployType"] as! Int32
                }
                if dict.keys.contains("EndPoint") {
                    self.endPoint = dict["EndPoint"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceStatus") {
                    self.serviceStatus = dict["ServiceStatus"] as! Int32
                }
                if dict.keys.contains("SslEndPoint") {
                    self.sslEndPoint = dict["SslEndPoint"] as! String
                }
                if dict.keys.contains("UpgradeServiceDetailInfo") {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo()
                    model.fromMap(dict["UpgradeServiceDetailInfo"] as! [String: Any])
                    self.upgradeServiceDetailInfo = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var instanceVO: [GetInstanceListResponseBody.InstanceList.InstanceVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceVO != nil {
                var tmp : [Any] = []
                for k in self.instanceVO! {
                    tmp.append(k.toMap())
                }
                map["InstanceVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceVO") {
                var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO] = []
                for v in dict["InstanceVO"] as! [Any] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceVO = tmp
            }
        }
    }
    public var code: Int32?

    public var instanceList: GetInstanceListResponseBody.InstanceList?

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
        try self.instanceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("InstanceList") {
            var model = GetInstanceListResponseBody.InstanceList()
            model.fromMap(dict["InstanceList"] as! [String: Any])
            self.instanceList = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var instanceId: String?

    public var pageSize: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetTopicListResponseBody : Tea.TeaModel {
    public class TopicList : Tea.TeaModel {
        public class TopicVO : Tea.TeaModel {
            public var createTime: Int64?

            public var instanceId: String?

            public var regionId: String?

            public var remark: String?

            public var status: Int32?

            public var statusName: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusName != nil {
                    map["StatusName"] = self.statusName!
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("StatusName") {
                    self.statusName = dict["StatusName"] as! String
                }
                if dict.keys.contains("Topic") {
                    self.topic = dict["Topic"] as! String
                }
            }
        }
        public var topicVO: [GetTopicListResponseBody.TopicList.TopicVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topicVO != nil {
                var tmp : [Any] = []
                for k in self.topicVO! {
                    tmp.append(k.toMap())
                }
                map["TopicVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TopicVO") {
                var tmp : [GetTopicListResponseBody.TopicList.TopicVO] = []
                for v in dict["TopicVO"] as! [Any] {
                    var model = GetTopicListResponseBody.TopicList.TopicVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.topicVO = tmp
            }
        }
    }
    public var code: Int32?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var topicList: GetTopicListResponseBody.TopicList?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topicList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicList != nil {
            map["TopicList"] = self.topicList?.toMap()
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TopicList") {
            var model = GetTopicListResponseBody.TopicList()
            model.fromMap(dict["TopicList"] as! [String: Any])
            self.topicList = model
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetTopicListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTopicListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicStatusRequest : Tea.TeaModel {
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

public class GetTopicStatusResponseBody : Tea.TeaModel {
    public class TopicStatus : Tea.TeaModel {
        public class OffsetTable : Tea.TeaModel {
            public class OffsetTable : Tea.TeaModel {
                public var lastUpdateTimestamp: Int64?

                public var maxOffset: Int64?

                public var minOffset: Int64?

                public var partition: Int32?

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
                    if self.lastUpdateTimestamp != nil {
                        map["LastUpdateTimestamp"] = self.lastUpdateTimestamp!
                    }
                    if self.maxOffset != nil {
                        map["MaxOffset"] = self.maxOffset!
                    }
                    if self.minOffset != nil {
                        map["MinOffset"] = self.minOffset!
                    }
                    if self.partition != nil {
                        map["Partition"] = self.partition!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LastUpdateTimestamp") {
                        self.lastUpdateTimestamp = dict["LastUpdateTimestamp"] as! Int64
                    }
                    if dict.keys.contains("MaxOffset") {
                        self.maxOffset = dict["MaxOffset"] as! Int64
                    }
                    if dict.keys.contains("MinOffset") {
                        self.minOffset = dict["MinOffset"] as! Int64
                    }
                    if dict.keys.contains("Partition") {
                        self.partition = dict["Partition"] as! Int32
                    }
                    if dict.keys.contains("Topic") {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var offsetTable: [GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.offsetTable != nil {
                    var tmp : [Any] = []
                    for k in self.offsetTable! {
                        tmp.append(k.toMap())
                    }
                    map["OffsetTable"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OffsetTable") {
                    var tmp : [GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable] = []
                    for v in dict["OffsetTable"] as! [Any] {
                        var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.offsetTable = tmp
                }
            }
        }
        public var lastTimeStamp: Int64?

        public var offsetTable: GetTopicStatusResponseBody.TopicStatus.OffsetTable?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.offsetTable?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastTimeStamp != nil {
                map["LastTimeStamp"] = self.lastTimeStamp!
            }
            if self.offsetTable != nil {
                map["OffsetTable"] = self.offsetTable?.toMap()
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastTimeStamp") {
                self.lastTimeStamp = dict["LastTimeStamp"] as! Int64
            }
            if dict.keys.contains("OffsetTable") {
                var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable()
                model.fromMap(dict["OffsetTable"] as! [String: Any])
                self.offsetTable = model
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var topicStatus: GetTopicStatusResponseBody.TopicStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topicStatus?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicStatus != nil {
            map["TopicStatus"] = self.topicStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TopicStatus") {
            var model = GetTopicStatusResponseBody.TopicStatus()
            model.fromMap(dict["TopicStatus"] as! [String: Any])
            self.topicStatus = model
        }
    }
}

public class GetTopicStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTopicStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
